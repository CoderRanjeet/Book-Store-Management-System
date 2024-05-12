using BookStore.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore
{
    public partial class CheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["data"] = Session["data"];

                if (Session["Name"] != null)
                {
                    Session["Name"] = Session["Name"].ToString();
                }
                if (Session["Email"] != null)
                {
                    Session["Email"] = Session["Email"].ToString();
                }
                else
               {
                   Response.Redirect("Login.aspx");
               }
             
            }
        }

       
        protected void BtnOrder_Click(object sender, EventArgs e)
        {
            TblCustomers Cst = new TblCustomers
            {
                Name = txtfname.Text,
                Email = txtemail.Text,
                MobileNo = txtphone.Text,
                Address = txtaddress.Text,
                CreatedDate = DateTime.Now,
                UserEmail =  Session["Email"].ToString()
            };
            Cst.Add();

            if(Cst.CustomerId > 0)
            {
               
                if (Session["data"] != null)
                {
                    DataTable data = (DataTable)Session["data"];

                    foreach (DataRow row in data.Rows)
                    {
                        var daa = row.ItemArray[0].ToString();
                        TblOrders orders = new TblOrders
                        {
                            BookName = row.ItemArray[0].ToString(),
                            Qty = Convert.ToInt32(row.ItemArray[3]),
                            Price = Convert.ToDecimal(row.ItemArray[2]),
                            Total = Convert.ToDecimal(row.ItemArray[4]),
                            CustomerId = Convert.ToInt32(Cst.CustomerId),
                            CreatedDate = DateTime.Now,
                            OrderStatus ="Processing"
                        };
                        orders.Add();
                    }
                }
                //Session["Name"] = Session["Name"].ToString();
                //var Name = Session["Name"].ToString();
                //Response.Redirect(string.Format("~/Msg.aspx?Name={0}",Name));

                Response.Redirect("~/Msg.aspx");
            }
        }

        public void Clear()
        {
            txtaddress.Text = "";
            txtCardholder.Text = "";
            txtCardNumber.Text = "";
            txtcity.Text = "";
            txtemail.Text = "";
            txtfname.Text = "";
            txtHouse.Text = "";
            txtphone.Text = "";
            txtstate.Text = "";
            txtzipcode.Text = "";
        }
    }
}