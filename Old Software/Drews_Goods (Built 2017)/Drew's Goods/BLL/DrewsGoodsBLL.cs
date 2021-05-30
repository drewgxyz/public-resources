using Drew_s_Goods.BO;
using Drew_s_Goods.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Drew_s_Goods.BLL
{
    class DrewsGoodsBLL
    {
        public static DataSet getItems(DrewsGoodsBO BO = null)
        {
            return DrewsGoodsDAL.getItems(BO);
        }

        public static bool deleteItem(DrewsGoodsBO BO = null)
        {
            return DrewsGoodsDAL.deleteItem(BO);
        }

        public static bool addItem(DrewsGoodsBO BO = null)
        {
            return DrewsGoodsDAL.addItem(BO);
        }
    }
}
