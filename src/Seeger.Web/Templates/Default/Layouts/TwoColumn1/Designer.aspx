﻿<%@ Page Title="" Language="C#" MasterPageFile="../Front.master" AutoEventWireup="true"
    CodeBehind="Designer.aspx.cs" Inherits="Seeger.Web.UI.Templates.Default.Layouts.TwoColumn1.Designer" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainHodler">
    <div class="bannerzone1">
        <sig:ZoneControl runat="server" ID="BannerZone1" ZoneName="BannerZone1" />
    </div>
    <div class="two-col">
        <div class="column sidezone1">
            <sig:ZoneControl runat="server" ID="SideZone1" ZoneName="SideZone1" />
        </div>
        <div class="column mainzone">
            <sig:ZoneControl runat="server" ID="MainZone" ZoneName="MainZone" />
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="bannerzone2">
        <sig:ZoneControl runat="server" ID="BannerZone2" ZoneName="BannerZone2" />
    </div>
</asp:Content>
