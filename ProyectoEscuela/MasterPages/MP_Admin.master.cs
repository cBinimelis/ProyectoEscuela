using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MP_Admin : System.Web.UI.MasterPage
{
    sql sql = new sql();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        else
        {
            Session.Timeout = 35;
        }
        Page.Form.Attributes.Add("enctype", "multipart/form-data");
        llenaDatos();
    }

    protected void llenaDatos()
    {
        SqlDataReader admin = sql.consulta("EXEC IniciarUsuario '"+Session["Admin"].ToString()+"'");
        if (admin.Read())
        {
            nombre_admin.InnerText = admin[0].ToString();
            correo_admin.InnerText = admin[1].ToString();
            foto_perfil.Src = "~/images/Usuarios/" + admin[2].ToString();

        }
    }
}
