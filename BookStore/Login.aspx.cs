using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookStore.DAL;

namespace BookStore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }
      
        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            var email = txtEmail.Value;
            var pass = txtpassword.Value;

            TblUsers Tb = TblUsers.Get(email);

            if(Tb.Email == email && Tb.Password == pass)
            {
                Session["Name"] = Tb.Name;
                Session["Email"] = Tb.Email;
                Session["data"] = null;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please Enter Correct Email and Password');</script>");
            }
        }
    }
}