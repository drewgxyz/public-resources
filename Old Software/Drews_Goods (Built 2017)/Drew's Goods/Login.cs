using Drew_s_Goods.BLL;
using Drew_s_Goods.BO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Drew_s_Goods
{
    public partial class Login : Form
    {

        private Control[] controls;
        public static string[] loginCredentials;

        public Login()
        {
            InitializeComponent();
            //Fill controls variable with controls that need to be centered
            controls = new Control[] { txtUsername, btnLogin, lblLogin, txtPassword, pnlUsername, pnlPassword };
            //Center elements
            centerElement(controls);
        }

        private void centerElement(Control[] element)
        {
            //Loop through the controls and center them
            foreach (Control c in controls)
            {
                c.Left = (this.ClientSize.Width - c.Width) / 2;
            }
        }

        public static string MD5Hash(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));

            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }
        void checkUserLogin()
        {
            string username = txtUsername.Text;
            string password = MD5Hash(txtPassword.Text);
            string[] inputs = { username };
            foreach (string i in inputs)
            {
                if (!Regex.IsMatch(i, "^[a-zA-Z0-9]+$"))
                {
                    MessageBox.Show("Invalid characters have been entered. \nOnly letters and/or numbers are allowed.");
                    return;
                }
            }
            if (username == "" | password == "")
            {
                return;
            }

            LoginBO newLogin = new LoginBO(username, password);

            if (LoginBLL.databaseQuery(newLogin) == true)
            {
                var newWindow = new Thread(() => Application.Run(new Drews_Goods(loginCredentials)));
                newWindow.Start();
                Close();
            }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            checkUserLogin();
        }

        private void txtPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btnLogin_Click(this, new EventArgs());
            }
        }

        private void txtUsername_Enter(object sender, EventArgs e)
        {
            if (txtUsername.Text == "Username") txtUsername.Text = "";
        }

        private void txtPassword_Enter(object sender, EventArgs e)
        {
            if (txtPassword.Text == "Password") txtPassword.Text = "";
        }
    }
}
