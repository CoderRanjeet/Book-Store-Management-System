using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BookStore.DAL
{
    public class TblCustomers
    {
        public long CustomerId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string MobileNo { get; set; }
        public string Address { get; set; }     
       public string UserEmail { get; set; }
        public DateTime? CreatedDate { get; set; }


        public void Add()
        {
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"insert into [TblCustomers]
                                      (   
                                       [Name]       
                                     , [Email]      
                                     , [MobileNo]   
                                     , [Address]    
                                     , [UserEmail]    
                                     , [CreatedDate]
                                       )
                                       values
                                        (                                   
                                       @Name    
                                     , @Email     
                                     , @MobileNo   
                                     , @Address  
                                     , @UserEmail  
                                     , @CreatedDate
                                       );";
                    Sql += "select scope_identity();";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Name", SqlDbType.NVarChar, 50).Value = Name == null ? (Object)DBNull.Value : Name;
                        cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 50).Value = Email == null ? (Object)DBNull.Value : Email;
                        cmd.Parameters.Add("@MobileNo", SqlDbType.NVarChar, 20).Value = MobileNo == null ? (Object)DBNull.Value : MobileNo;
                        cmd.Parameters.Add("@Address", SqlDbType.NVarChar, 50).Value = Address == null ? (Object)DBNull.Value : Address;
                        cmd.Parameters.Add("@UserEmail", SqlDbType.NVarChar, 50).Value = UserEmail == null ? (Object)DBNull.Value : UserEmail;
                        cmd.Parameters.Add("@CreatedDate", SqlDbType.DateTime, 8).Value = CreatedDate == null ? (Object)DBNull.Value : CreatedDate;
                        CustomerId = Convert.ToInt32(cmd.ExecuteScalar());
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