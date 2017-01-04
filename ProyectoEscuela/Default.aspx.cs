using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Portada : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll();
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "funciona();", true);
    }

    protected void Mensajes(String msj){
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", 
            "swal('"+msj+"')"
            , true);
    }
}