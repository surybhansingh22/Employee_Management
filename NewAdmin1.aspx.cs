using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Management
{
    public partial class NewAdmin1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Employee_menegment_system;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string s = "insert into Login1 values('"+TextBox1.Text+"','"+TextBox3.Text+"','"+TextBox2.Text+"')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('New Admin Registerd')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }
    }
}