using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;


public partial class Aboutpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) ;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //        SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
        //               scon.Open();
        //               SqlCommand cm = new SqlCommand("Insert into Demo" + "( [Firstvalue],[Secondvalue]) Values('" + txtfirstval.Text + "','" + txtsecondval.Text +  "')", scon);
        //               cm.ExecuteNonQuery();
        //    }
        //}
    }
}


//    protected void Button1_Click(object sender, EventArgs e)
//    {
//        SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
//        scon.Open();
//        SqlCommand cm = new SqlCommand("Insert into Demo" + "( [Firstvalue],[Secondvalue]) Values('" + txtfirstval.Text + "','" + txtsecondval.Text +  "')", scon);
//        cm.ExecuteNonQuery();
//    }
//}