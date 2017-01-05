<%@ Page Title="Comunicados" Language="C#" MasterPageFile="~/MasterPages/MP_Profesor.master" AutoEventWireup="true" CodeFile="Comunicados.aspx.cs" Inherits="Comunicados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2 class="center"><b>Comunicados</b></h2>
    <div class="section white-text">
        <div class="row">
            <div class="col s12 l6">
                <div class="card-panel amber darken-4">
                    <h3 class="center">Crea un comunicado</h3>
                    <div class="row">
                        <div class="input-field">
                            <i class="material-icons prefix">title</i>
                            <asp:TextBox ID="txt_titulo" runat="server"></asp:TextBox>
                            <label class="white-text"><b>Título</b></label>
                        </div>
                    </div>
                    <div class="row ">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">mode_edit</i>
                            <asp:TextBox ID="txt_contenido" runat="server"></asp:TextBox>
                            <label class="white-text">Contenido</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s6">
                            <label runat="server" class="white-text">Importancia</label>
                            <div class="input-field">
                                <asp:DropDownList ID="dd_importancia" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col s6">
                            <label class="white-text">Fecha</label>
                            <div class="input-field">
                                <input runat="server" type="date" id="fecha" class="datepicker" />
                                <label for="nombre" class="white-text">Seleccione fecha del evento.</label>
                            </div>
                        </div>
                    </div>
                    <div class="row center">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Enviar" runat="server" CssClass="waves-effect waves-light amber btn" Text="Crear Tema" OnClick="Enviar_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
            <div class="col s12 m6 black-text">
                <ul class="collection with-header">
                    <li class="collection-header">
                        <h4>Datos de los comunicados</h4>
                    </li>
                    <li class="collection-item"><b>Comunicados totales: </b>
                        <asp:Label ID="lbl_comunicadosTot" runat="server" Text="Label" CssClass="right">2</asp:Label></li>
                    <li class="collection-item"><b>Comentarios totales: </b>
                        <asp:Label ID="lbl_comentariosTot" runat="server" Text="Label" CssClass="right">1</asp:Label></li>
                    <li class="collection-item"><b>Apoderados participantes: </b>
                        <asp:Label ID="lbl_apoderadosPar" runat="server" Text="Label" CssClass="right">7</asp:Label></li>
                    <li class="collection-item"><b>Alumnos Participantes: </b>
                        <asp:Label ID="lbl_alumnosPar" runat="server" Text="Label" CssClass="right">3</asp:Label></li>
                </ul>
            </div>
        </div>
    </div>


    <h2 class="center">Publicaciones</h2>

    <div class="container" runat="server" id="contenido"></div>

    <div class="container">
        <ul class="collapsible popout" data-collapsible="expandable">
            <li>
                <div class="amber darken-4 collapsible-header white-text"><i class="material-icons">filter_drama</i>Consulta sobre clases</div>
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
                                    <asp:Button ID="Button2" runat="server" CssClass="waves-effect waves-light amber btn" Text="Comentar" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>

