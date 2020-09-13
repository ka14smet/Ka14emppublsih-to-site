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
                    string emplyid = Convert.ToString(Session["id"]);
                    balClass1 objBAL = new balClass1();
                    objBAL.id = emplyid;
                    DataSet ds = new DataSet();
                    ds = objBLL.getdata(objBAL);
                    //GridView1.DataSource = ds.Tables[0];
                    //GridView1.DataBind();
                    //GridView2.DataSource = ds.Tables[1];
                    //GridView2.DataBind();
                    lbltime.Text = DateTime.Now.ToString();
                    DataRow r = ds.Tables[0].Rows[0];
                    lblid.Text = emplyid.ToString();
                    lblname.Text = r.Field<string>(2);
                    lbldesgn.Text = r.Field<string>(11);
                    lblid1.Text = r.Field<string>(1);
                    lblname1.Text = r.Field<string>(2);
                    lbldob.Text = r.Field<string>(3);
                    lblgender.Text = r.Field<string>(4);
                    lblbldgrp.Text = r.Field<string>(5);
                    lblmobno1.Text = r.Field<string>(6);
                    lblmobno2.Text = r.Field<string>(7);
                    lblmail.Text = r.Field<string>(8);
                    lbladrs.Text = r.Field<string>(9);
                    lblqal.Text = r.Field<string>(10);
                    lbldes.Text = r.Field<string>(11);
                    DataRow r2 = ds.Tables[1].Rows[0];
                    lblprj.Text = r2.Field<string>(0);
                    lblwrkstrt.Text = r2.Field<string>(1);
                    lblwrkcmplt.Text= r2.Field<string>(2);
                    lbltraining.Text= r2.Field<string>(3);



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