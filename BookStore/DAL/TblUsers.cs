using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BookStore.DAL
{
    public class TblUsers
    {
      public long  UserId          {get;set;}
      public string Name           {get;set;}
      public string Email          {get;set;}
      public string MobileNo       {get;set;}
      public string Address        {get;set;}
      public string Password       {get;set;}
      public DateTime? CreatedDate { get; set; }


        public void Add()
        {
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"insert into [TblUsers]
                                      (
                                         
                                     [Name]       
                                     , [Email]      
                                     , [MobileNo]   
                                     , [Address]    
                                     , [Password]   
                                     , [CreatedDate]
                                       )
                                       values
                                        (
                                    
                                       @Name    
                                     , @Email     
                                     , @MobileNo   
                                     , @Address  
                                     , @Password 
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
                        cmd.Parameters.Add("@Password", SqlDbType.NVarChar, 50).Value = Password == null ? (Object)DBNull.Value : Password;
                        cmd.Parameters.Add("@CreatedDate", SqlDbType.DateTime, 8).Value = CreatedDate == null ? (Object)DBNull.Value : CreatedDate;
                       UserId = Convert.ToInt32(cmd.ExecuteScalar());
                        Con.Close();
                    }
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
        }

        public static TblUsers Get(string Email)
        {
            TblUsers user = new TblUsers();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"select [Name],[Email],[Password] from [TblUsers] where [Email]=@Email";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = Email;
                        using (SqlDataReader Rd = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                        {
                            if (Rd.Read())
                            {
                                user.Name = Rd["Name"] == DBNull.Value ? null : Rd["Name"].ToString();
                                user.Email = Rd["Email"] == DBNull.Value ? null : Rd["Email"].ToString();
                                user.Password = Rd["Password"] == DBNull.Value ? null : Rd["Password"].ToString();
                            }
                        }
                    }
                    Con.Close();
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
            return user;
        }

        public static TblUsers ValidData(string Email,string mobile)
        {
            TblUsers user = new TblUsers();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"select [Email],[MobileNo] from [TblUsers] where [Email]=@email or [MobileNo]=@mobileNo";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = Email;
                        cmd.Parameters.Add("@mobileNo", SqlDbType.VarChar, 20).Value = mobile;
                        using (SqlDataReader Rd = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                        {
                            if (Rd.Read())
                            {
                                user.Email = Rd["Email"] == DBNull.Value ? null : Rd["Email"].ToString();
                                user.MobileNo = Rd["MobileNo"] == DBNull.Value ? null : Rd["MobileNo"].ToString();                               
                            }
                        }
                    }
                    Con.Close();
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
            return user;
        }

    }
}