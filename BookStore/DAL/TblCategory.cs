using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BookStore.DAL
{
    public class TblCategory
    {
        public int Id { get; set; }
        public string Cat_Name { get; set; }
        public string  Book_Name { get; set; }
        public decimal? Price { get; set; }
        public string Description { get; set; }
        public string Book_Image { get; set; }


         public void Add()
        {
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"insert into [TblCategory]
                                      (
                                         
                                     [Book_Name]       
                                     , [Price]      
                                     , [Description]   
                                     , [Book_Image]    
                                    , [Cat_Name]
                                       )
                                       values
                                        (                                    
                                       @Book_Name    
                                     , @Price     
                                     , @Description   
                                     , @Book_Image  
                                    , @Cat_Name
                                       );";
                    Sql += "select scope_identity();";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Book_Name", SqlDbType.NVarChar, 50).Value = Book_Name == null ? (Object)DBNull.Value : Book_Name;
                        cmd.Parameters.Add("@Price", SqlDbType.Decimal,8).Value = Price == null ? (Object)DBNull.Value : Price;
                        cmd.Parameters.Add("@Description", SqlDbType.NVarChar,200).Value = Description == null ? (Object)DBNull.Value : Description;
                        cmd.Parameters.Add("@Book_Image", SqlDbType.NVarChar, 50).Value = Book_Image == null ? (Object)DBNull.Value : Book_Image;
                        cmd.Parameters.Add("@Cat_Name", SqlDbType.NVarChar, 50).Value = Cat_Name == null ? (Object)DBNull.Value : Cat_Name;
                        Id = Convert.ToInt32(cmd.ExecuteScalar());
                        Con.Close();
                    }
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
        }

        public void Update()
        {
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"update [TblCategory]
                                         SET
                                      [Book_Name]     =@Book_Name,
                                      [Price]         =@Price,
                                      [Description]   =@Description,                                    
                                      [Cat_Name]      =@Cat_Name 
                                      where [Id] =@Id";
                                                   
                    //Sql += "select scope_identity();";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Id", SqlDbType.BigInt, 8).Value = Id;
                        cmd.Parameters.Add("@Book_Name", SqlDbType.NVarChar, 50).Value = Book_Name == null ? (Object)DBNull.Value : Book_Name;
                        cmd.Parameters.Add("@Price", SqlDbType.Decimal, 8).Value = Price == null ? (Object)DBNull.Value : Price;
                        cmd.Parameters.Add("@Description", SqlDbType.NVarChar, 200).Value = Description == null ? (Object)DBNull.Value : Description;
                        cmd.Parameters.Add("@Cat_Name", SqlDbType.NVarChar, 50).Value = Cat_Name == null ? (Object)DBNull.Value : Cat_Name;
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

        public static DataTable GetCategories()
        {
            DataTable Dt = new DataTable();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"select * from [TblCategory]";
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


        public static DataTable GetCategories(string category)
        {
            DataTable Dt = new DataTable();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"select * from [TblCategory] where [Cat_Name]=@Cat_Name;";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Cat_Name", SqlDbType.VarChar, 50).Value = category;

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


        public static DataTable GetCategory(int bookid)
        {
            DataTable Tc = new DataTable();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"select * from [TblCategory] where [Id]=@Id;";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Id", SqlDbType.BigInt,8).Value = bookid;

                        using (SqlDataReader Rd = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                        {
                              Tc.Load(Rd);
                                //Tc.Book_Name = Rd["Book_Name"] == DBNull.Value ? null : Rd["Book_Name"].ToString();
                                //Tc.Book_Image = Rd["Book_Image"] == DBNull.Value ? null : Rd["Book_Image"].ToString();
                                //Tc.Description = Rd["Description"] == DBNull.Value ? null : Rd["Description"].ToString();
                                //Tc.Price = Convert.ToDecimal(Rd["Price"]);
                                //Tc.Id = Convert.ToInt32(Rd["Id"]);
                            
                        }
                    }
                    Con.Close();
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
            return Tc;
        }

        public static TblCategory GetCat(string bookid)
        {
            TblCategory Tc = new TblCategory();
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"select * from [TblCategory] where [Id]=@Id;";
                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Id", SqlDbType.BigInt, 8).Value = bookid;

                        using (SqlDataReader Rd = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                        {
                            if (Rd.Read())
                            {
                                Tc.Book_Name = Rd["Book_Name"] == DBNull.Value ? null : Rd["Book_Name"].ToString();
                                Tc.Book_Image = Rd["Book_Image"] == DBNull.Value ? null : Rd["Book_Image"].ToString();
                                Tc.Description = Rd["Description"] == DBNull.Value ? null : Rd["Description"].ToString();
                                Tc.Cat_Name = Rd["Cat_Name"] == DBNull.Value ? null : Rd["Cat_Name"].ToString();
                                Tc.Price = Convert.ToDecimal(Rd["Price"]);
                                Tc.Id = Convert.ToInt32(Rd["Id"]);
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
            return Tc;
        }


        public bool Delete(string Id)
        {
            bool IsDelete = false;
            try
            {
                string Constr = ConfigurationManager.ConnectionStrings["demo"].ConnectionString;
                using (SqlConnection Con = new SqlConnection(Constr))
                {
                    string Sql = @"delete [TblCategory] where [Id]=@Id";

                    Con.Open();

                    using (SqlCommand cmd = new SqlCommand(Sql, Con))
                    {
                        cmd.Parameters.Add("@Id", SqlDbType.NVarChar, 50).Value = Id;

                        int Msg = cmd.ExecuteNonQuery();
                        if (Msg == 1)
                        {
                            IsDelete = true;
                        }
                        else
                        {
                            IsDelete = false;
                        }
                    }
                    Con.Close();
                }
            }
            catch (Exception Ex)
            {
                var Msg = Ex.Message;
            }
            return IsDelete;
        }
    }
}