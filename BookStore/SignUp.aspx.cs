using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookStore.DAL;

namespace BookStore
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void BtnSubmit_ServerClick(object sender, EventArgs e)
        {
            if(txtname.Value !="" && txtmobile.Value !="" && txtemail.Value !="" && txtAddress.Value !="" && txtpassword.Value != "")
            {
                TblUsers us = TblUsers.ValidData(txtemail.Value,txtmobile.Value);
                if(us.Email == txtemail.Value || us.MobileNo == txtmobile.Value)
                {
                    Response.Write("<script>alert('Email or Mobile Already Exists');</script>");
                }
                else
                {
                    TblUsers user = new TblUsers();
                    user.Name = txtname.Value;
                    user.Email = txtemail.Value;
                    user.Address = txtAddress.Value;
                    user.MobileNo = txtmobile.Value;
                    user.Password = txtpassword.Value;
                    user.CreatedDate = DateTime.Now;
                    user.Add();

                    if (user.UserId > 0)
                    {
                        Clear();
                        Response.Redirect("Login.aspx");
                    }
                }             
            }
            else
            {
                Response.Write("<script>alert('Please Enter All Details');</script>");
            }
        }

        public void Clear()
        {
            txtname.Value = "";
            txtemail.Value = "";
            txtAddress.Value = "";
            txtmobile.Value = "";
            txtpassword.Value = "";
        }
    }
}