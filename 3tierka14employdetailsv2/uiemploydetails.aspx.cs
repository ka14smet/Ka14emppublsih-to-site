using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using BAL;

using System.Data;

namespace _3tierka14employdetailsv2
{
    public partial class uiemploydetails : System.Web.UI.Page
    {

        bllClass1 objBLL = new bllClass1();
        //balClass1 objBAL = new balClass1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                try
                {

                    
                    //Session.Timeout{ }
                    int emplyid = Convert.ToInt32(Session["id"]);
                    balClass1 objBAL = new balClass1();
                    objBAL.id = emplyid;
                    DataSet ds = new DataSet();
                    ds = objBLL.getdata(objBAL);
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    GridView2.DataSource = ds.Tables[1];
                    GridView2.DataBind();
                    lbltime.Text = DateTime.Now.ToString();
                    lblid.Text =("EMPLOYEE ID : Ka14"+emplyid.ToString());
                    DataRow r = ds.Tables[0].Rows[0];
                    string name = r.Field<string>(1);
                    lblname.Text =("EMPLOYEE NAME:" +name);

                   
                    
                }
                catch (Exception ex)
                {
                    Response.Redirect("error occured" + ex.Message.ToString());
                }
                finally
                {
                    objBLL = null;
                }
            }


        
            else
            {
                Response.Redirect("uilogin.aspx");
            }
        }
        
        
       
        
       


        protected void btndetails_Click(object sender, EventArgs e)
        {
           

        }

        protected void btndetails_Click1(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("uilogin.aspx");
        }
    }
}