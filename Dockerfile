# ================================
# Stage 1: Build
# ================================
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy csproj and restore dependencies
COPY flipso-app.csproj ./
RUN dotnet restore

# Copy remaining source code
COPY . .
RUN dotnet publish -c Release -o out

# ================================
# Stage 2: Runtime
# ================================
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# Copy build output
COPY --from=build /app/out .

# ASP.NET Core listens on this port
EXPOSE 8080

# Start application
ENTRYPOINT ["dotnet", "flipso-app.dll"]
