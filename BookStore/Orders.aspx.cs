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
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Name"] != null)
                {
                    Session["Name"] = Session["Name"].ToString();
                    var name = Session["Name"].ToString();
                    var Email = Session["Email"].ToString();

                    DataTable Dt = TblOrders.GetOrders(Email);
                    if (Dt.Rows.Count > 0)
                    {
                        RptOrders.DataSource = Dt;
                        RptOrders.DataBind();
                    }
                    else
                    {
                        lblmsg.Visible = true;
                        lblmsg.Text = "Orders Not Found.";
                    }
                }
            }
        }
    }
}