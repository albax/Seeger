﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

using Seeger.Data;
using Seeger.Globalization;

namespace Seeger.Web.UI
{
    public partial class Login : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Title = Localize("Login.PageTitle");
        }

        protected string Localize(string key)
        {
            return ResourcesFolder.Global.GetValue(key, CultureInfo.CurrentUICulture);
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                AuthenticationService.Login(Name.Text.Trim(), Password.Text, Request.UserHostAddress, false);
                Response.Redirect("~/Admin/Default.aspx");
            }
            catch (Exception ex)
            {
                Message.Visible = true;
                Message.Text = ex.Message;
            }
        }
    }
}