﻿<%@ Page Title="{ User.MyProfile }" Language="C#" MasterPageFile="~/Admin/Shared/Management.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Seeger.Web.UI.Admin.My.Profile" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainHolder" runat="server">

<table class="formtable">
    <tr>
        <th><%= Localize("User.UserName") %></th>
        <td>
            <asp:Literal runat="server" ID="UserName" />
        </td>
    </tr>
    <tr>
        <th><%= Localize("User.Nick") %></th>
        <td>
            <asp:TextBox runat="server" MaxLength="50" ID="Nick" />
            <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="Nick" runat="server" />
        </td>
    </tr>
    <tr>
        <th><%= Localize("User.Email") %></th>
        <td>
            <asp:TextBox runat="server" MaxLength="250" ID="Email" />
            <asp:RequiredFieldValidator runat="server" ID="EmailRequiredValidator" ControlToValidate="Email" ErrorMessage="*" />
        </td>
    </tr>
    <tr>
        <th><%= Localize("User.Password") %></th>
        <td>
            <asp:TextBox runat="server" AutoCompleteType="None" MaxLength="20" ID="Password" TextMode="Password" />
        </td>
    </tr>
    <tr>
        <th><%= Localize("User.PasswordConfirm") %></th>
        <td>
            <asp:TextBox runat="server" AutoCompleteType="None" MaxLength="20" ID="PasswordConfirm" TextMode="Password" />
            <asp:CompareValidator runat="server" ID="PasswordConfirmValidator" ControlToValidate="Password"
                 ControlToCompare="PasswordConfirm" Operator="Equal" ErrorMessage="<%$ Resources: User.TwoPasswordNotSame %>" />
        </td>
    </tr>
    <tr>
        <th><%= Localize("User.Skin") %></th>
        <td>
            <asp:DropDownList runat="server" ID="SkinList">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <th><%= Localize("User.Language") %></th>
        <td>
            <asp:DropDownList runat="server" ID="LanguageList" DataTextField="DisplayName" DataValueField="Name">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <th></th>
        <td>
            <asp:LinkButton runat="server" ID="SubmitButton" CssClass="button primary" Text="<%$ Resources: Common.Save %>" OnClick="SubmitButton_Click" />

            <a href="javascript:history.back();" class="button secondary"><%= Localize("Common.Back") %></a>
        </td>
    </tr>
</table>

</asp:Content>
