using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace student_table
{
    public partial class StudentUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("server=SUMAN\\MSSQLSERVER01;" +
                                                    "integrated security=true;database=StudentDB");
            conn.Open();
            SqlCommand cmd = new SqlCommand("update tbstudent set Name=@Name,Password=@Password," +
                                                    "Email=@Email,DOB=@DOB,Age=@Age where id=@id");
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.Parameters.AddWithValue("@id", ID.Text);
            cmd.Parameters.AddWithValue("@Password", Password.Text);
            cmd.Parameters.AddWithValue("@Email", Email.Text);
            cmd.Parameters.AddWithValue("@DOB", DOB.Text);
            cmd.Parameters.AddWithValue("@Age", Age.Text);
            cmd.Connection = conn;
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Data Updated");
            }
            else
            {
                Response.Write("Data Not Updated!!");
            }
        }
    }
}