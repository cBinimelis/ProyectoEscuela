using System;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class InicioSesion : System.Web.UI.Page
{
    sql SQL_Con = new sql();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Inicio de sesión del alumno
    protected void btn_alumno_Click(object sender, EventArgs e)
    {
        if (txt_usuario.Text.Trim().Equals("") || txt_pass.Text.Trim().Equals(""))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "vacio();", true);
        }
        else
        {
            SqlDataReader usuario = SQL_Con.consulta("SELECT * FROM Usuarios where Run ='" + txt_usuario.Text + "'");
            if (usuario.Read())
            {
                if (usuario[7].ToString() == txt_pass.Text)
                {
                    switch (Convert.ToInt32(usuario[13].ToString()))
                    {
                        case 1:
                            switch (Convert.ToInt32(usuario[12].ToString()))
                            {
                                case 1:
                                    Session["Admin"] = txt_usuario.Text;
                                    Response.Redirect("Nav_Admin/InicioAdmin.aspx");
                                    break;
                                case 2:
                                    Session["Alumno"] = txt_usuario.Text;
                                    Response.Redirect("Nav_Alumno/InicioAlumno.aspx");
                                    break;
                                case 3:
                                    Session["Profesor"] = txt_usuario.Text;
                                    Response.Redirect("Nav_Profesor/InicioProfesor.aspx");
                                    break;
                                case 4:
                                    Session["Apoderado"] = txt_usuario.Text;
                                    Response.Redirect("Nav_Apoderado/InicioApoderado.aspx");
                                    break;
                            }
                            break;
                        case 2:
                            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "deshabilita3();", true);
                            break;
                        case 3:
                            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "elimina3();", true);
                            break;
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "malaPass();", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "usuarioInexistente();", true);
            }
        }
    }
    protected void txt_usuario_TextChanged(object sender, EventArgs e)
    {
        txt_usuario.Text = Regex.Replace(txt_usuario.Text, @"[^\u0000-\u007F]+", string.Empty);
    }


    public string formatearRut(string rut)
    {
        int cont = 0;
        string format;
        if (rut.Length == 0)
        {
            return "";
        }
        else
        {
            rut = rut.Replace(".", "");
            rut = rut.Replace("-", "");
            format = "-" + rut.Substring(rut.Length - 1);
            for (int i = rut.Length - 2; i >= 0; i--)
            {
                format = rut.Substring(i, 1) + format;
                cont++;
                if (cont == 3 && i != 0)
                {
                    format = "." + format;
                    cont = 0;
                }
            }
            return format;
        }
    }

}