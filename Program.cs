using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.Hosting;

var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

// Root endpoint
app.MapGet("/", () => "Flipso App is Live 🚀");

// Health check endpoint (IMPORTANT for production)
app.MapGet("/health", () => Results.Ok("Healthy"));

app.Run();
