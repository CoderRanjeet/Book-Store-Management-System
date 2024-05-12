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
    public partial class Dashboard1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Name"] != null)
                {
                    Session["Name"] = Session["Name"].ToString();
                    Session["Email"] = Session["Email"].ToString();
                    string name = Session["Name"].ToString();
                    lblname.InnerHtml = name;

                    DataTable Dt = TblCategory.GetCategories();
                    RptBooks.DataSource = Dt;
                    RptBooks.DataBind();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void RptBooks_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
          if (e.CommandName == "View")
          {
              var BookId = e.CommandArgument.ToString();
              Response.Redirect(string.Format("~/BooksDescription.aspx?BookId={0}", BookId));
          }
        }
    }
}