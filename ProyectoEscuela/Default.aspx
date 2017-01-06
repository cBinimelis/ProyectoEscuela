<%@ Page Title="Escuela Lorem Ipsum" Language="C#" MasterPageFile="MasterPages/MP_Central.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Portada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="section">
        <div class="container">
            <h2 class="center">Escuela Lorem Ipsum</h2>
        </div>
        <div class="parallax-container">
            <div class="parallax">
                <img src="images/salon.jpg" />
            </div>
        </div>
    </div>
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col s12 l4">
                    <div class="card-panel center">
                        <i class="large material-icons blue-text">alarm</i>
                        <p class="center"><b>Optimiza tu tiempo</b></p>
                        <p class="light center">No te preocupes por tener que perder tiempo en realizar consultas, puedes hacer todas las que quieras desde la comodidad de tu PC o Smartphone.</p>
                    </div>
                </div>
                <div class="col s12 l4">
                    <div class="card-panel center">
                        <i class="large material-icons blue-text">mail_outline</i>
                        <p class="center"><b>Informes al instante</b></p>
                        <p class="light center">No es extrictamente necesario asistir a las reuniones, siempre recibirás en tu correo una copia del informe de notas y comportamiento de tu alumno.</p>
                    </div>
                </div>
                <div class="col s12 l4">
                    <div class="card-panel center">
                        <i class="large material-icons blue-text">backup</i>
                        <p class="center"><b>Información siempre disponible</b></p>
                        <p class="light center">Podrás acceder a toda la información que quieras sin incomodidades, además de opinar en los comunicados de curso para organizar eventos.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="center">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button runat="server" Text="Además..." OnClick="Unnamed1_Click" CssClass="large blue btn"></asp:Button>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

