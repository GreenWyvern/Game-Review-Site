using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Game_Review
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void saveButt_Click(object sender, EventArgs e)
        {
            try
            {
                int reviewIDBTN = Convert.ToInt32(reviewIDbox.Text);
                int userIDBTN = Convert.ToInt32(userIDbox.Text);
                int gameIDBTN = Convert.ToInt32(gameIDbox.Text);
                string reviewContentBTN = reviewContentbox.Text;
                string reviewDateBTN = reviewDatebox.Text;

                info infoSaveBTN = new info(reviewIDBTN, userIDBTN, gameIDBTN, reviewContentBTN, reviewDateBTN);
                ConnectionClass.AddInfo(infoSaveBTN);
                saveStatus.Text = "Uploaded Successfully!";
            }
            catch
            {
                saveStatus.Text = "Upload Failed!";
            }
        }
    }

    public class info
    {
        public int reviewID { get; set; }
        public int userID { get; set; }
        public int gameID { get; set; }
        public string reviewContent { get; set; }
        public string reviewDate { get; set; }

        public info(int reviewID, int userID, int gameID, string reviewContent, string reviewDate)
        {

        }
    }

}