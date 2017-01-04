<%@ Page Title="Asignaturas" Language="C#" MasterPageFile="~/MasterPages/MP_Alumno.master" AutoEventWireup="true" CodeFile="Asignaturas.aspx.cs" Inherits="Asignaturas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 class="center"><b>Asignaturas</b></h1>
    <div class="container">
        <ul class="collapsible" data-collapsible="accordion">
            <li>
                <div class="red darken-4 collapsible-header white-text"><i class="material-icons">announcement</i>Lenguaje y comunicación</div>
                <div class="collapsible-body">
                    <div class="card horizontal">
                        <div class="card-image">
                            <img src="images/lenguaje.jpg" />
                        </div>
                        <div class="card-stacked">
                            <div class="card-content">
                                <p>I am a very simple card. I am good at containing small bits of information.</p>
                            </div>
                            <div class="card-action">
                                <a href="https://goo.gl/McFYNR">¿Qué es Lenguaje?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="red darken-4 collapsible-header white-text"><i class="material-icons">place</i>Matemáticas</div>
                <div class="collapsible-body">
                    <div class="card horizontal">
                        <div class="card-image">
                            <img src="images/matematicas.jpg" />
                        </div>
                        <div class="card-stacked">
                            <div class="card-content">
                                <p>I am a very simple card. I am good at containing small bits of information.</p>
                            </div>
                            <div class="card-action">
                                <a href="https://goo.gl/ZRs8PV">¿Qué es Matemáticas?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="red darken-4 collapsible-header white-text"><i class="material-icons">whatshot</i>Third</div>
                <div class="collapsible-body">
                    <div class="card horizontal">
                        <div class="card-image">
                            <img src="images/lenguaje.jpg" />
                        </div>
                        <div class="card-stacked">
                            <div class="card-content">
                                <p>I am a very simple card. I am good at containing small bits of information.</p>
                            </div>
                            <div class="card-action">
                                <a href="https://goo.gl/McFYNR">¿Qué es Lenguaje?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</asp:Content>

