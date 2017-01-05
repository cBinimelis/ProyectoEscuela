<%@ Page Title="Evaluaciones" Language="C#" MasterPageFile="~/MasterPages/MP_Alumno.master" AutoEventWireup="true" CodeFile="Evaluaciones.aspx.cs" Inherits="Evaluaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="section">
        <h1 class="center"><b>Evaluaciones</b></h1>
        <div class="container">
            <div class="row">
                <div class="col s12">
                    <ul class="tabs">
                        <li class="tab col s4"><a class="active" href="#test1">Notas</a></li>
                        <li class="tab col s4"><a href="#test2">Proximas Evaluaciones</a></li>
                        <li class="tab col s4"><a href="#test3">Disabled Tab</a></li>
                    </ul>
                </div>
                <div id="test1" class="col s12">
                    <table class="highlight responsive-table">
                        <thead>
                            <tr>
                                <th data-field="Asignatura">Asignatura</th>
                                <th data-field="id">Fecha</th>
                                <th data-field="Nota">Nota</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>Yeison</td>
                                <td>11/03</td>
                                <td>2.5</td>
                            </tr>
                            <tr>
                                <td>Biron</td>
                                <td>11/03</td>
                                <td>3.6</td>
                            </tr>
                            <tr>
                                <td>Jonathan</td>
                                <td>11/03</td>
                                <td>7.0</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="test2" class="col s12">Sin proximas evaluaciones</div>
                <div id="test3" class="col s12">Test 3</div>
            </div>
        </div>
    </div>
    <div class="parallax-container">
        <div class="parallax">
            <img src="images/evaluacion.jpg" />
        </div>
    </div>
</asp:Content>

