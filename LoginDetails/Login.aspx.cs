using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LoginDetails
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
             SqlConnection con=new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
            con.Open();
            SqlCommand cmd=new SqlCommand("insert into Login1 values('"+txtusername.Text+"','"+txtpassword.Text+"')",con);

            cmd.ExecuteNonQuery();
            Response.Write("Login details submitted successful");
            con.Close();

        }
    }
}