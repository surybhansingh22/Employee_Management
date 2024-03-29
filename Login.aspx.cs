using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Reflection.Emit;

namespace Employee_Management
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Employee_menegment_system;Integrated Security=True");
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string s = "select * from Login1 where LoginId ='" + TextBox1.Text + "' and Pass = '" + TextBox2.Text + "'";
            da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid Username Or Password');", true);

            }
            else
            {
                Session["Name"] = ds.Tables[0].Rows[0][2].ToString();
                Session["Password"] = ds.Tables[0].Rows[0][1].ToString();
                Session["Loginid"] = ds.Tables[0].Rows[0][0].ToString();
                Response.Redirect("Home1.aspx");
                
            }
        }
    }
}