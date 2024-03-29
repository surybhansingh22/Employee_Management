using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Employee_Management
{
    public partial class Search1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Employee_menegment_system;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
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
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Not Found');", true);

                }
                else
                {
                    Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                    Label2.Text = ds.Tables[0].Rows[0][1].ToString();
                    Label3.Text = ds.Tables[0].Rows[0][2].ToString();
                    Label4.Text = ds.Tables[0].Rows[0][3].ToString();
                }
                TextBox1.Text = "";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";
        }
    }
}