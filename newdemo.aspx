﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newdemo.aspx.cs" Inherits="newdemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Save and Download Files from file system</title>
<style type="text/css">
.modalBackground
{
background-color: Gray;
filter: alpha(opacity=80);
opacity: 0.8;
z-index: 10000;
}

.GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif; color: #303933;}
Table.Gridview{border:solid 1px #df5015;}
.Gridview th{color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;padding:0.5em 0.5em 0.5em 0.5em;text-align:center}
.Gridview td{border-bottom-color:#f0f2da;border-right-color:#f0f2da;padding:0.5em 0.5em 0.5em 0.5em;}
.Gridview tr{color: Black; background-color: White; text-align:left}
:link,:visited { color: #DF4F13; text-decoration:none }

</style>
</head>
<body>
<form id="form1" runat="server">
<div>
<asp:FileUpload ID="fileUpload1" runat="server" /><br />
<asp:Button ID="btnUpload" runat="server" Text="Upload" onclick="btnUpload_Click" />
</div>
<div>
<asp:GridView ID="gvDetails" CssClass="Gridview" runat="server" AutoGenerateColumns="false" DataKeyNames="FilePath">
<HeaderStyle BackColor="#df5015" />
<Columns>
<asp:BoundField DataField="Id" HeaderText="Id" />
<asp:BoundField DataField="FileName" HeaderText="FileName" />
<asp:TemplateField HeaderText="FilePath">
<ItemTemplate>
<asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>
 <asp:Label ID="LblID" runat="server" Text ='<%# Eval("Id") %>' Visible=false ></asp:Label>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
    <asp:Button ID="btnlogout" runat="server" onclick="btnlogout_Click" 
        Text="Log Out" />
</div>
</form>
</body>
</html>
