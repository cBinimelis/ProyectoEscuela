<%@ Page Title="Home" Language="C#" MasterPageFile="MP_Apoderado.master" AutoEventWireup="true" CodeFile="InicioApoderado.aspx.cs" Inherits="InicioApoderado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="center"><b>Bienvenido Apoderado</b></h2>
    <div class="container">
        <div class="row">
            <div class="col s12 m6 black-text">
                <ul class="collection with-header">
                    <li class="collection-header">
                        <h4>Alumno</h4>
                    </li>
                    <li class="collection-item"><b>Nombre: </b><asp:Label ID="lbl_comunicadosTot" runat="server" Text="Label" CssClass="right">Pepe Gatica</asp:Label></li>
                    <li class="collection-item"><b>Curso: </b><asp:Label ID="lbl_comentariosTot" runat="server" Text="Label" CssClass="right">1-Z</asp:Label></li>
                    <li class="collection-item"><b>Promedio: </b><asp:Label ID="lbl_apoderadosPar" runat="server" Text="Label" CssClass="right">4.0</asp:Label></li>
                    <li class="collection-item"><b>Anotaciones : </b><asp:Label ID="lbl_alumnosPar" runat="server" Text="Label" CssClass="right">3</asp:Label></li>
                </ul>
            </div>
    
          <div class="col s12 m6">
            <div class="card">
              <div class="card-image">
                <img src="https://goo.gl/GO18KG">
                <span class="card-title">Card Title</span>
              </div>
              <div class="card-content">
                <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require
                  little markup to use effectively.</p>
              </div>
              <div class="card-action">
                <a href="#">This is a link</a>
              </div>
            </div>
          </div>
        </div>
        </div>
</asp:Content>

