using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookStore.DAL;


namespace BookStore
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["Name"] != null)
                //{
                //    Session["Name"] = Session["Name"].ToString();
                //    string name = Session["Name"].ToString();
                //    lblname.InnerHtml = name;
                //    GetBooks();
                //}
                //else
                //{
                //    Response.Redirect("Admin.aspx");
                //}
                GetBooks();

            }
        }

        public void GetBooks()
        {
            DataTable Dt = TblCategory.GetCategories();
            RptBooks.DataSource = Dt;
            RptBooks.DataBind();

        }

        protected void BtnAddBook_ServerClick(object sender, EventArgs e)
        {
            if (txtBookName.Text != null && ddlCategory.SelectedValue != "0" && txtDescription.Text != "" && txtPrice.Text != "")
            {
                TblCategory Cat = new TblCategory();

                if (Session["Id"] == null)
                {
                    if (txtphoto.PostedFile.ContentLength > 0)
                    {
                        Cat.Cat_Name = ddlCategory.SelectedValue;
                        Cat.Book_Name = txtBookName.Text;
                        Cat.Description = txtDescription.Text;
                        Cat.Price = Convert.ToDecimal(txtPrice.Text);

                        var filename = (txtphoto.PostedFile.FileName);
                        var path = Path.Combine(Server.MapPath("~/Images/"), filename);
                        txtphoto.PostedFile.SaveAs(path);
                        var image = "Images/" + filename;
                        Cat.Book_Image = image;

                        Cat.Add();
                        if (Cat.Id > 0)
                        {
                            Clear();
                            GetBooks();
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Oops ? Fill All Details');</script>");
                    }
                }
                else
                {
                    int Id = Convert.ToInt32(Session["Id"]);
                    Cat.Cat_Name = ddlCategory.SelectedValue;
                    Cat.Book_Name = txtBookName.Text;
                    Cat.Description = txtDescription.Text;
                    Cat.Price = Convert.ToDecimal(txtPrice.Text);
                    Cat.Id = Id;
                    Cat.Update();
                    if (Cat.Id > 0)
                    {
                        Clear();
                        GetBooks();
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Oops ? Fill All Details');</script>");
            }
        }

        public void Clear()
        {
            txtBookName.Text = "";
            ddlCategory.SelectedValue = "0";
            txtDescription.Text = "";
            txtPrice.Text = "";
        }

        protected void RptBooks_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                var Id = e.CommandArgument.ToString();
                if (Id != null)
                {
                    TblCategory edit = TblCategory.GetCat(Id);
                    if (edit != null)
                    {
                        txtPrice.Text = edit.Price.ToString();
                        txtBookName.Text = edit.Book_Name;
                        ddlCategory.SelectedValue = edit.Cat_Name;
                        txtDescription.Text = edit.Description;

                        Session["Id"] = Id;
                    }
                }
            }
            else if (e.CommandName == "Delete")
            {
                var Id = e.CommandArgument.ToString();

                if (Id != null)
                {
                    TblCategory del = new TblCategory();
                    bool IsDeleted = del.Delete(Id);
                    if (IsDeleted)
                    {
                        Response.Write("<script>alert('Deleted SuccessFully.');</script>");
                        GetBooks();
                    }
                }
            }
        }
    }
}