﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Reflection;

namespace Seeger.Web.UI
{
    public static class PageExtensions
    {
        public static void IncludeCss(this Page page, string cssFilePath)
        {
            var control = new LiteralControl
            {
                Text = "<link type=\"text/css\" rel=\"stylesheet\" href=\"" + cssFilePath + "\" />"
            };
            page.Header.Controls.Add(control);
        }

        public static Control GetControl(this Page page, string id)
        {
            if (page == null)
            {
                throw new ArgumentNullException("page");
            }
            if (String.IsNullOrEmpty(id))
            {
                throw new ArgumentException("'id' is required.");
            }

            // In web form, the controls created in markup will be compiled into protected fields of the page's base page
            FieldInfo controlField = page.GetType().GetField(id, BindingFlags.Instance | BindingFlags.NonPublic);
            if (controlField == null)
            {
                return null;
            }

            return controlField.GetValue(page) as Control;
        }

        public static IList<Control> GetControls(this Page page, Type controlType, bool findInMasterPage = false)
        {
            var ctrls = new List<Control>();

            object container = page;

            do
            {
                foreach (var field in container.GetType().GetFields(BindingFlags.Instance | BindingFlags.NonPublic))
                {
                    if (controlType.IsAssignableFrom(field.FieldType))
                    {
                        ctrls.Add((Control)field.GetValue(container));
                    }
                }

                object master = null;

                if (findInMasterPage)
                {
                    if (container is Page)
                    {
                        master = ((Page)container).Master;
                    }
                    else if (container is MasterPage)
                    {
                        master = ((MasterPage)container).Master;
                    }
                }

                container = master;

            } while (container != null);

            return ctrls;
        }

        public static T GetControl<T>(this Page page, string id)
            where T : Control
        {
            return GetControl(page, id) as T;
        }
    }
}
