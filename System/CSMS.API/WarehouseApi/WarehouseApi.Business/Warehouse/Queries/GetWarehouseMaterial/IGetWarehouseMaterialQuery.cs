﻿using System.Collections.Generic;
using System.Threading.Tasks;
using WarehouseApi.Business.Warehouse.ViewModels;

namespace WarehouseApi.Business.Warehouse.Queries.GetWarehouseMaterial
{
    public interface IGetWarehouseMaterialQuery
    {
        Task<List<WarehouseMaterialViewModel>> ExecuteAsync();
    }
}