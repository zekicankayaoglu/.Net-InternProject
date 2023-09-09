using Business.Abstract;
using Microsoft.AspNetCore.Mvc;
using MvcUI.Models;
using System.Reflection.Metadata.Ecma335;

namespace MvcUI.Controllers
{
    public class ProductController : Controller
    {
        private IProductService _productService;
        public ProductController(IProductService productService)
        {
            _productService = productService;
        }


        public IActionResult Index(int category)
        {
            var model = new ProductListViewModel
            {
                Products = category>0?_productService.GetByCategory(category) : _productService.GetAll()
            };
            return View(model);        
            
        }
        }

    }

