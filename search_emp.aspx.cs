using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class search_emp : System.Web.UI.Page
{
    ram r = new ram();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s;
        s = "select * from add_emp where eid=" + TextBox1.Text;
        DataSet ds = new DataSet();

        ds = r.getdata(s);

        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>Alert('Employee Not Found')</script>");
            TextBox1.Text = "";
            TextBox1.Focus();
        }
        else
        {
            Label1.Text=ds.Tables[0].Rows[0][1].ToString();
            Label2.Text=ds.Tables[0].Rows[0][2].ToString();
            Label4.Text=ds.Tables[0].Rows[0][3].ToString();
        }

       
    }
}