using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebExam.menu
{
    public partial class MainMenu : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected string UserLinks(string userName)
        {

            StringBuilder strLink = new StringBuilder();
            string[] guestLink={"Home;Default.aspx",
                                "About;About.aspx",
                                "Contact;Contact.aspx",
                                "Register;Register.aspx"};
           
            return strLink.ToString();
        }
    }
}