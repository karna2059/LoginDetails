using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

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
            BindGridData();
           
        }
        protected void BindGridData()
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
            SqlDataAdapter da = new SqlDataAdapter("select * from Login1", con);
            DataSet ds= new DataSet();
            da.Fill(ds);
            grddata.DataSource = ds;
            grddata.DataBind();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("update Login1 set password='"+txtpassword.Text+"'where username='"+txtusername.Text+"'", con);

            cmd.ExecuteNonQuery();
            Response.Write("Login details submitted successful");
            con.Close();
            BindGridData();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Login1 where username ='" + txtusername.Text + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("Login details submitted successful");
            con.Close();
            BindGridData();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
            SqlCommand cmd = new SqlCommand("select * from Login1 where username like'%"+txtsearch.Text+"%'",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds=new DataSet();
            da.Fill(ds);
            grddata.DataSource=ds;
            grddata.DataBind();
        }
    }
}