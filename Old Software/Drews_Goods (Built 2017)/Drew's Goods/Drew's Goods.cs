using Drew_s_Goods.BLL;
using Drew_s_Goods.BO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Drew_s_Goods
{
    public partial class Drews_Goods : Form
    {
        public Drews_Goods(string[] loginCredentials)
        {
            InitializeComponent();
            refresh();
        }

        //Refresh function we can call to reset everything back to its default state, and to refresh the listview when needed.
        private void refresh()
        {
            lblSelectedItem.Text = "";
            btnConfirmAdd.Enabled = false;
            btnConfirmAdd.BackColor = Color.Gray;
            btnEdit.Visible = false;
            btnDelete.Visible = false;
            pnlAdd.Visible = false;
            pnlEdit.Visible = false;
            pnlMain.Visible = true;
            lvItems.Items.Clear();
            DataSet dataset = DrewsGoodsBLL.getItems();
            //Add a new row to the listview for every row in our local dataset
            foreach (DataRow row in dataset.Tables["items"].Rows)
            {
                ListViewItem item = new ListViewItem();
                item.Text = row.ItemArray[0].ToString();
                //Add items to row as long as possible
                for (int a = 1; a < row.ItemArray.Length; a++)
                {
                    item.SubItems.Add(row.ItemArray[a].ToString());
                }
                lvItems.Items.Add(item);
            }
        }
        private void btnEdit_Click(object sender, EventArgs e)
        {
            pnlEdit.Visible = true;
            pnlMain.Visible = false;
            pnlAdd.Visible = false;
            txtEditName.Text = lvItems.SelectedItems[0].SubItems[0].Text;
            txtEditPrice.Text = lvItems.SelectedItems[0].SubItems[1].Text;
            nudEditStock.Value = Convert.ToDecimal(lvItems.SelectedItems[0].SubItems[2].Text);
        }

        private void lvItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lvItems.SelectedItems.Count > 0)
            {
                btnEdit.Enabled = true;
                btnEdit.Visible = true;
                btnDelete.Enabled = true;
                btnDelete.Visible = true;
                lblSelectedItem.Text = lvItems.SelectedItems[0].SubItems[0].Text;
            }
            else
            {
                btnEdit.Enabled = false;
                btnEdit.Visible = false;
                btnDelete.Enabled = false;
                btnDelete.Visible = false;
                lblSelectedItem.Text = "";
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            DialogResult dialogResult = MessageBox.Show("Delete item", "Are you sure you want to delete this item?", MessageBoxButtons.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                try
                {
                    string item = lvItems.SelectedItems[0].Text;
                    DrewsGoodsBO BO = new DrewsGoodsBO(item, null, 0);

                    if (DrewsGoodsBLL.deleteItem(BO) == true)
                    {
                        refresh();
                    }
                    else
                    {
                        MessageBox.Show("Something went wrong. \n\nPlease try again.");
                    }
                }
                catch
                {
                    MessageBox.Show("No item selected. \n \n Select an item in the list!");
                    return;
                }
                btnEdit.Enabled = false;
                btnEdit.Visible = false;
                btnDelete.Enabled = false;
                btnDelete.Visible = false;
            }
            else
            {
                return;
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            pnlAdd.Visible = true;
            pnlEdit.Visible = false;
            pnlMain.Visible = false;
        }

        private void changeItem(string name, string price, int stock, string type)
        {
            if (!new Regex(@"^[A-Za-z0-9\s.,()]*$").IsMatch(name))
            {
                MessageBox.Show("Invalid characters used in name field. \n\n Only letters, numbers and the characters . , [ ] ( ) are allowed.");
                return;
            }
            else if (!new Regex(@"^([0-9]{1,5}).([0-9]{2})$").IsMatch(price))
            {
                MessageBox.Show("Invalid price syntax.\n\nUse the format '50.00' (2 decimals, minimum '0.00' maximum '99999.99'");
                return;
            }

            if (name == "" || price == "")
            {
                MessageBox.Show("Not all fields have been filled in.");
                return;
            }
            else
            {
                DrewsGoodsBO BO = new DrewsGoodsBO(name, price, stock, type);

                if (DrewsGoodsBLL.addItem(BO) == true)
                {
                    MessageBox.Show("Item " + type + "ed succesfully!");
                    refresh();
                }
            }
        }
        private void btnConfirmAdd_Click(object sender, EventArgs e)
        {
            changeItem(txtName.Text, txtPrice.Text, Convert.ToInt32(nudStock.Value), "add");
        }

        private void btnAddCancel_Click(object sender, EventArgs e)
        {
            pnlAdd.Visible = false;
            pnlEdit.Visible = false;
            pnlMain.Visible = true;
        }

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            if (txtName.Text.Length <= 0)
            {
                btnConfirmAdd.Enabled = false;
                btnConfirmAdd.BackColor = Color.Gray;
            } else
            {
                btnConfirmAdd.Enabled = true;
                btnConfirmAdd.BackColor = Color.LawnGreen;
            }
        }

        private void btnCancelEdit_Click(object sender, EventArgs e)
        {
            pnlEdit.Visible = false;
            pnlAdd.Visible = false;
            pnlMain.Visible = true;
        }

        private void nudEditStock_ValueChanged(object sender, EventArgs e)
        {
            if(nudEditStock.Value > 9999999)
            {
                nudEditStock.Value = 9999999;
            }
        }

        private void nudStock_ValueChanged(object sender, EventArgs e)
        {
            if(nudStock.Value > 9999999)
            {
                nudStock.Value = 9999999;
            }
        }

        private void btnConfirmEdit_Click(object sender, EventArgs e)
        {
            changeItem(txtEditName.Text, txtEditPrice.Text, Convert.ToInt32(nudEditStock.Value), "edit");
        }
    }
}
