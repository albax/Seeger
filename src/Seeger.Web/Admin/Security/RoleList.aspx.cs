﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Seeger.Data;
using Seeger.Security;
using Seeger.Web.UI.Grid;
using System.Web.Services;
using System.Web.Script.Services;

namespace Seeger.Web.UI.Admin.Security
{
    public partial class RoleList : AjaxGridPageBase
    {
        public override bool VerifyAccess(User user)
        {
            return user.HasPermission(null, "RoleMgnt", "View");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod, ScriptMethod]
        public static void Delete(int id)
        {
            var session = Database.GetCurrentSession();
            var role = session.Get<Role>(id);
            session.Delete(role);
            session.Commit();
        }
    }
}