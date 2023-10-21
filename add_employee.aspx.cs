using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class add_employee : System.Web.UI.Page
{
    ram r = new ram();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        s = "select eid from add_emp order by eid desc";
        DataSet ds = new DataSet();
        ds = r.getdata(s);
        if (ds.Tables[0].Rows.Count == 0)
            TextBox1.Text = "1";
        else
            TextBox1.Text = Convert.ToString(Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ram r = new ram();
        string s = "insert into add_emp values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ")";

        r.setdata(s);

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox1.Focus();
        Label1.Text = "Record Inserted";
        Response.Redirect("add_employee.aspx");

    }
}