using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Galeria : System.Web.UI.Page
{
    DataClassesDataContext data = new DataClassesDataContext();
    sql sql = new sql();
    protected void Page_Load(object sender, EventArgs e)
    {
        llenarGaleria();
    }
    protected void llenarGaleria()
    {
        int contador = 0;
        int paralax=0;
        string relleno = "<div class='container'>";
        SqlDataReader lector = sql.consulta("SELECT * FROM Foto_Galeria ORDER BY id_Foto DESC");
        while (lector.Read())
        {
            contador++;
            if (contador % 6 == 0)
            {
                paralax++;
                relleno += "</div>";
                relleno +="<div class='parallax-container'>";
                relleno +="<div class='parallax'>";
                relleno +="<img src='images/galeria"+paralax+".jpg' />";
                relleno +="</div>";
                relleno +="</div>";
                relleno +="<div class='container'>";
            }
            relleno += "<div class='col s6 l4'>";
            relleno += "<div class='card medium'>";
            relleno += "<div class='card-image'>";
            relleno += "<img class='materialboxed' data-caption='" + lector[2].ToString() + "' src='images/Galeria/" + lector[4].ToString() + "'>";
            relleno += "<span class='card-title'>" + lector[1].ToString() + "</span>";
            relleno += "</div>";
            relleno += "<div class='card-content'>";
            relleno += "<p>" + lector[2].ToString() + "</p>";
            relleno += "</div>";
            relleno += "</div>";
            relleno += "</div>";
        }
        contenido.InnerHtml = relleno;
    }
}