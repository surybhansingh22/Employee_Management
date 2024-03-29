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
    public partial class Edit1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Employee_menegment_system;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {

            if (TextBox1.Text == string.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please Insert Employee ID');", true);

            }
            else
            {
                string s = "select * from EmpDetails where EmpId=" + TextBox1.Text + "";
                da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Not Found');", true);
                    Response.Write("<Script>alert('Employee Record Not Found')</script>");
                }
                else
                {
                    TextBox2.Text = ds.Tables[0].Rows[0][0].ToString();
                    TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0][3].ToString();
                }
                TextBox1.Text = "";
                TextBox2.Enabled = false;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == string.Empty || TextBox3.Text == string.Empty || TextBox4.Text == string.Empty || TextBox5.Text == string.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please Insert all Details');", true);

            }
            else
            {
                string s = "update EmpDetails set EmpName='" + TextBox3.Text + "' , EmpSalary ='"+TextBox4.Text+ "' , EmpDept = '" + TextBox5.Text +"' where EmpId=" + TextBox2.Text + "";
                cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Data Updated');", true);
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == string.Empty || TextBox3.Text == string.Empty || TextBox4.Text == string.Empty || TextBox5.Text == string.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please Insert all Details');", true);

            }
            else
            {
                string s = "delete from EmpDetails where EmpId=" + TextBox2.Text + "";
                cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Data Deleted');", true);
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
            }
        }
    }
}