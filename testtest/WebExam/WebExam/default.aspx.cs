using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebExam.App_Code;

namespace WebExam
{
    public partial class _default : App_Code.BasePage //System.Web.UI.Page
    {
        dbFunctions dbFunc = new dbFunctions();

        //App_Code.BasePage bp = new App_Code.BasePage();

        protected void Page_Load(object sender, EventArgs e)
        {
           userName = string.Empty;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            userName = this.txtUser.Text;

            if (dbFunc.isValidUser(userName))
            {
                Server.Transfer("~/Exam.aspx");    // Response.Redirect("~/Exam.aspx");
            }

            ErrMSG.Attributes.Remove("class");
            ErrMSG.Attributes.Add("class", "alert alert-error");
            txtMSG.Text = "Invalid UserName or Password";
        }


    }
}