#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["ProductsApi/ProductsApi.csproj", "ProductsApi/"]
COPY ["ProductsApi.Business/ProductsApi.Business.csproj", "ProductsApi.Business/"]
COPY ["ProductsApi.Common/ProductsApi.Common.csproj", "ProductsApi.Common/"]
COPY ["ProductsApi.Constants/ProductsApi.Constants.csproj", "ProductsApi.Constants/"]
COPY ["ProductsApi.Data/ProductsApi.Data.csproj", "ProductsApi.Data/"]
COPY ["ProductsApi.Framework/ProductsApi.Framework.csproj", "ProductsApi.Framework/"]
RUN dotnet restore "ProductsApi/ProductsApi.csproj"
COPY . .
WORKDIR "/src/ProductsApi"
RUN dotnet build "ProductsApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ProductsApi.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ProductsApi.dll"]