<%@ Page Title="Comunicados" Language="C#" MasterPageFile="~/MasterPages/MP_Apoderado.master" AutoEventWireup="true" CodeFile="Comunicados_Apoderado.aspx.cs" Inherits="Comunicados_Apoderado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager runat="server"></asp:ScriptManager>
    <h2 class="center"><b>Comunicados</b></h2>
    <div class="container">
        <ul class="collapsible popout" data-collapsible="expandable">
            <li>
                <div class="lime darken-4 collapsible-header white-text active"><i class="material-icons">filter_drama</i>Consulta sobre clases</div>
                <div class="collapsible-body">
                    <div class="container">
                        <div class="row">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                        <div class="row center">
                            <div class="col s2">
                                <h6><b>Deja un comentario</b></h6>
                            </div>
                            <div class="input-field col s10">
                                <i class="material-icons prefix">edit   </i>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                <label>Soy un comentario</label>
                            </div>
                        </div>
                        <div class="col s1 row center">
                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="Button2" runat="server" CssClass="waves-effect waves-light lime btn" Text="Comentar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="lime darken-4 collapsible-header white-text"><i class="material-icons">place</i>Cambio de Profesor</div>
                <div class="collapsible-body">
                    <div class="container">
                        <div class="row">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                        <div class="row center">
                            <div class="col s2">
                                <h6><b>Deja un comentario</b></h6>
                            </div>
                            <div class="input-field col s9">
                                <i class="material-icons prefix">edit   </i>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                <label>Soy un comentario</label>
                            </div>
                        </div>
                        <div class="col s1 row center">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="Button1" runat="server" CssClass="waves-effect waves-light lime btn" Text="Comentar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="lime darken-4 collapsible-header white-text"><i class="material-icons">whatshot</i>¿Se suspenderán las clases?</div>
                <div class="collapsible-body">
                    <div class="container">
                        <div class="row">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                        <div class="row center">
                            <div class="col s2">
                                <h6><b>Deja un comentario</b></h6>
                            </div>
                            <div class="input-field col s9">
                                <i class="material-icons prefix">edit   </i>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                <label>Soy un comentario</label>
                            </div>
                        </div>
                        <div class="col s1 row center">
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="Button3" runat="server" CssClass="waves-effect waves-light lime btn" Text="Comentar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>

