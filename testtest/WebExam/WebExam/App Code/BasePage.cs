using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebExam.App_Code
{
    public class BasePage : System.Web.UI.Page
    {
        private string _userName;

        public string userName
        {
            set { this._userName = value; }
            get { return this._userName; }
        }

        public bool validateAccount()
        { 
            if(this.userName == "Jake")
            {
                return true;
            }
            return false;
        }
    }
}