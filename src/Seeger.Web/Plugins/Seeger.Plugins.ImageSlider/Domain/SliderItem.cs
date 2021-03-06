﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Seeger.Plugins.ImageSlider.Domain
{
    public class SliderItem
    {
        public virtual int Id { get; set; }

        public virtual string Caption { get; set; }

        public virtual string Description { get; set; }

        public virtual string ImageUrl { get; set; }

        public virtual string ImageThumbUrl
        {
            get
            {
                if (String.IsNullOrEmpty(ImageUrl))
                {
                    return null;
                }

                return GetThumbImageUrl(ImageUrl);
            }
        }

        public virtual string NavigateUrl { get; set; }

        public virtual int DisplayOrder { get; set; }

        public static string GetThumbImageUrl(string imageUrl)
        {
            var parent = VirtualPathUtility.GetDirectory(imageUrl);
            return VirtualPathUtility.Combine(parent, "min-" + VirtualPathUtility.GetFileName(imageUrl));
        }
    }
}