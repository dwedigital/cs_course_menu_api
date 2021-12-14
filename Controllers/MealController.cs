namespace MealPlanner.Controllers
{
    using Microsoft.AspNetCore.Mvc;
    [Route("[controller]/[action]/{id?}")]
    public class RecipeController : ControllerBase
    {
        public IActionResult Index()
        {
            List<ProductModel> recipe = new List<ProductModel>();
            return View(recipe);
        }
        public IActionResult Details()
        {
            ProductModel product = ProductModel.GetById(id);

            return View("Details", product);
        }
        public IActionResult Edit()
        {
            ProductModel product = ProductModel.GetById(productId);

            return View(product);
        }
        public IActionResult Add()
        {
            product.Create();
            return this.RedirectToAction("Index");
        }

    }

}