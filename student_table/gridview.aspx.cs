using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_table
{
    public partial class gridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"server= SUMAN\MSSQLSERVER01; database=StudentDB;" +
                                            "integrated security=true");
            SqlCommand cmd = new SqlCommand("select * from tbstudent");
            cmd.Connection = conn;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            conn.Close();
            gvstudent.DataSource = dt;
            gvstudent.DataBind();

        }

        protected void gvstudent_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}