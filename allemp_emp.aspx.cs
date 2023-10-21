using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class allemp_emp : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "select*from add_emp";

        ram r = new ram();

        DataSet ds = new DataSet();


        ds=r.getdata(s);
        

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
}