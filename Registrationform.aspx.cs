using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class interviewregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Register_Click(object sender, EventArgs e)
    {
        Validate();
        if (Page.IsValid)
        {


            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
            {

                SqlCommand cm = new SqlCommand("Insert into Regsform" + "( [FirstName],[LastName],[Email],[Country],[State],[City],[Gender],[Date Of Birth]) Values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + TxtEmail.Text + "','" + Country.Text + "','" + State.Text + "' ,'" + City.Text + "' ,'" + Gender.Text + "','" + DateTime.ParseExact(DOB.Text, "dd/MM/yyyy", null).ToString("M/dd/yyyy") + "')", scon);

                cm.ExecuteNonQuery();
            }
        }
    }

    protected void Cancel_Click(object sender, EventArgs e)
    {

    }

    protected void Cancel_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Detailspage.aspx");
    }

    protected void DOB_TextChanged(object sender, EventArgs e)
    {
        DateTime dob = Convert.ToDateTime(DOB.Text);

        DateTime todaysdate = DateTime.Today;
        int age = todaysdate.Year - dob.Year;
        if (age < 14)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Must be older than 14 years');", true);
        }

        if (dob >= DateTime.Now)
        {
            Response.Write("Date can not be greater than today's date.");
        }

    }
}