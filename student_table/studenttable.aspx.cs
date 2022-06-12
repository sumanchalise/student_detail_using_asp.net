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
    public partial class studenttable : System.Web.UI.Page
    {
        private object datatable;

        public object Sqlconnection { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("server=SUMAN\\MSSQLSERVER01;" +
                                                    "integrated security=true;database=StudentDB");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into tbstudent(Name,Password,Email,DOB,Age) " +
                "values(@Name,@Password,@Email,@DOB,@Age)");
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.Parameters.AddWithValue("@Password",Password.Text);
            cmd.Parameters.AddWithValue("@Email",Email.Text);
            cmd.Parameters.AddWithValue("@DOB",DOB.Text);
            cmd.Parameters.AddWithValue("@Age",Age.Text);
            cmd.Connection = conn;
            int a=cmd.ExecuteNonQuery();
            if(a>0)
            {
                Response.Write("Data Saved");
            }
            else
            {
                Response.Write("Data Not Saved!!");
            }
        }
    }
}