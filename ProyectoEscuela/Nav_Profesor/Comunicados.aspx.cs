using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Comunicados : System.Web.UI.Page
{
    DataClassesDataContext data = new DataClassesDataContext();
    sql sql = new sql();
    protected void Page_Load(object sender, EventArgs e)
    {
        llenarComunicados();
        llenaImportancia();
    }
    protected void Enviar_Click(object sender, EventArgs e)
    {
        try
        {
            if (txt_titulo.Text.Trim().Equals("") || txt_contenido.Text.Trim().Equals("") || fecha.Value.Trim().Equals(""))
            {
                Mensajes("Sin desesperarse", "No dejes campos vacíos", "warning");
            }
            else
            {
                SqlDataReader Profe = sql.consulta("EXEC bProfe '" + Session["Profesor"].ToString() + "'");
                Profe.Read();
                data = new DataClassesDataContext();
                Comunicado c = new Comunicado();
                c.id_Profesor = Convert.ToInt32(Profe[0].ToString());
                c.Titulo = txt_titulo.Text;
                c.Contenido = txt_contenido.Text;
                c.Fecha_Comunicado = Convert.ToDateTime(fecha.Value);
                c.id_EstadoPublicacion = 1;
                c.id_Importancia = Convert.ToInt32(dd_importancia.SelectedValue);
                data.Comunicado.InsertOnSubmit(c);
                data.SubmitChanges();
                Mensajes("¡Bien hecho!", "Gracias por informar a los apoderados", "success");
                llenarComunicados();
            }
        }
        catch
        {
            Mensajes("Ups, algo salió mal", "No se ha podido subir el comunicado", "error");
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

    protected void llenarComunicados()
    {
        int contador = 0;
        SqlDataReader Publicacion = sql.consulta("SELECT * FROM Comunicado ORDER BY Fecha_Comunicado DESC");
        string relleno = "<ul class='collapsible' data-collapsible='expandable'>";
        while (Publicacion.Read())
        {
            contador++;
            SqlDataReader Comentarios = sql.consulta("SELECT * FROM Comentario_Comunicados WHERE id_Comunicado = '" + Publicacion[0].ToString() + "'");
            relleno += "<li>";
            relleno += "<div class='amber darken-4 collapsible-header white-text'><i class='material-icons'>filter_drama</i>" + Publicacion[2].ToString() + "</div>";
            relleno += "<div class='collapsible-body'>";
            relleno += "<div class='container'>";
            relleno += "<div class='row'>";
            relleno += "<p>" + Publicacion[3].ToString() + "</p>";
            relleno += "</div>";
            relleno += "<div class='col s10'>";
            relleno += "<ul class='collapsible' data-collapsible='expandable'>";
            relleno += "<li>";
            relleno += "<div class='amber darken-4 collapsible-header white-text active'><i class='material-icons'>filter_drama</i>Comentarios</div>";
            relleno += "<div class='collapsible-body'>";
            relleno += "<ul class='collection'>";
            while (Comentarios.Read())
            {
                relleno += "<li class='collection-item'>" + Comentarios[2].ToString() + "</li>";
            }
            relleno += "<li class='collection-item grey-text'>-No hay más comentarios-</li>";
            relleno += "</ul>";
            relleno += "</div>";
            relleno += "</li>";
            relleno += "</ul>";
            relleno += "</div>";
            relleno += "<div class='row center'>";
            relleno += "<div class='col s2'>";
            relleno += "<h6><b>Deja un comentario</b></h6>";
            relleno += "</div>";
            relleno += "<div class='input-field col s10'>";
            relleno += "<i class='material-icons prefix'>edit</i>";
            relleno += "<input type='text' id='TextBox" + contador + "' runat='server'/>";
            relleno += "<label>Soy un comentario</label>";
            relleno += "</div>";
            relleno += "</div>";
            relleno += "<div class='col s1 row center'>";
            relleno += "<asp:UpdatePanel ID='UpdatePanel3' runat='server'>";
            relleno += "<ContentTemplate>";
            relleno += "<input type='submit'  runat='server' class='waves-effect waves-light amber btn' value='Comentar' onserverclick/>";
            relleno += "</ContentTemplate>";
            relleno += "</asp:UpdatePanel>";
            relleno += "</div>";
            relleno += "</div>";
            relleno += "</div>";
            relleno += "</li>";
        }
        relleno += "</ul>";
        contenido.InnerHtml = relleno;
        SqlDataReader com = sql.consulta("SELECT COUNT(id_Comunicado) FROM Comunicado");
        com.Read();
        lbl_comunicadosTot.Text = com[0].ToString();
        SqlDataReader comen = sql.consulta("SELECT COUNT(id_Comentario) FROM Comentario_Comunicados");
        comen.Read();
        lbl_comentariosTot.Text = comen[0].ToString();
    }

    protected void Comentar(int id)
    {
        SqlDataReader Autor = sql.consulta("SELECT * FROM Usuarios WHERE Run ='" + Session["Profesor"].ToString() + "'");
        Autor.Read();
        data = new DataClassesDataContext();
        Comentario_Comunicados cc = new Comentario_Comunicados();
        cc.id_Autor = Convert.ToInt32(Autor[0].ToString());
    }

    private void llenaImportancia()
    {
        data = new DataClassesDataContext();
        dd_importancia.DataSource = data.Importancia;
        dd_importancia.DataTextField = "descripcion_importancia";
        dd_importancia.DataValueField = "id_Importancia";
        dd_importancia.DataBind();
    }
}