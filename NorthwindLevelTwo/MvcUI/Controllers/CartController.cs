using Business.Abstract;
using Entities.Concrete;
using Microsoft.AspNetCore.Mvc;
using MvcUI.Helpers;
using MvcUI.Models;
using System.Reflection.Metadata.Ecma335;

namespace MvcUI.Controllers
{
    public class CartController : Controller
    {
        private ICartService _cartService;
        private ICartSessionHelper _cartSessionHelper;
        private IProductService _productService;

        
        public CartController(ICartService cartService, ICartSessionHelper cartSessionHelper, IProductService productService)
        {
            _cartService = cartService;
            _cartSessionHelper = cartSessionHelper;
            _productService = productService;
        }

        public IActionResult AddToCart(int productId)
        {
            Product product = _productService.GetById(productId);
            var cart = _cartSessionHelper.GetCart(key: "cart");
            _cartService.AddToCart(cart, product);
            _cartSessionHelper.SetCart(key: "cart", cart);
            TempData.Add("message", product.ProductName + " Added to cart!");
            return RedirectToAction("Index", controllerName: "Product");
        }
        public IActionResult RemoveFromCart(int productId)
        {
            Product product = _productService.GetById(productId);
            var cart = _cartSessionHelper.GetCart(key: "cart");
            _cartService.RemoveFromCart(cart, productId);
            _cartSessionHelper.SetCart(key: "cart", cart);
            TempData.Add("message", product.ProductName + " Removed from cart!");
            return RedirectToAction("Index", controllerName: "Cart");
        }

        public IActionResult Index()
        {
            var model = new CartListViewModel
            {
                Cart = _cartSessionHelper.GetCart(key: "cart")
            };
            return View(model);
        }
        public IActionResult Complete()
        {
            var model = new LoggingDetailsViewModel
            {
                LoggingDetails = new LoggingDetail()
            };
            return View(model);
        }

        [HttpPost]
        public IActionResult Complete(LoggingDetail loggingDetail)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }
            TempData.Add("message", "Your order was successful!");
            _cartSessionHelper.Clear();
            return RedirectToAction("Index", controllerName: "Cart");
        
        }
        public IActionResult SignUp()
        {
            var model = new ShippingDetailsViewModel
            {
                ShippingDetail = new ShippingDetail()
            };
            return View(model);
        }

        [HttpPost]
        public IActionResult SignUp(ShippingDetail shippingDetail)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }

            TempData.Add("message", "You signed up!");
            return RedirectToAction("Index", controllerName: "");

        }
        public IActionResult LogIn()
        {
            var model = new ShippingDetailsViewModel
            {
                ShippingDetail = new ShippingDetail()
            };
            return View(model);
        }

        [HttpPost]
        public IActionResult LogIn(ShippingDetail shippingDetail)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }

            TempData.Add("message", "You logged in!");
            return RedirectToAction("Index", controllerName: "");
        }
    }
}
