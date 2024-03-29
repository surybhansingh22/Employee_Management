using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Employee_Management
{
    public partial class ChngPass1 : System.Web.UI.Page
    {
        string Pass , Logid;
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Employee_menegment_system;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
           con.Open();
           Pass = Session["Password"].ToString();
           Logid = Session["Loginid"].ToString();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string op = TextBox1.Text;
            if (op == Pass)
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    string s = "update Login1 set Pass='" + TextBox3.Text + "' where LoginId='"+Logid+"'";
                    cmd = new SqlCommand(s, con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Password Updated Successfully')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('New Password And Confirm Password Does Not Matched ')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Old Password is not matched')</script>");
            }
        }
    }
}