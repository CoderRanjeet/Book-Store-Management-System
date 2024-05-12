using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore
{
    public partial class BookStore : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["Name"] != null)
           {
               Session["Name"] = Session["Name"].ToString();                   
           }
            if (Session["Email"] != null)
            {
                Session["Email"] = Session["Email"].ToString();
            }
        }
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session["Name"] = null;
            if (Session["Name"] != null)
            {
                Session["Name"] = string.Empty;
            }
            Response.Redirect("Login.aspx");
        }
    }
}