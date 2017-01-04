<%@ Page Title="Alumnos" Language="C#" MasterPageFile="MP_Profesor.master" AutoEventWireup="true" CodeFile="Integrantes.aspx.cs" Inherits="Integrantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="center"><b>Alumnos</b></h1>
    <div class="container">
        <div class="row">
            <div class="card-panel amber darken-4 white-text col s12 l6">
                <div class="container">
                    <h4 class="center"><i class="material-icons prefix">info</i> Informacion</h4>
                    <p>En esta página se muestran los alumnos de los distintos cursos en los cuales usted participa</p>
                    <p>También puede ver información básica tanto de los cursos como asignaturas y también eventos que tenga bajo su cargo</p>
                </div>
                <br />
            </div>
            <div class="col s12 l6">
                <ul class="collection with-header">
                    <li class="collection-header">
                        <h4>Datos</h4>
                    </li>
                    <li class="collection-item"><b>Alumnos a su cargo: </b></li>
                    <li class="collection-item"><b>Cursos a su cargo: </b></li>
                    <li class="collection-item"><b>Asignaturas a su cargo: </b></li>
                    <li class="collection-item"><b>Eventos a su cargo: </b></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <ul class="collapsible" data-collapsible="expandable">
                <li>
                    <div class="waves-effect waves-light collapsible-header amber darken-4 white-text"><i class="material-icons">account_box</i>NOMBRE APELLIDO APELLIDO</div>
                    <div class="collapsible-body">
                        <ul class="collection">
                            <li class="collection-item"><b>RUN: </b></li>
                            <li class="collection-item"><b>Nombres: </b></li>
                            <li class="collection-item"><b>Apellidos: </b></li>
                            <li class="collection-item"><b>Curso: </b></li>
                            <li class="collection-item"><b>Edad: </b></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="waves-effect waves-light collapsible-header amber darken-4 white-text"><i class="material-icons">account_box</i>NOMBRE APELLIDO APELLIDO</div>
                    <div class="collapsible-body">
                        <ul class="collection">
                            <li class="collection-item"><b>RUN: </b></li>
                            <li class="collection-item"><b>Nombres: </b></li>
                            <li class="collection-item"><b>Apellidos: </b></li>
                            <li class="collection-item"><b>Curso: </b></li>
                            <li class="collection-item"><b>Edad: </b></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="waves-effect waves-light collapsible-header amber darken-4 white-text"><i class="material-icons">account_box</i>NOMBRE APELLIDO APELLIDO</div>
                    <div class="collapsible-body">
                        <ul class="collection">
                            <li class="collection-item"><b>RUN: </b></li>
                            <li class="collection-item"><b>Nombres: </b></li>
                            <li class="collection-item"><b>Apellidos: </b></li>
                            <li class="collection-item"><b>Curso: </b></li>
                            <li class="collection-item"><b>Edad: </b></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="waves-effect waves-light collapsible-header amber darken-4 white-text"><i class="material-icons">account_box</i>NOMBRE APELLIDO APELLIDO</div>
                    <div class="collapsible-body">
                        <ul class="collection">
                            <li class="collection-item"><b>RUN: </b></li>
                            <li class="collection-item"><b>Nombres: </b></li>
                            <li class="collection-item"><b>Apellidos: </b></li>
                            <li class="collection-item"><b>Curso: </b></li>
                            <li class="collection-item"><b>Edad: </b></li>
                        </ul>
                    </div>
                </li>

            </ul>
        </div>
    </div>
</asp:Content>

