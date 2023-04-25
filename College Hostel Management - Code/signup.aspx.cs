using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class signup : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query,food;
    int mem,fill;
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
        data();
        query = "select nomem,filled from roomdet where roomtype='" + droproomtype.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            mem = Convert.ToInt32(rd[0].ToString());
            fill = Convert.ToInt32(rd[1].ToString());
        }
        rd.Close();
        con.Close();
        if (mem < 1)
        {
            MessageBox.Show("Room Insufficient");
        }
        else
        {
            //subtracting members
            mem = mem - 1;
            fill = fill + 1;
            data();
            query = "update roomdet set nomem='" + mem.ToString() + "',filled='" + fill.ToString() + "' where roomtype='" + droproomtype.SelectedItem + "'";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();

            if (RadioButton1.Checked == true)
            {
                food = "veg";
            }
            else
            {
                food = "nonveg";
            }
            data();
            query = "insert into signupdet(rollno,name,dept,course,year,st1,st2,city,state,pin,phone,rtype,food,status)values('" + txtrollno.Text + "','" + txtname.Text + "','" + dropdept.SelectedItem + "','" + dropcourse.SelectedItem + "','" + txtyear.Text + "','" + txtst1.Text + "','" + txtst2.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtpin.Text + "','" + txtphone.Text + "','" + droproomtype.SelectedItem + "','" + food + "','not approved')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            MessageBox.Show("Student Applied Successfully");
            Response.Redirect("signup.aspx");
        }
    }
    protected void txtrollno_TextChanged(object sender, EventArgs e)
    {
        data();
        query = "select rollno from signupdet where rollno='" + txtrollno.Text + "'";
        cmd = new SqlCommand(query, con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            MessageBox.Show("Roll No Exists");
            Button1.Enabled = false;
        }
        else
        {
            Button1.Enabled = true;
        }
        rd.Close();
        con.Close();
    }
}