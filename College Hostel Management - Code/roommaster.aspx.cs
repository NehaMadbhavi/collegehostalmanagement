using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class roommaster : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
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
        query = "update roommas set ramt='" + txtamount.Text + "',noroom='" + txtnoroom.Text + "',nomem='" + txttotmem.Text + "' where roomtype='" + droproomtype.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        data();
        query = "update roomdet set ramt='" + txtamount.Text + "',noroom='" + txtnoroom.Text + "',nomem='" + txttotmem.Text + "' where roomtype='" + droproomtype.SelectedItem + "'";
        cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        MessageBox.Show("Room master updated");
        txtamount.Text = "";
        txtnoroom.Text = "";
        txttotmem.Text = "";
        GridView1.DataBind();

    }
    protected void txtnoroom_TextChanged(object sender, EventArgs e)
    {
        if (droproomtype.SelectedItem.Text == "SINGLE ROOM")
        {
            txttotmem.Text = (Convert.ToInt32(txtnoroom.Text) * 1).ToString();
        }
        else if (droproomtype.SelectedItem.Text == "TWIN SHARING ROOM")
        {
            txttotmem.Text = (Convert.ToInt32(txtnoroom.Text) * 2).ToString();
        }
        else if (droproomtype.SelectedItem.Text == "THREE SHARING ROOM")
        {
            txttotmem.Text = (Convert.ToInt32(txtnoroom.Text) * 3).ToString();
        }
        else if (droproomtype.SelectedItem.Text == "DOMETRY")
        {
            txttotmem.Text = (Convert.ToInt32(txtnoroom.Text) * 5).ToString();
        }
    }
}