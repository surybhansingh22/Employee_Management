using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Employee_Management
{
    public partial class New_Employee1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Employee_menegment_system;Integrated Security=True");
        SqlCommand cmd; 
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (!IsPostBack)
            {
                myautoid();
            }            
        }


        protected void myautoid()
        {
            string s = "select * from  EmpDetails order by EmpId desc";
            da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
                TextBox1.Text = "1";
            else
                TextBox1.Text = (Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1).ToString();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
                string s = "Insert into EmpDetails values (" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Employee Registered');", true);
                myautoid();
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            
        }
    }
}