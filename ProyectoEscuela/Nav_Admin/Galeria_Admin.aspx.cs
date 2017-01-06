using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Galeria_Admin : System.Web.UI.Page
{
    DataClassesDataContext data = new DataClassesDataContext();
    sql sql = new sql();
    protected void Page_Load(object sender, EventArgs e)
    {
        llenarGaleria();
    }
    protected void btn_imagen_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_titulo.Text.Equals("") || txt_titulo.Text.Equals(""))
            {
                Mensajes("¡No tan rápido!", "No puedes dejar campos vacíos en el formulario", "warning");
            }
            else
            {
                if (IsPostBack)
                {
                    Boolean fileOK = false;
                    String path = Server.MapPath("~/images/Galeria/");
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
                        Mensajes("¡Alto ahí!", "Debes seleccionar una imagen", "warning");
                    }

                    if (fileOK)
                    {
                        try
                        {
                            data = new DataClassesDataContext();
                            Foto_Galeria fg = new Foto_Galeria();
                            Foto_Perfil fp = new Foto_Perfil();
                            fg.Titulo = txt_titulo.Text;
                            fg.Descripcion = txt_resenia.Text;
                            fg.id_Profesor = 1;
                            fg.Direccion_Foto = subir_imagen.FileName;
                            fg.Extension = System.IO.Path.GetExtension(subir_imagen.FileName).ToLower();
                            fg.Fecha_Publicacion = System.DateTime.Now;
                            data.Foto_Galeria.InsertOnSubmit(fg);
                            data.SubmitChanges();
                            subir_imagen.PostedFile.SaveAs(path + subir_imagen.FileName);
                            llenarGaleria();
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
        }
        catch
        {

        }
    }

    protected void llenarGaleria()
    {
        int contador = 0;
        int paralax = 0;
        string relleno = "<div class='container'>";
        SqlDataReader lector = sql.consulta("SELECT * FROM Foto_Galeria ORDER BY id_Foto DESC");
        while (lector.Read())
        {
            contador++;
            if (contador % 6 == 0)
            {
                paralax++;
                relleno += "</div>";
                relleno += "<div class='parallax-container'>";
                relleno += "<div class='parallax'>";
                relleno += "<img src='../images/galeria" + paralax + ".jpg' />";
                relleno += "</div>";
                relleno += "</div>";
                relleno += "<div class='container'>";
            }
            relleno += "<div class='col s6 l4'>";
            relleno += "<div class='card medium'>";
            relleno += "<div class='card-image'>";
            relleno += "<img class='materialboxed' data-caption='" + lector[2].ToString() + "' src='../images/Galeria/" + lector[4].ToString() + "'>";
            relleno += "<span class='card-title'>" + lector[1].ToString() + "</span>";
            relleno += "</div>";
            relleno += "<div class='card-content'>";
            relleno += "<p>" + lector[2].ToString() + "</p>";
            relleno += "</div>";
            relleno += "</div>";
            relleno += "</div>";
        }
        relleno += "</div>";
        contenido.InnerHtml = relleno;
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
}