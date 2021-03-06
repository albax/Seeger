﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="Seeger.Plugins.RichText.Widgets.RichText.Editor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <sig:ScriptReference runat="server" Path="/Scripts/jquery/jquery.min.js" />
    <sig:ScriptReference runat="server" Path="/Scripts/jquery/jquery-ui.min.js" />
    <sig:ScriptReference runat="server" Path="/Scripts/sig.common.js" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="mgnt" style="padding:0">
        <table class="formtable">
        <tr>
            <td>
                <sig:TinyMCE runat="server" ID="Content" Height="400" UseStaticID="true" />
            </td>
        </tr>
        <tr>
            <td>
                <a href="javascript:Editor.submit();" class="button primary"><%= Localize("Common.OK") %></a>
                <a href="javascript:editorContext.cancel();" class="button secondary"><%= Localize("Common.Cancel") %></a>
            </td>
        </tr>
    </table>
    </div>
    
    <script type="text/javascript">
        var contentId = '<%= ContentId %>';
        var domId_Content = '<%= Content.ClientID %>';
    </script>
    <script type="text/javascript" src="Scripts/editor.js"></script>

    </form>
</body>
</html>
