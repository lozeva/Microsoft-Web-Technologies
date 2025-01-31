using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace WebProject
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/Scripts/jquery-3.6.4.min.js", // Replace with your jQuery path
                DebugPath = "~/Scripts/jquery-3.6.4.js", // Replace with your debug jQuery path
                CdnPath = "https://code.jquery.com/jquery-3.6.4.min.js",
                CdnDebugPath = "https://code.jquery.com/jquery-3.6.4.js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "window.jQuery"
            });
        }
    }
}