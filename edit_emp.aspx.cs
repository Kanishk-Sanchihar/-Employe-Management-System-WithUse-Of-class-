using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class edit_emp : System.Web.UI.Page
{
    ram r = new ram();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string s = "select * from add_emp where eid=" +TextBox1.Text;
        

        DataSet ds = new DataSet();

        ds = r.getdata(s);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<Script>alert('Record Not Found')</script>");
            TextBox1.Text = "";
            TextBox1.Focus();
        }
        else
        {
            TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][2].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s;
        s = "update emp set ename='" + TextBox2.Text + "', edept='" + TextBox3.Text + "' esal=" + TextBox4.Text + " where eid=" + TextBox1.Text;
        r.setdata(s);
        Response.Write("<Script>alert('Record Updated Successfully')</script>");
        
    }
}