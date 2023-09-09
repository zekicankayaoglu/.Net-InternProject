﻿using Core.Entities.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities.DomainModels
{
    public class Cart : IDomainModel
    {
        public List<CartLine> CartLines { get; set; }

        public Cart()
        {
            CartLines = new List<CartLine>();
        }

        public decimal Total
        {
            get { return CartLines.Sum(c => c.Quantity * c.Product.UnitPrice); }
        }

    }
}
