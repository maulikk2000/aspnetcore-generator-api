FROM microsoft/aspnetcore-build:2 AS build-env
WORKDIR /generator

 COPY api/api.csproj ./api/
 RUN dotnet restore api/api.csproj
 COPY tests/tests.csproj ./tests/
 RUN dotnet restore tests/tests.csproj
