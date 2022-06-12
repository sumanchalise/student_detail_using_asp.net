using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_table
{
    public partial class StudentDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("server=SUMAN\\MSSQLSERVER01;" +
                                                    "integrated security=true;database=StudentDB");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tbstudent where id=@id");
           
            cmd.Parameters.AddWithValue("@id", ID.Text);
            
            cmd.Connection = conn;
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Data Deleted");
            }
            else
            {
                Response.Write("Data Not Deleted!!");
            }
        }
    }
}