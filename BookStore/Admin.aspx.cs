using BookStore.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_ServerClick(object sender, EventArgs e)
        {
            var email = txtEmail.Value;
            var pass = txtpassword.Value;

          //  TblUsers Tb = TblUsers.Get(email);

            //if (Tb.Email == email && Tb.Password == pass)
            //{
            //    Session["Name"] = Tb.Name;
            //    Response.Redirect("AddBook.aspx");
            //}

            if(email =="Admin@gmail.com" && pass == "Admin")
            {
                Response.Redirect("AddBook.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please Enter Correct Email and Password');</script>");
            }
        }
    }
}