<%@ page title="Home" language="C#" masterpagefile="MP_Admin.master" autoeventwireup="true" codefile="InicioAdmin.aspx.cs" inherits="InicioAdmin" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  </asp:Content>
  <asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="Server">
    <h2 class="center grey-text"><b>Bienvenido Administrador</b></h2>
    <div class="container">
      <div class="row">

        <%--FOTO Y RESUMEN DEL ADMINISTRADOR--%>
          <div class="col s12 m6">
            <div class="card">
              <div class="card-image">
                <img src="https://goo.gl/aXUkE7">
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

          <%--NOTIFICACIONES PARA EL ADMINISTRADOR--%>
            <div class="col s12 m6">
              <ul class="collapsible" data-collapsible="expandable">
                <li>
                  <div class="blue-grey darken-4 collapsible-header white-text"><i class="material-icons">filter_drama</i>Nuevos Usuarios</div>
                  <div class="collapsible-body">
                    <ul class="collection">
                      <li class="collection-item">Frodo ha sido registrado/a como <b>Alumno</b></li>
                      <li class="collection-item">Gandalf ha sido registrado/a como <b>Profesor</b></li>
                      <li class="collection-item">Bilbo ha sido registrado/a como <b>Apoderado</b></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <div class="blue-grey darken-4 collapsible-header white-text"><i class="material-icons">place</i>Foros y Comunicados</div>
                  <div class="collapsible-body">
                    <ul class="collection">
                      <li class="collection-item">Gollum ha iniciado el tema <b>Acerca del Precioso</b> en el Foro de Alumnos</li>
                      <li class="collection-item">Legolas ha creado el comunicado <b>Taller de cuidado Capilar</b></li>
                      <li class="collection-item">Tu foto <b>Uruks</b> ha recibido 10 <b>Me encorazona</b></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <div class="blue-grey darken-4 collapsible-header white-text"><i class="material-icons">whatshot</i>Eventos</div>
                  <div class="collapsible-body">
                    <ul class="collection">
                      <li class="collection-item">Harry Potter ha creado el evento <b>Clases de Quiditch</b> para el 12/12/2016</li>
                      <li class="collection-item">Legolas ha creado el comunicado <b>Taller de cuidado Capilar</b></li>
                      <li class="collection-item">Tu foto <b>Uruks</b> ha recibido 10 <b>Me encorazona</b></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
      </div>
    </div>
  </asp:content>