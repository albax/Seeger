﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using Seeger.Globalization;
using System.Globalization;

namespace Seeger.Web.UI.Admin.Controls
{
    public partial class UpdateCheck : System.Web.UI.UserControl
    {
        protected string CurrentVersion
        {
            get { return Assembly.GetExecutingAssembly().GetName().Version.ToString(); }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string Localize(string key)
        {
            return ResourcesFolder.Global.GetValue(key, CultureInfo.CurrentCulture);
        }
    }
}