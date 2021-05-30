using Drew_s_Goods.BO;
using Drew_s_Goods.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Drew_s_Goods.BLL
{
    class LoginBLL
    {
        public static bool databaseQuery(LoginBO BO = null)
        {
            return LoginDAL.createDatbaseQuery(BO);
        }
    }
}
