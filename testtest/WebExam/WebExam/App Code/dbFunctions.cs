using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Entity;
using WebExam;
using System.Reflection;

namespace WebExam.App_Code
{
    public class dbFunctions
    {

        AtlumerWebExamEntities context = new AtlumerWebExamEntities();

        public bool isValidUser(string userName)
        {

            var allUser = from a in context.tblUserLogins
                          where a.userID == userName
                          select a.userID
                           ;

            if (allUser.Count() > 0)
            {
                return true;
            }

            return false;

        }

        public void Insert()
        {

        }

        public void Update()
        {

        }

        public void Delete()
        {

        }

    }
}