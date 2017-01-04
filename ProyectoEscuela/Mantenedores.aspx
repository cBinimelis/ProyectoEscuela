<%@ Page Title="Mantenedores" Language="C#" MasterPageFile="~/MasterPages/MP_Admin.master" AutoEventWireup="true" CodeFile="Mantenedores.aspx.cs" Inherits="Mantenedores" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <%--TITULO DE PAGINA--%>
    <div class="row">
        <h1 class="center"><b>Mantenedores</b></h1>
    </div>

    <%--INICIO DE MANTENEDORES--%>

    <%--MANTENEDOR DE USUARIOS--%>
    <div class="row">
        <h3 class="center"><b>Mantenedor de Usuarios</b></h3>
        <div id="mant_usuarios" class="col s12" style="overflow: auto">
            <asp:GridView ID="grilla_usuarios" CssClass="responsive-table highlight bordered" runat="server" AutoGenerateColumns="False"
                DataSourceID="SQLUsuarios" DataKeyNames="id_usuario,id_genero,id_estado,id_tipo" RowStyle-Wrap="False" HeaderStyle-Wrap="False">
                <Columns>
                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ControlStyle-CssClass="waves-effect waves-light black btn" EditText="<i class='material-icons'>create</i>"
                        CancelText="<i class='material-icons'>block</i>" UpdateText="<i class='material-icons'>done_all</i>" />
                    <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" ReadOnly="True" SortExpression="id_usuario" Visible="False" />
                    <asp:BoundField DataField="RUN" HeaderText="RUN" SortExpression="RUN" />
                    <asp:BoundField DataField="Primer_Nombre" HeaderText="Primer Nombre" SortExpression="Primer_Nombre" />
                    <asp:BoundField DataField="Segundo_Nombre" HeaderText="Segundo Nombre" SortExpression="Segundo_Nombre" />
                    <asp:BoundField DataField="Apellido_paterno" HeaderText="Apellido Paterno" SortExpression="Apellido_paterno" />
                    <asp:BoundField DataField="Apellido_materno" HeaderText="Apellido Materno" SortExpression="Apellido_materno" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" SortExpression="Contraseña" />
                    <asp:BoundField DataField="Dirección" HeaderText="Dirección" SortExpression="Dirección" />
                    <asp:BoundField DataField="Nacimiento" HeaderText="Nacimiento" SortExpression="Nacimiento" Visible="false" />
                    <asp:BoundField DataField="id_genero" HeaderText="id_genero" ReadOnly="True" SortExpression="id_genero" Visible="False" />
                    <asp:TemplateField HeaderText="Genero" SortExpression="Genero">
                        <EditItemTemplate>
                            <asp:DropDownList ID="drop_genero" runat="server" DataSourceID="SQL_Genero" DataTextField="Descripcion" DataValueField="id_genero"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_genero" runat="server" Text='<%# Bind("Genero")%>'>'</asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="id_tipo" HeaderText="id_tipo" ReadOnly="True" SortExpression="id_tipo" Visible="False" />
                    <asp:TemplateField HeaderText="Tipo" SortExpression="Tipo">
                        <EditItemTemplate>
                            <asp:DropDownList ID="drop_tipo" runat="server" DataSourceID="SQL_Tipo" DataTextField="descripcion_tipo" DataValueField="id_tipo"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_tipo" runat="server" Text='<%# Bind("Tipo")%>'>'</asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="id_estado" HeaderText="id_estado" ReadOnly="True" SortExpression="id_estado" Visible="False" />
                    <asp:TemplateField HeaderText="Estado" SortExpression="Estado">
                        <EditItemTemplate>
                            <asp:DropDownList ID="drop_estado" runat="server" DataSourceID="SQL_Estado" DataTextField="descripcion_estado" DataValueField="id_estado"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_Estado" runat="server" Text='<%# Bind("Estado")%>'>'</asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ControlStyle-CssClass="waves-effect waves-light black btn" DeleteText="<i class='material-icons'>delete_forever</i>" />
                </Columns>
                <PagerSettings FirstPageText="Primera Página" LastPageText="Última Página" Mode="NumericFirstLast" />
            </asp:GridView>
        </div>
    </div>
    <br />

    <%--REGISTRO DE NUEVO USUARIO--%>
    <div class="row center">
        <input id="Button1" type="button" class="waves-effect waves-light black btn" value="Agregar Usuario" onclick="Mostrar('usuario')" ondblclick="Ocultar('usuario')" />
    </div>
    <div class="row" id="nuevo_usuario" style="display: none">
        <div class="container">
            <h5 class="center"><b>Registrar Usuario</b></h5>
            <div class="card-panel blue-grey darken-4 white-text">
                <div class="row">
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i_text" runat="server">fingerprint</i>
                        <label>Ingresa tu RUT</label>
                        <asp:TextBox ID="txt_run" runat="server" TextMode="Number" MaxLength="9"></asp:TextBox>
                    </div>
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i1" runat="server">account_box</i>
                        <label for="txt_PrimNombre">Ingresa tu Primer Nombre</label>
                        <asp:TextBox ID="txt_PrimNombre" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i2" runat="server">account_box</i>
                        <label>Ingresa tu Segundo Nombre</label>
                        <asp:TextBox ID="txt_SegNombre" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i3" runat="server">account_circle</i>
                        <label>Ingresa tu Primer Apellido</label>
                        <asp:TextBox ID="txt_PrimApellido" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i4" runat="server">account_circle</i>
                        <label>Ingresa tu Segundo Apellido</label>
                        <asp:TextBox ID="txt_SegApellido" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i5" runat="server">mail_outline</i>
                        <label>Ingresa tu Correo</label>
                        <asp:TextBox ID="txt_Correo" runat="server" TextMode="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i6" runat="server">account_box</i>
                        <label>Ingresa tu Contraseña</label>
                        <asp:TextBox ID="txt_contrasenia" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i7" runat="server">account_box</i>
                        <label>Ingresa tu Direccion</label>
                        <asp:TextBox ID="txt_Direccion" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i8" runat="server">cake</i>
                        <label for="txt_FNacimiento">Ingresa tu Fecha de Nacimiento</label>
                        <input id="txt_FNacimiento" type="date" class="datepicker" runat="server" />
                    </div>
                    <div class="input-field col s12 l6">
                        <i class="material-icons prefix" id="i9" runat="server">wc</i>
                        <label runat="server">Ingresa tu Genero</label>
                        <asp:DropDownList  ID="dd_genero" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <h6>Selecciona tu foto de perfil</h6>
                        <br />
                        <div class="file-field input-field">
                            <div class="waves-effect waves-light blue-grey darken-4 btn">
                                <span>Examinar:</span>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
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
                            <img class="materialboxed" id="imagen_vprevia" src="https://goo.gl/D0nHjK" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="center">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <Triggers>
                                <asp:PostBackTrigger ControlID="btn_registrar" />
                            </Triggers>
                            <ContentTemplate>
                                <asp:Button ID="btn_registrar" runat="server" Text="Registrar Usuario" CssClass="waves-effect waves-light black btn" OnClick="btn_registrar_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="divider">
        <br />
    </div>
    <%--MANTENEDOR DE ALUMNOS--%>
    <div class="row">
        <h3 class="center"><b>Mantenedor de Alumnos</b></h3>
        <div class="col s12">
            <asp:GridView ID="grilla_alumnos" CssClass="responsive-table highlight bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SQLAlumnos">
                <Columns>
                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ControlStyle-CssClass="waves-effect waves-light black btn" EditText="<i class='material-icons'>create</i>"
                        CancelText="<i class='material-icons'>block</i>" UpdateText="<i class='material-icons'>done_all</i>" />
                    <asp:BoundField DataField="id_Alumno" HeaderText="id_Alumno" SortExpression="id_Alumno" Visible="False" />
                    <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" SortExpression="id_usuario" Visible="True" />
                    <asp:BoundField DataField="Nombre_Completo" HeaderText="Nombre Completo" SortExpression="Nombre_Completo" ReadOnly="True" />
                    <asp:BoundField DataField="Run" HeaderText="Run" SortExpression="Run" />
                    <asp:BoundField DataField="id_curso" HeaderText="id_curso" SortExpression="id_curso" Visible="False" />
                    <asp:TemplateField HeaderText="Curso" SortExpression="Curso">
                        <EditItemTemplate>
                            <asp:DropDownList ID="drop_curso" runat="server" DataSourceID="SQL_Curso" DataTextField="descripcion_curso" DataValueField="id_curso"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl" runat="server" Text='<%#Bind("Curso") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="id_tipoAlumno" HeaderText="id_tipoAlumno" SortExpression="id_tipoAlumno" Visible="False" />
                    <asp:TemplateField HeaderText="Tipo de Alumno" SortExpression="Tipo_de_Alumno" >
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SQL_TipoAlumno" DataTextField="descripcion_tipoAlumno" DataValueField="id_tipoAlumno"></asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbta" runat="server" Text='<%#Bind("Tipo_de_Alumno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Perfil_de_Alumno" HeaderText="Perfil de Alumno" SortExpression="Perfil_de_Alumno" />
                    <asp:BoundField DataField="Fecha_de_Ingreso" HeaderText="Fecha de Ingreso" ReadOnly="True" SortExpression="Fecha_de_Ingreso" />
                    <asp:BoundField DataField="Fecha_de_Egreso" HeaderText="Fecha de Egreso" ReadOnly="True" SortExpression="Fecha_de_Egreso" />
                    <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ControlStyle-CssClass="waves-effect waves-light black btn" DeleteText="<i class='material-icons'>delete_forever</i>" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <br />

    <%--ASIGNAR USUARIOS--%>
    <div class="row center">
        <input id="Button2" type="button" class="waves-effect waves-light black btn" value="Agregar Usuario" onclick="Mostrar('alumno')" ondblclick="Ocultar('alumno')" />
    </div>
    <div class="row" id="nuevo_alumno" style="display:none">
        <div class="container">
            <h5 class="center"><b>Registrar Usuario</b></h5>
            <div class="card-panel blue-grey darken-4 white-text">
            </div>
        </div>
    </div>



    




    <asp:SqlDataSource ID="SQL_TipoAlumno" runat="server" ConnectionString="<%$ ConnectionStrings:BD_EducacionString %>" SelectCommand="SELECT * FROM [Tipo_Alumno]"></asp:SqlDataSource>




    <%--SQL DATA SOURCES--%>
    <asp:SqlDataSource ID="SQLUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:BD_EducacionString %>" SelectCommand="SELECT * FROM [v_usuario] WHERE id_Estado != 3"
        UpdateCommand="UPDATE Usuarios SET Primer_Nombre = @Primer_Nombre, Segundo_Nombre = @Segundo_Nombre, Apellido_paterno = @Apellido_paterno, Apellido_materno = @Apellido_materno, Correo = @Correo, Password = @Contraseña, Direccion = @Dirección, id_genero = @id_genero, id_Tipo=@id_tipo, id_Estado=@id_estado  WHERE id_usuario = @id_usuario" DeleteCommand="UPDATE Usuarios SET id_Estado = '3' WHERE id_usuario = @id_usuario">
        <DeleteParameters>
            <asp:Parameter Name="id_usuario" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_usuario" />
            <asp:Parameter Name="Primer_Nombre" />
            <asp:Parameter Name="Segundo_Nombre" />
            <asp:Parameter Name="Apellido_paterno" />
            <asp:Parameter Name="Apellido_materno" />
            <asp:Parameter Name="Correo" />
            <asp:Parameter Name="Contrasenia" />
            <asp:Parameter Name="Dirección" />
            <asp:Parameter Name="id_genero" />
            <asp:Parameter Name="id_estado" />
            <asp:Parameter Name="id_tipo" />
            <asp:Parameter Name="Contraseña" />
            <asp:Parameter Name="id_usuario" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SQLAlumnos" runat="server" ConnectionString="<%$ ConnectionStrings:BD_EducacionString %>" SelectCommand="SELECT * FROM [vAlumnos]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_Tipo" runat="server" ConnectionString="<%$ ConnectionStrings:BD_EducacionString %>" SelectCommand="SELECT * FROM [Tipo]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_Estado" runat="server" ConnectionString="<%$ ConnectionStrings:BD_EducacionString %>" SelectCommand="SELECT * FROM [Estado]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_Genero" runat="server" ConnectionString="<%$ ConnectionStrings:BD_EducacionString %>" SelectCommand="SELECT * FROM [Genero]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SQL_Curso" runat="server" ConnectionString="<%$ ConnectionStrings:BD_EducacionString %>" SelectCommand="SELECT * FROM [Cursos]"></asp:SqlDataSource>
</asp:Content>
