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
    public class IngredientController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            List<IngredientsModel> products = IngredientsModel.GetAll();

            return Json(products);
        }
        [HttpGet]
        public IActionResult Show(int id)
        {
            IngredientsModel product = IngredientsModel.GetById(id);
            return Json(product);
        }
        [HttpGet]
        // public IActionResult Delete(int id)
        // {
        //     ProductModel product = ProductModel.GetById(id);

        //     product.Delete();

        //     return this.RedirectToAction("Index");
        // }

        // [HttpPost]
        // public ProductModel Add([FromBody] ProductModel product)
        // {
        //     Console.WriteLine(product.Name);
        // if (ModelState.IsValid)
        // {
        //     product.Save();

        //     return RedirectToAction("Index");
        // }

        //     return product;
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