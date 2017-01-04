<%@ Page Title="Editar Galeria" Language="C#" MasterPageFile="MP_Admin.master" AutoEventWireup="true" CodeFile="Galeria_Admin.aspx.cs" Inherits="Galeria_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div class="center">
        <h2><b>Manejo de Galería</b></h2>
    </div>
    <div class="container">
        <div class="row">
            <div class="col l6">
                <div class="card">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img id="imagen_vprevia" class="activator" src="https://goo.gl/D0nHjK">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">Click en la imagen<i class="material-icons right">more_vert</i></span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">Subir Imagen<i class="material-icons right">close</i></span>
                        <div class="container">
                            <div class="input-field">
                                <i class="material-icons prefix" runat="server">title</i>
                                <label runat="server">Dale un título a la imagen</label>
                                <asp:TextBox runat="server" ID="txt_titulo"></asp:TextBox>
                            </div>
                            <div class="input-field">
                                <i class="material-icons prefix" runat="server">create</i>
                                <label runat="server">Y una pequeña reseña</label>
                                <asp:TextBox runat="server" ID="txt_resenia"></asp:TextBox>
                            </div>
                        </div>
                        <div class="file-field input-field">
                            <div class="waves-effect waves-light blue-grey darken-4 btn">
                                <span>Examinar:</span>
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <asp:FileUpload ID="subir_imagen" runat="server" onchange="VPrevia(this)" />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate" type="text">
                            </div>
                        </div>
                        <div class="center">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="btn_imagen" />
                                </Triggers>
                                <ContentTemplate>
                                    <asp:Button ID="btn_imagen" runat="server" Text="Subir Fotografía" CssClass="waves-effect waves-light blue-grey darken-4 btn" OnClick="btn_imagen_Click" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col l6">
                <div class="card blue-grey darken-4">
                    <div class="card-content white-text">
                        <span class="card-title"><i class="tiny material-icons prefix">help_outline</i> Instrucciones</span>
                        <div id="infoBasica">
                            <p>
                                Debes subir un archivo a traves del examinador de archivos,luego agregar una descripción
                                    y voilà
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div runat="server" class="row" id="contenido"></div>


        <div class="section">
            <div class="row">
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
                <div class="col s6 l3">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="https://goo.gl/D0nHjK">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                            <p><a href="#">This is a link</a></p>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--*
    *
    *   PARALAX----------------------------------------------------------------
    *
    --%>*

            <div class="parallax-container">
                <div class="parallax">
                    <img src="images/galeria.jpg" />
                </div>
            </div>

    <%--*
    *
    *   PARALAX----------------------------------------------------------------
    *
    --%>*

                <div class="container">
                    <div class="section">
                        <div class="row">
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col s6 l3">
                                <div class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="https://goo.gl/D0nHjK">
                                    </div>
                                    <div class="card-content">
                                        <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                                        <p><a href="#">This is a link</a></p>
                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                                        <p>
                                            Here is some more information about this product that is only revealed once clicked
                                            on.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

</asp:Content>
