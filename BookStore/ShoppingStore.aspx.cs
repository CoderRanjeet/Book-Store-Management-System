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
    public partial class ShoppingStore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable Dt = TblCategory.GetCategories();
                RptBooks.DataSource = Dt;
                RptBooks.DataBind();

                if (Session["Name"] != null)
                {
                    Session["Name"] = Session["Name"].ToString();
                }
                if (Session["Email"] != null)
                {
                    Session["Email"] = Session["Email"].ToString();
                }
               
            }
        }

        protected void RptBooks_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName== "View")
            {
                var BookId = e.CommandArgument.ToString();
                Response.Redirect(string.Format("~/BooksDescription.aspx?BookId={0}", BookId));
            }
        }

        protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            var category = ddlcategory.SelectedValue;
            if(category != null && category !="0")
            {
                DataTable Dt = TblCategory.GetCategories(category);
                RptBooks.DataSource = Dt;
                RptBooks.DataBind();
            } 
            else if(category == "0")
            {
                DataTable Dt = TblCategory.GetCategories();
                RptBooks.DataSource = Dt;
                RptBooks.DataBind();
            }
        }
    }
}