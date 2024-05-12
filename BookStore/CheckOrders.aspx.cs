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
    public partial class CheckOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetData();
            }
        }

        protected void SaveStatus_ServerClick(object sender, EventArgs e)
        {
            if (ddlstatus.Text != "")
            {
                var status = ddlstatus.Text;

                TblOrders tb = new TblOrders();
                tb.OrderStatus = status;
                tb.BookName = "Foundation";
                tb.Update();
                GetData();
            }
        }
        public void GetData()
        {
            DataTable Dt = TblOrders.GetAllOrders();
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
        protected void RptOrders_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "View")
            {
                int BookId = Convert.ToInt32(e.CommandArgument.ToString());
                DropDownList selectList = e.Item.FindControl("ddlstatus") as DropDownList;
                var status = selectList.SelectedItem.Text;

                TblOrders tb = new TblOrders();
                tb.OrderStatus = status;
                tb.OrderId = BookId;
                tb.Update();
                GetData();
            }
        }
    }
}