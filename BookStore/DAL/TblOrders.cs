using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BookStore.DAL
{
    public class TblOrders
    {
        public int OrderId { get; set; }
        public string BookName { get; set; }
        public int? Qty { get; set; }
        public decimal? Price { get; set; }
        public decimal? Total { get; set; }
        public int? CustomerId { get; set; }
        public string OrderStatus { get; set; }
        public DateTime? CreatedDate { get; set; }

        public void Add()
        {
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"insert into [TblOrders]
                                      (
                                         
                                     [BookName]       
                                     , [Qty]      
                                     , [Price]   
                                     , [Total]    
                                     , [CustomerId]                                           
                                     , [CreatedDate]
                                     , [OrderStatus]   
                                       )
                                       values
                                        (
                                    
                                       @BookName                                       
                                     , @Qty     
                                     , @Price   
                                     , @Total  
                                     , @CustomerId 
                                     , @CreatedDate
                                     , @OrderStatus    
                                       );";
                    Sql += "select scope_identity();";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        
                        cmd.Parameters.Add("@BookName", SqlDbType.NVarChar, 150).Value = BookName == null ? (Object)DBNull.Value : BookName;
                        cmd.Parameters.Add("@Qty", SqlDbType.Int).Value = Qty == null ? (Object)DBNull.Value : Qty;
                        cmd.Parameters.Add("@Price", SqlDbType.Decimal,8).Value = Price == null ? (Object)DBNull.Value : Price;
                        cmd.Parameters.Add("@Total", SqlDbType.Decimal,8).Value = Total == null ? (Object)DBNull.Value : Total;
                        cmd.Parameters.Add("@CustomerId", SqlDbType.Int).Value = CustomerId == null ? (Object)DBNull.Value : CustomerId;
                        cmd.Parameters.Add("@CreatedDate", SqlDbType.DateTime, 8).Value = CreatedDate == null ? (Object)DBNull.Value : CreatedDate;
                        cmd.Parameters.Add("@OrderStatus", SqlDbType.NVarChar, 50).Value = OrderStatus == null ? (Object)DBNull.Value : OrderStatus;
                        OrderId = Convert.ToInt32(cmd.ExecuteScalar());
                        Con.Close();
                    }
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
        }

        public static DataTable GetOrders(string Email)
        {
            DataTable Dt = new DataTable();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    //string Sql = @"select * from [TblCategory]"

                    string Sql = @"SELECT Tb.Name ,Tb.UserEmail , Tb.CustomerId, TblOrders.BookName,TblOrders.Qty, 
                                 TblOrders.Price, TblOrders.Total,TblOrders.CustomerId,TblOrders.OrderId, TblOrders.CreatedDate,TblOrders.Qty
                                FROM TblCustomers Tb
                                INNER JOIN TblOrders ON Tb.CustomerId = TblOrders.CustomerId
                                  
                           where Tb.UserEmail LIKE '%' + @Email + '%'";

                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 50).Value = Email;
                        using (SqlDataReader Rd = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                        {
                            Dt.Load(Rd);
                        }
                    }
                    Con.Close();
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
            return Dt;
        }

        public static DataTable GetAllOrders()
        {
            DataTable Dt = new DataTable();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    //string Sql = @"select * from [TblCategory]"

                    string Sql = @"SELECT Tb.Name ,Tb.UserEmail , Tb.CustomerId, TblOrders.BookName,TblOrders.Qty, 
                                 TblOrders.Price,TblOrders.OrderStatus, TblOrders.Total,TblOrders.CustomerId,TblOrders.OrderId, TblOrders.CreatedDate,TblOrders.Qty
                                FROM TblCustomers Tb
                                INNER JOIN TblOrders ON Tb.CustomerId = TblOrders.CustomerId";
                                  
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        using (SqlDataReader Rd = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                        {
                            Dt.Load(Rd);
                        }
                    }
                    Con.Close();
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
            return Dt;
        }


        public void Update()
        {
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"update [TblOrders]
                                         SET
                                      [OrderStatus]     =@OrderStatus
                              where OrderId =@OrderId";
                                     

                    //Sql += "select scope_identity();";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@OrderStatus", SqlDbType.NVarChar, 50).Value = OrderStatus == null ? (Object)DBNull.Value : OrderStatus;
                        cmd.Parameters.Add("@OrderId", SqlDbType.BigInt,8).Value = OrderId;
                     
                        int msg = Convert.ToInt32(cmd.ExecuteScalar());
                        Con.Close();
                    }
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
        }
    }
}