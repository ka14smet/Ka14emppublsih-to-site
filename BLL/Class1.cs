using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using BAL;

namespace BLL
{
    public class bllClass1
    {
        dalClass1 objdal = new dalClass1();

        public string logindata(balClass1 objBAL)
        {
              try {  return objdal.logindata(objBAL);

                  }

              catch(Exception ex)
                  {
                     throw;
                  }
         finally
                 {
                    objdal = null;
                 }
         }


public DataSet getdata(balClass1 objBAL)
        {
            try { return objdal.getdata(objBAL); }

            catch (Exception ex)
            {
                throw;
            }
            finally
            {
                objdal = null;
            }
        }
    }
}
