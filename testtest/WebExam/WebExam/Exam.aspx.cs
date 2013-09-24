using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExam
{
    public partial class Exam : System.Web.UI.Page// App_Code.BasePage
    {
        protected string strdate;
        protected string strLongDate;
        protected string strLongDateNextDay;
        App_Code.BasePage bp = new App_Code.BasePage();
        protected void Page_Load(object sender, EventArgs e)
        {
         
            strdate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            strLongDate = DateTime.Now.ToLongDateString();
            strLongDateNextDay = DateTime.Now.AddDays(1).ToLongDateString();

            //if (bp.userName == string.Empty || bp.userName == null)
            //{
            //    Response.Redirect("~/default.aspx");
            //}
            if (PreviousPage != null)
            {
                TextBox SourceTextBox = (TextBox)PreviousPage.FindControl("txtUser");
               // Label1.Text = SourceTextBox.Text;
            }
        }
    }
}