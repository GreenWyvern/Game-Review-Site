using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Game_Review
{
    public partial class Search1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    SqlDataSource SqlDataSource2 = new SqlDataSource();
            //    SqlDataSource2.ID = "SqlDataSource2";
            //    this.Page.Controls.Add(SqlDataSource2);
            //    SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ReviewsConnection"].ConnectionString;
            //    SqlDataSource2.SelectCommand = "SELECT gm.gameName AS 'Game', us.userName AS 'User', re.reviewContent AS 'Review', reviewDate 'Date Submitted' FROM Games gm, Users us, Reviews re WHERE re.userID = us.userID AND re.gameID = gm.gameID ORDER BY re.reviewDate DESC";
            //    GridView2.DataSource = SqlDataSource2;
            //    GridView2.DataBind();
            //}

        }

        protected void gameSearch_Click(object sender, EventArgs e)
        {
            
                SqlDataSource SqlDataSource2 = new SqlDataSource();
                SqlDataSource2.ID = "SqlDataSource2";
                this.Page.Controls.Add(SqlDataSource2);
                SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ReviewsConnection"].ConnectionString;
                SqlDataSource2.SelectCommand = string.Format("SELECT gm.gameName AS 'Game', us.userName AS 'User', re.reviewContent AS 'Review', reviewDate 'Date Submitted' FROM Games gm, Users us, Reviews re WHERE re.userID = us.userID AND re.gameID = gm.gameID AND gm.gameName = '{0}' ORDER BY re.reviewDate DESC", gameNamebox.Text);
                GridView2.DataSource = SqlDataSource2;
                GridView2.DataBind();
            
        }
        protected void userSearch_Click(object sender, EventArgs e)
        {

            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ID = "SqlDataSource2";
            this.Page.Controls.Add(SqlDataSource2);
            SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ReviewsConnection"].ConnectionString;
            SqlDataSource2.SelectCommand = string.Format("SELECT gm.gameName AS 'Game', us.userName AS 'User', re.reviewContent AS 'Review', reviewDate 'Date Submitted' FROM Games gm, Users us, Reviews re WHERE re.userID = us.userID AND re.gameID = gm.gameID AND us.userName = '{0}' ORDER BY re.reviewDate DESC", userNamebox.Text);
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();

        }
    }
}