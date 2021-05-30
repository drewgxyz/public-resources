using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Drew_s_Goods.BO
{
    class LoginBO
    {
        //Declare variables
        public string username { get; set; }
        public string password { get; set; }



        public LoginBO(string username, string password)
        {
            //Assign values to the functions params
            this.username = username;
            this.password = password;
        }
    }
}
