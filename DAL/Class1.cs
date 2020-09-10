using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BAL;

namespace DAL
{
    public class dalClass1
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["pass"].ConnectionString);

        public string logindata(balClass1 objBAL)
        {



            SqlCommand cmd = new SqlCommand("loginpswrd ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", objBAL.id);
            try
            {
                if (con.State==ConnectionState.Closed)
                { 
                con.Open();
                }
                string pswd = Convert.ToString(cmd.ExecuteScalar());
                return pswd;
            }
            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                cmd.Dispose();
                if (con.State != ConnectionState.Closed)
                {
                    con.Close();
                }
            }
        }



      
        public DataSet getdata(balClass1 objBAL)
        {
            DataSet dsv2 = new DataSet();
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter("employdetails", con);
                sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                sda.SelectCommand.Parameters.AddWithValue("@id", objBAL.id);
                sda.Fill(dsv2);
            }
            catch(Exception ex)
            {
                throw;
            }
            finally
            {
                dsv2.Dispose();

            }
            return dsv2;
         }
        }
    
}
