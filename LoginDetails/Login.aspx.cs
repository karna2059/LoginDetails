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
            if (!IsPostBack)
            {
                BindGridData();
                SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
                SqlDataAdapter da = new SqlDataAdapter("select * from Login1", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                grdview.DataSource = ds;
                grdview.DataBind();
            }


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
            grdview.DataSource = ds;
            grdview.DataBind();
        }
        //grdview

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

       

       

        

       

        protected void grdview_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            grdview.EditIndex = e.NewEditIndex;
            BindGridData();
        }

        protected void grdview_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            grdview.EditIndex = -1;
            BindGridData();
        }

        protected void grdview_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
            con.Open();
            GridViewRow grd = grdview.Rows[e.RowIndex];
            int uid = Convert.ToInt32(grdview.DataKeys[e.RowIndex].Value);
            string username = ((TextBox)grd.FindControl("txtusername")).Text;
            string password = ((TextBox)grd.FindControl("txtpassword")).Text;

            SqlCommand cmd = new SqlCommand("update Login1 set username=@username," + "password=@password where uid=@uid", con);
            cmd.Parameters.AddWithValue("username", username);
            cmd.Parameters.AddWithValue("password", password);
            cmd.Parameters.AddWithValue("uid", uid);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
        }

        protected void grdview_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdview.PageIndex = e.NewPageIndex;
            BindGridData();
        }

        protected void grdview_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            grdview.PageIndex = e.NewPageIndex;
            BindGridData();
        }
    }
}