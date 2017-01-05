<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPages/MP_Alumno.master" AutoEventWireup="true" CodeFile="InicioAlumno.aspx.cs" Inherits="InicioAlumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col s12 l6">
                <div class="card">
                    <div class="card-image">
                        <img src="https://goo.gl/1XzWKJ">
                        <span class="card-title"><b>Alumno Porro</b></span>
                    </div>
                    <div class="card-content">
                        <p>
                            Aquí se supone que debería ir una especie de reseña del alumno, la cual escribirá el mismo
                  en un campo de unos 250 caracteres.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col s12 l6">
                <div class="card red darken-4">
                    <div class="card-content white-text">
                        <span class="card-title"><i class=" tiny material-icons prefix">info</i> Acerca de mi</span>
                        <div id="infoBasica">
                            <p><b>Nombres: </b>
                                <asp:Label ID="lbl_nombres" runat="server" Text=""></asp:Label></p>
                            <p><b>Apellido Paterno: </b>
                                <asp:Label ID="lbl_apellidoPaterno" runat="server" Text=""></asp:Label></p>
                            <p><b>Apellido Materno: </b>
                                <asp:Label ID="lbl_apellidoMaterno" runat="server" Text=""></asp:Label></p>
                            <p><b>RUT: </b>
                                <asp:Label ID="lbl_rut" runat="server" Text=""></asp:Label></p>
                            <p><b>Curso: </b>
                                <asp:Label ID="lbl_curso" runat="server" Text=""></asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--SEGUNDA FILA DE CONTENIDO--%>
        <div class="row">
            <div class="col s12 l4">
                <ul class="collapsible" data-collapsible="expandable">
                    <li>
                        <div class="collapsible-header"><i class="material-icons">edit</i>Evento Proximo</div>
                        <div class="collapsible-body">
                            <p>Lorem ipsum dolor sit amet.</p>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">place</i>Evento Proximo</div>
                        <div class="collapsible-body">
                            <p>Lorem ipsum dolor sit amet.</p>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">whatshot</i>Evento Proximo</div>
                        <div class="collapsible-body">
                            <p>Lorem ipsum dolor sit amet.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</asp:Content>
