using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Mantenedores : System.Web.UI.Page
{
    DataClassesDataContext data;
    sql sql = new sql();
    private int contador_fp = 1;
    private int contador_u = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            llenaDropGenero();
            llenaDropUsuarioNA();
        }
    }


    protected void btn_registrar_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_run.Text.Equals("") || txt_PrimNombre.Text.Equals("") || txt_SegNombre.Text.Equals("") ||
                txt_PrimApellido.Text.Equals("") || txt_SegApellido.Text.Equals("") || txt_Correo.Text.Equals("") ||
                txt_contrasenia.Text.Equals("") || txt_Direccion.Text.Equals(""))
            {
                Mensajes("¡Alto ahí!", "No puedes dejar campos vacíos", "warning");
            }
            else
            {
                SqlDataReader usuarios = sql.consulta("SELECT * FROM Usuarios");
                while (usuarios.Read())
                {
                    contador_u++;
                }
                SqlDataReader fotos = sql.consulta("SELECT * FROM Foto_Perfil");
                while (fotos.Read())
                {
                    contador_fp++;
                }
                SubeImg(contador_fp);
                data = new DataClassesDataContext();
                Usuarios u = new Usuarios();
                u.id_usuario = contador_u;
                u.Run = txt_run.Text;
                u.Primer_Nombre = txt_PrimNombre.Text;
                u.Segundo_Nombre = txt_SegNombre.Text;
                u.Apellido_paterno = txt_PrimApellido.Text;
                u.Apellido_materno = txt_SegApellido.Text;
                u.Correo = txt_Correo.Text;
                u.Password = txt_contrasenia.Text;
                u.Direccion = txt_Direccion.Text;
                u.Fecha_Nacimiento = Convert.ToDateTime(txt_FNacimiento.Value);
                u.id_genero = Convert.ToInt32(dd_genero.SelectedValue);
                u.id_fotoPerfil = Convert.ToInt32(contador_fp.ToString());
                u.id_Tipo = 5;
                u.id_Estado = 1;
                data.Usuarios.InsertOnSubmit(u);
                data.SubmitChanges();
                Mensajes("Felicidades", "Usuario agregado correctamente", "success");
            }
        }
        catch (Exception ex)
        {
            Mensajes("Error al ingresar usuario", ex.Message, "error");
        }
    }
    protected void llenaDropGenero()
    {
        data = new DataClassesDataContext();
        dd_genero.DataSource = data.Genero;
        dd_genero.DataTextField = "Descripcion";
        dd_genero.DataValueField = "id_genero";
        dd_genero.DataBind();
    }

    protected void llenaDropUsuarioNA()
    {
        String query = "SELEC * FROM Usuarios WHERE id_Tipo = 4";
        sql.llenacombo(dd_usuario, query, "PrimNombre", "id_Usuario");
    }

    protected void SubeImg(int id_foto)
    {
        if (IsPostBack)
        {
            Boolean fileOK = false;
            String path = Server.MapPath("~/images/");
            if (subir_imagen.HasFiles)
            {
                String fileExtension = System.IO.Path.GetExtension(subir_imagen.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }
            else
            {
                Mensajes("Se pudrió todo", "Tira false la basura", "error");
            }

            if (fileOK)
            {
                try
                {
                    data = new DataClassesDataContext();
                    subir_imagen.PostedFile.SaveAs(path + subir_imagen.FileName);
                    Foto_Perfil fp = new Foto_Perfil();
                    fp.id_fotoPerfil = id_foto;
                    fp.Nombre = subir_imagen.FileName;
                    fp.Extension = System.IO.Path.GetExtension(subir_imagen.FileName).ToLower();
                    fp.Fecha_Creacion = System.DateTime.Now;
                    fp.id_estadoFoto = 1;
                    data.Foto_Perfil.InsertOnSubmit(fp);
                    data.SubmitChanges();
                }
                catch (Exception ex)
                {
                    Mensajes("Archivo no pudo ser subido", ex.Message, "Error");
                }
            }
            else
            {
                Mensajes("Ups", "No se aceptan archivos de este tipo", "warning");
            }
        }
    }

    protected void Mensajes(String tit, String msj, String tipo)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup",
            "swal({" +
            "title: '" + tit + "'," +
            "text: '" + msj + "'," +
            "type: '" + tipo + "'," +
            "});",
            true);
    }

    //protected void grilla_usuarios_RowDeleting(object sender, GridViewDeleteEventArgs e)
    //{
    //    int index = e.RowIndex;
    //    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Eliminar()", true);
    //    grilla_usuarios.DeleteRow(index);
    //}
}