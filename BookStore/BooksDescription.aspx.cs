using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookStore.DAL;

namespace BookStore
{
    public partial class BooksDescription : System.Web.UI.Page
    {
        public enum MessageType { success, danger, info, warning };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["BookId"] != null)
                {
                    int BookId = Convert.ToInt32(Request.QueryString["BookId"]);
                    DataTable Data = TblCategory.GetCategory(BookId);
                    RptBook.DataSource = Data;
                    RptBook.DataBind();

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
                    Response.Redirect("Dashboard.aspx");
                }
            }
        }

        protected void ShowMessage(string Title, string message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "AlertMessage('" + Title + "','" + message + "','" + type + "');", true);
        }

        protected void RptBook_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Buy")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                string BookName = commandArgs[0];
                string Price = commandArgs[1];
                string BookImage = commandArgs[2];
                // string BuyData = BookImage +"," + Price +"," +  BookName;

                DataTable dt = new DataTable();
                if (Session["data"] != null)
                {
                    dt = (DataTable)Session["data"];
                    DataRow dr = null;
                    if (dt.Rows.Count > 0)
                    {
                        DataRow[] r = dt.Select("BookName='" + BookName + "'");
                        if (r.Count() >= 1)
                        {
                            Response.Redirect("Cart.aspx");
                        }
                        dr = dt.NewRow();
                        dr["BookName"] = BookName;
                        dr["BookImage"] = BookImage;
                        dr["Price"] = Price;
                        dr["TotalPrice"] = Price;
                        dr["Qty"] = 1;
                        dt.Rows.Add(dr);
                        Session["data"] = dt;
                    }
                }
                else
                {
                    dt.Columns.Add("BookName", typeof(string));
                    dt.Columns.Add("BookImage", typeof(string));
                    dt.Columns.Add("Price", typeof(string));
                    dt.Columns.Add("Qty", typeof(string));
                    dt.Columns.Add("TotalPrice", typeof(string));
                    DataRow dr1 = dt.NewRow();
                    dr1 = dt.NewRow();
                    dr1["BookName"] = BookName;
                    dr1["BookImage"] = BookImage;
                    dr1["Price"] = Price;
                    dr1["TotalPrice"] = Price;
                    dr1["Qty"] = 1;
                    dt.Rows.Add(dr1);
                    Session["data"] = dt;
                }

                if (Session["data"] != null)
                {
                    Response.Redirect("Cart.aspx");
                }
            }

            if (e.CommandName == "AddToCart")
            {
                string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
                string BookName = commandArgs[0];
                string Price = commandArgs[1];
                string BookImage = commandArgs[2];
                // string BuyData = BookImage +"," + Price +"," +  BookName;

                DataTable dt = new DataTable();
                if (Session["data"] != null)
                {
                    dt = (DataTable)Session["data"];
                    DataRow dr = null;
                    if (dt.Rows.Count > 0)
                    {
                        DataRow[] r = dt.Select("BookName='" + BookName + "'");
                        if (r.Count() >= 1)
                        {
                            ShowMessage("Oops ? Book Already Added to Cart", "please select Another Book ", MessageType.warning);
                            // Response.Write("<script>alert('" + "Book Already Added to Cart, please select Another Book." + "');</script>");
                        }
                        else
                        {
                            dr = dt.NewRow();
                            dr["BookName"] = BookName;
                            dr["BookImage"] = BookImage;
                            dr["Price"] = Price;
                            dr["TotalPrice"] = Price;
                            dr["Qty"] = 1;
                            dt.Rows.Add(dr);
                            Session["data"] = dt;

                            ShowMessage(BookName + "  Book  ", "  Added Successfully", MessageType.success);
                        }
                    }
                }
                else if (dt.Rows.Count <= 0)
                {
                    dt.Columns.Add("BookName", typeof(string));
                    dt.Columns.Add("BookImage", typeof(string));
                    dt.Columns.Add("Price", typeof(string));
                    dt.Columns.Add("Qty", typeof(string));
                    dt.Columns.Add("TotalPrice", typeof(string));
                    DataRow dr1 = dt.NewRow();
                    dr1 = dt.NewRow();
                    dr1["BookName"] = BookName;
                    dr1["BookImage"] = BookImage;
                    dr1["Price"] = Price;
                    dr1["TotalPrice"] = Price;
                    dr1["Qty"] = 1;
                    dt.Rows.Add(dr1);
                    Session["data"] = dt;

                    ShowMessage(BookName + "  Book  ", " Added Successfully", MessageType.success);
                }

                Response.Redirect("ShoppingStore.aspx");
            }
        }
    }
}
