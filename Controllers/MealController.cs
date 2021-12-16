using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MealPlanner.Models;
using System.Data;

namespace MealPlanner.Controllers
{
    [ApiController]
    [Route("[controller]/[action]/{id?}")]
    public class MealController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            List<RecipeModel> recipes = RecipeModel.GetAll();
            return JSON(recipes);

        }
        [HttpGet]
        public IActionResult Show(int id)
        {
            RecipeModel recipe = RecipeModel.GetById(id);
            return recipe;
        }

        // [HttpPost]
        // public ProductModel Add([FromBody] ProductModel product)
        // {
        //     Console.WriteLine(product.Name);
        //     // if (ModelState.IsValid)
        //     // {
        //     //     product.Save();

        //     //     return RedirectToAction("Index");
        //     // }

        //     return product;
        // }

        // [HttpGet]
        // public IActionResult Index()
        // {
        //     List<ProductModel> products = ProductModel.GetAll();
        //     return View(products);
        // }
        // [HttpGet]
        // public IActionResult Show(int id)
        // {
        //     ProductModel product = ProductModel.GetById(id);

        //     return View(product);
        // }
        // [HttpGet]
        // public IActionResult Delete(int id)
        // {
        //     ProductModel product = ProductModel.GetById(id);

        //     product.Delete();

        //     return this.RedirectToAction("Index");
        // }
        // [HttpGet]
        // public IActionResult New()
        // {
        //     return View(new ProductModel());
        // }
        // [HttpPost]
        // public IActionResult Add(ProductModel product)
        // {
        //     if (ModelState.IsValid)
        //     {
        //         product.Save();

        //         return RedirectToAction("Index");
        //     }

        //     return View("New", product);
        // }
        // [HttpGet]
        // public IActionResult Edit(int id)
        // {
        //     ProductModel product = ProductModel.GetById(id);

        //     return View(product);
        // }

        // [HttpPost]
        // public IActionResult Edit(int id, ProductModel product)
        // {
        //     product.Update();

        //     return RedirectToAction("Index", new { id = id });
        // }

    }
}