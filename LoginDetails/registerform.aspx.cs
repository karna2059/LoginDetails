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
    public partial class registerform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=RegisterForm;Integrated Security=true");
                SqlDataAdapter da = new SqlDataAdapter("select * from  registerion", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                grdview.DataSource = ds;
                grdview.DataBind();
            }
           
        }

      

        protected void btnbutton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=RegisterForm;Integrated Security=true;");
            conn.Open();

            string gender = rdbmale.Checked ? "Male" : "Female";

            string dob = ddlyear.SelectedValue + "-" + ddlmonth.SelectedValue + "-" + ddlday.SelectedValue;



            string courses = "";
            foreach (ListItem item in chkcourses.Items)
            {
                if (item.Selected)
                {
                    courses += item.Text + ",";
                }
            }


            SqlCommand cmd = new SqlCommand(
                         "INSERT INTO registerion VALUES('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtconformpassword.Text + "','" + txtmobilenumber.Text + "','" + courses + "','" + dob + "','" + gender + "')",
                          conn);

            cmd.ExecuteNonQuery();
            Response.Write("register successful");
            conn.Close();
            BindGridData();
        }

        protected void BindGridData()
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=RegisterForm;Integrated Security=true");
            SqlDataAdapter da = new SqlDataAdapter("select * from  registerion", con);
            DataSet ds=new DataSet();
            da.Fill(ds);
            grdview.DataSource = ds;
            grdview.DataBind();
        }

        protected void grdview_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdview.PageIndex = e.NewPageIndex;
            BindGridData();
        }

        protected void grdview_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdview.EditIndex = e.NewEditIndex;
            BindGridData() ;
        }

        protected void grdview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdview.EditIndex = -1;
            BindGridData();
        }

        protected void grdview_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=RegisterForm;Integrated Security=true;");
            con.Open();
            GridViewRow grd = grdview.Rows[e.RowIndex];
            int uid = Convert.ToInt32(grdview.DataKeys[e.RowIndex].Value);
            string firstname = ((TextBox)grd.FindControl("txtusername")).Text;
            string lastname = ((TextBox)grd.FindControl("txtlastname")).Text;
            string email = ((TextBox)grd.FindControl("txtemail")).Text;
            string password = ((TextBox)grd.FindControl("txtpassword")).Text;
            string conformpassword = ((TextBox)grd.FindControl("txtconfrompassword")).Text;
            string mobilenumber = ((TextBox)grd.FindControl("txtmobilenumber")).Text;
            string gender = ((TextBox)grd.FindControl("txtgender")).Text;
            string courses = ((TextBox)grd.FindControl("txtcourses")).Text;
            string dob = ((TextBox)grd.FindControl("txtdob")).Text;
            SqlCommand cmd = new SqlCommand("update registerion set firstname=@firstname," + "lastname=@lastname," +"email=@email,"+"password=@password,"+"conformpassword=@conformpassword,"+"mobilenumber=@mobilenumber,"+"gender=@gender,"+"courses=@courses,"+"dob=@dob where uid=@uid", con);
            cmd.Parameters.AddWithValue("firstname", firstname);
            cmd.Parameters.AddWithValue("lastname", lastname);
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("password", password);
            cmd.Parameters.AddWithValue("conformpassword", conformpassword);
            cmd.Parameters.AddWithValue("mobilenumber", mobilenumber);
            cmd.Parameters.AddWithValue("gender", gender);
            cmd.Parameters.AddWithValue("courses", courses);
            cmd.Parameters.AddWithValue("dob", dob);
            cmd.Parameters.AddWithValue("uid", uid);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGridData();
        }

        protected void grdview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=RegisterForm;Integrated Security=true;");
            con.Open();

            int uid = Convert.ToInt32(grdview.DataKeys[e.RowIndex].Value);

            SqlCommand cmd = new SqlCommand("DELETE FROM registerion WHERE uid = @uid", con);
            cmd.Parameters.AddWithValue("@uid", uid);

            cmd.ExecuteNonQuery();
            con.Close();

            BindGridData();
        }
    }
}