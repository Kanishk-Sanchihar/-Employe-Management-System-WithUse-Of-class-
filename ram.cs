using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class ram

{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
	public ram()
	{
        con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=emp;Integrated Security=True");
        con.Open();
	}
    public void setdata(String s)
    {
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();

    }
    public DataSet getdata(String s)
    {
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        return (ds);
    }
}