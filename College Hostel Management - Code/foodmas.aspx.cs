using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class foodmas : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,type;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            type = "BREAKFAST";
        }
        else if (RadioButton2.Checked == true)
        {
            type = "LUNCH";
        }
        else if (RadioButton3.Checked == true)
        {
            type = "DINNER";
        }
        else if (RadioButton4.Checked == true)
        {
            type = "SNACKS";
        }
        data();
        query = "insert into foodmas(foodtype,food)values('" + type + "','" + TextBox1.Text + "')";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
        GridView4.DataBind();
    }
}