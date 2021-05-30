using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Drew_s_Goods.BO
{
    class DrewsGoodsBO
    {
        public string name { get; set; }
        public string price { get; set; }
        public string type { get; set; }
        public int stock { get; set; }




        public DrewsGoodsBO(string name, string price, int stock, string type = null)
        {
            this.name = name;
            this.price = price;
            this.stock = stock;
            this.type = type;
        }
    }
}
