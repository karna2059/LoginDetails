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
    public partial class griddata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=Luffy\\SQLEXPRESS;Initial Catalog=LatestDb;Integrated Security=true;");
            SqlDataAdapter da = new SqlDataAdapter("select * from Login1", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grddata.DataSource = ds;
            grddata.DataBind();

        }




    }
}