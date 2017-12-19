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
                int userIdBTN = Convert.ToInt32(userIDbox.Text);
                string userNameBTN = userNamebox.Text;
                string emailBTN = emailbox.Text;
                string fakePasswordBTN = fakePasswordbox.Text;
                bool newsletterSubBTN = Convert.ToBoolean(newsletterSubbox.Text);

                info infoSaveBTN = new info(userIdBTN, userNameBTN, emailBTN, fakePasswordBTN, newsletterSubBTN);
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
        public int userID { get; set; }
        public string userName { get; set; }
        public string email { get; set; }
        public string fakePassword { get; set; }
        public bool newsletterSub { get; set; }

        public info(int userID, string userName, string email, string fakePassword, bool newsletterSub)
        {

        }
    }

}