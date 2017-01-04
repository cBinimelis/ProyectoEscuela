<%@ Page Title="Eventos" Language="C#" MasterPageFile="MP_Admin.master" AutoEventWireup="true" CodeFile="Eventos_Admin.aspx.cs" Inherits="Eventos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FileUpload runat="server" onchange="showimagepreview(this)"></asp:FileUpload>
<img src="" alt="" style="width:300px;height:150px;" />
</asp:Content>

