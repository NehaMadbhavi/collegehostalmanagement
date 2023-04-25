using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class viewapplication : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query, rollno;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        rollno = GridView1.SelectedRow.Cells[0].Text.ToString();
        data();
        query = "update signupdet set status='approved' where rollno='" + rollno + "' and status='not approved'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
    }
}