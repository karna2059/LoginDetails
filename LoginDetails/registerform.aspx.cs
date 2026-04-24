using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LoginDetails
{
    public partial class registerform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void btnbutton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=RegisterForm;Integrated Security=true;");
            conn.Open();
            SqlCommand cmd = new SqlCommand(
            "INSERT INTO register1 VALUES('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtconformpassword.Text + "','" + txtmobilenumber.Text + "')",
            conn);


            cmd.ExecuteNonQuery();
            Response.Write("register successful");
            conn.Close();
        }
    }
}