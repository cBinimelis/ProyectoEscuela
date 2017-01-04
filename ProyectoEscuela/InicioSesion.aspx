<%@ Page Title="Inicio de Sesión" Language="C#" MasterPageFile="~/MasterPages/MP_Central.master" AutoEventWireup="true" CodeFile="InicioSesion.aspx.cs" Inherits="InicioSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager runat="server">
    </asp:ScriptManager>

    <div class="container white-text">
        <div class="row center">
            <div class="col s12">
                <h2><b class="grey-text">Inicio de Sesión</b></h2>
                <ul class="collapsible" data-collapsible="accordion">

                    <%--INICIO DE SESION--%>
                    <li>
                        <div class="waves-effect waves-light blue darken-2 collapsible-header active"><i class="material-icons">face</i><b>Ingresa tus datos</b></div>
                        <div class="collapsible-body">
                            <div class="container grey-text">
                                <div class="input-field">
                                    <i class="material-icons prefix" id="i_text" runat="server">account_box</i>
                                    <label>Ingresa tu RUT</label>
                                    <asp:TextBox runat="server" ID="txt_usuario" MaxLength="9" OnTextChanged="txt_usuario_TextChanged" onkeydown="Reemplazar(this)"></asp:TextBox>
                                </div>
                                <div class="input-field">
                                    <i class="material-icons prefix" runat="server">extension</i>
                                    <label>Escribe tu contraseña</label>
                                    <asp:TextBox runat="server" ID="txt_pass" TextMode="Password"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:Button ID="btn_alumno" runat="server" Text="Ingresar" CssClass="waves-effect waves-light blue btn" OnClick="btn_alumno_Click" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
