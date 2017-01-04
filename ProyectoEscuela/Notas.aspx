<%@ Page Title="Notas" Language="C#" MasterPageFile="~/MasterPages/MP_Profesor.master" AutoEventWireup="true" CodeFile="Notas.aspx.cs" Inherits="Notas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h2 class="center"><b>Notas y Evaluaciones</b></h2>
    <div class="container">
        <div class="row">
            <div class="col s12 l6">
                <div class="card-panel">
                    <h4 class="center">Crear Evaluacion</h4>
                    <div class="input-field">
                        <asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox>
                        <label for="nombre">Titulo</label>
                    </div>
                    <div class="row">
                        <div class="col s6">
                            <label runat="server">Curso</label>
                            <div class="input-field">
                                <asp:DropDownList ID="dd_curso" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="col s6">
                            <label runat="server">Asignatura</label>
                            <div class="input-field">
                                <asp:DropDownList ID="dd_asignatura" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="input-field">
                        <input runat="server" type="date" id="fecha" class="datepicker" />
                        <label for="nombre">Fecha</label>
                    </div>
                    <div class="center">
                        <asp:UpdatePanel ID="CPan" runat="server">
                            <ContentTemplate>
                                <%--<asp:Button ID="btn_crear" runat="server" Text="Button" OnClick="btn_crear_Click" />--%>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

            <div class="col s12 m6">
                <ul class="collapsible" data-collapsible="expandable">
                    <li>
                        <div class="amber darken-4 collapsible-header white-text"><i class="material-icons">filter_drama</i>Evaluaciones Lenguaje</div>
                        <div class="collapsible-body">
                            <ul class="collection">
                                <li class="collection-item">Literatura clasica <b>21-09-2016</b></li>
                                <li class="collection-item">Comprensión lectora <b>23-10-2016</b></li>
                                <li class="collection-item">Dramaturgia <b>25-11-2016</b></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="amber darken-4 collapsible-header white-text"><i class="material-icons">place</i>Evaluaciones Matemática</div>
                        <div class="collapsible-body">
                            <ul class="collection">
                                <li class="collection-item">Aritmética <b>15-09-2016</b></li>
                                <li class="collection-item">Ecuaciones <b>19-10-2016</b></li>
                                <li class="collection-item">Logaritmos <b>20-11-2016</b></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="amber darken-4 collapsible-header white-text"><i class="material-icons">whatshot</i>Evaluaciones Ciencia</div>
                        <div class="collapsible-body">
                            <ul class="collection">
                                <li class="collection-item">Reino Animal <b>12-09-2016</b></li>
                                <li class="collection-item">Enfermedades Congénitas <b>15-10-2016</b></li>
                                <li class="collection-item">Cuerpo humano <b>16-11-2016</b></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

