using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["data"] != null)
                {
                    DataTable dt = (DataTable)Session["data"];
                    RptCart.DataSource = dt;
                    RptCart.DataBind();

                    if(dt.Rows.Count <= 0)
                    {
                        DivCart.Visible = false;
                        lblmsg.Visible = true;
                        lblmsg.Text = "No Data Present.";
                    }

                    if (Session["Name"] != null)
                    {
                        Session["Name"] = Session["Name"].ToString();
                    }
                    if (Session["Email"] != null)
                    {
                        Session["Email"] = Session["Email"].ToString();
                    }
                }

                else
                {
                    //Response.Redirect("Dashboard.aspx");
                    DivCart.Visible = false;
                    lblmsg.Visible = true;
                    lblmsg.Text = "No Data Present.";
                }
            }
        }

      
        protected void RptCart_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "BtnMinus")
            {
                var bookname = e.CommandArgument.ToString();
                
                DataTable dt = (DataTable)Session["data"];
                DataRow[] r = dt.Select("BookName='" + bookname + "'");
                if (r.Count() > 1)
                {
                    dt.Rows.RemoveAt(1);
                    dt.AcceptChanges();
                }
                foreach (DataRow rr in r)
                {
                   
                    if(Convert.ToInt32(rr["Qty"]) <= 1)
                    {
                        Response.Write("<script>alert('" + "Quantity Cannot be Zero, you can remove your product." + "');</script>");
                       
                    }
                    else
                    {
                        rr["Qty"] = Convert.ToInt32(rr["Qty"]) - 1;
                        rr["TotalPrice"] = Convert.ToInt32(rr["Qty"]) * Convert.ToDecimal(rr["Price"]);
                        dt.AcceptChanges();
                    }                 
                }
                Session["data"] = dt;
                RptCart.DataSource = dt;
                RptCart.DataBind();

            }
            if (e.CommandName == "BtnPlus")
            {
                var bookname = e.CommandArgument.ToString();

                DataTable dt = (DataTable)Session["data"];

                DataRow[] r = dt.Select("BookName='" + bookname + "'");
                if (r.Count() > 1)
                {
                    dt.Rows.RemoveAt(1);
                    dt.AcceptChanges();
                }
               foreach(DataRow rr in r)
                {
                    rr["Qty"] = Convert.ToInt32(rr["Qty"]) + 1;
                    rr["TotalPrice"] = Convert.ToInt32(rr["Qty"]) * Convert.ToDecimal(rr["Price"]);
                }
                dt.AcceptChanges();

                Session["data"] = dt;
                RptCart.DataSource = dt;
                RptCart.DataBind();
            }

            if (e.CommandName == "BtnDelete")
            {
                var bookname = e.CommandArgument.ToString();

                DataTable dt = (DataTable)Session["data"];

              //  DataRow[] r = dt.Select("BookName='" + bookname + "'");
                DataRow rowToDelete = dt.AsEnumerable()
                                   .FirstOrDefault(row => row.Field<string>("BookName").Contains(bookname));
                if (rowToDelete != null)
                {
                    dt.Rows.Remove(rowToDelete);
                }
             
                dt.AcceptChanges();

                if(dt.Rows.Count == 0)
                {
                    Response.Redirect("ShoppingStore.aspx");
                }
                Session["data"] = dt;
                RptCart.DataSource = dt;
                RptCart.DataBind();
            }
        }

        protected void BtnProceed_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("CheckOut.aspx");
        }
    }
}