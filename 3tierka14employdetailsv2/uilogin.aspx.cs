using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BAL;
using BLL;


namespace _3tierka14employdetailsv2
{
    public partial class uilogin : System.Web.UI.Page
    {
        balClass1 objBAL = new balClass1();
        bllClass1 objBLL = new bllClass1();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            objBAL.id = Convert.ToInt32(txtid.Text.Trim());

            string valid = txtpswd.Text.Trim();


            string login = objBLL.logindata(objBAL);

           
            
                if (login == valid)
                {

                Session["id"] = txtid.Text.Trim();
                    Response.Redirect("uiemploydetails.aspx");
                Session.RemoveAll();
                }
                else
                {
                    label1.Visible = true;
                    label1.Text = "invalid username and password....!";
                }
            

            
            }
            

        protected void txtid_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}