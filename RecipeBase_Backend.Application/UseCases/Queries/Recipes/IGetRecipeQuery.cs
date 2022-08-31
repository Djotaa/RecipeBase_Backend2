﻿using RecipeBase_Backend.Application.UseCases.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RecipeBase_Backend.Application.UseCases.Queries.Recipes
{
    public interface IGetRecipeQuery : IQuery<int, RecipeDto>
    {
    }
}
