<%@ Page Title="Sub Foro" Language="C#" MasterPageFile="~/MasterPages/MP_Alumno.master" AutoEventWireup="true" CodeFile="Sub_Foro.aspx.cs" Inherits="Sub_Foro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h1 class="center"><b>Sub-Foro de Alumnos</b></h1>
    <div class="container">
        <div class="section">
            <div class="row center">
                <h3>¡Crea tu propio tema!</h3>
                <div class="row">
                    <div class="input-field col s12 m6">
                        <i class="material-icons prefix">title</i>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <label><b>Título</b></label>
                    </div>

                    <div class="input-field col s12 m6">
                        <select>
                            <option value="" disabled selected>Tipo de publicacion</option>
                            <option value="1">Publica</option>
                            <option value="2">Anonima</option>
                        </select>
                        <label>Materialize Select</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <i class="material-icons prefix">mode_edit</i>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <label>Contenido</label>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Enviar" runat="server" CssClass="waves-effect waves-light red btn" Text="Crear Tema" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
    <div class="parallax-container">
        <div class="parallax">
            <img src="images/foro.jpg" />
        </div>
    </div>
    <h2 class="center">Publicaciones</h2>
    <div class="container">
        <ul class="collapsible popout" data-collapsible="expandable">
            <li>
                <div class="red darken-4 collapsible-header white-text"><i class="material-icons">filter_drama</i>Consulta sobre clases</div>
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
                                    <asp:Button ID="Button2" runat="server" CssClass="waves-effect waves-light red btn" Text="Comentar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="red darken-4 collapsible-header white-text"><i class="material-icons">place</i>Cambio de Profesor</div>
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
                                    <asp:Button ID="Button1" runat="server" CssClass="waves-effect waves-light red btn" Text="Comentar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="red darken-4 collapsible-header white-text"><i class="material-icons">whatshot</i>¿Se suspenderán las clases?</div>
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
                                    <asp:Button ID="Button3" runat="server" CssClass="waves-effect waves-light red btn" Text="Comentar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>

