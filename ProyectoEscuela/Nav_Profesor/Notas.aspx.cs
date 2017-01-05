using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Text;
public partial class Notas : System.Web.UI.Page
{
    DataClassesDataContext data;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            llenaCursos();
            llenaAsignatura();
        }
    }

    protected void llenaCursos()
    {
        data = new DataClassesDataContext();
        dd_curso.DataSource = data.Cursos;
        dd_curso.DataTextField = "descripcion_curso";
        dd_curso.DataValueField = "id_curso";
        dd_curso.DataBind();
    }


    protected void llenaAsignatura()
    {
        data = new DataClassesDataContext();
        dd_asignatura.DataSource = data.Asignaturas;
        dd_asignatura.DataTextField = "descripcion_asignatura";
        dd_asignatura.DataValueField = "id_Asignatura";
        dd_asignatura.DataBind();
    }
    //protected void btn_crear_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        if (txt_nombre.Text.Trim().Equals(""))
    //        {
    //            Mensajes("¡Alto ahí!", "Sé que la vida de profesor es ajetreada, pero no se me apresure tanto. No deje campos vacíos", "warning");
    //        }
    //        else
    //        {
    //            data = new DataClassesDataContext();
    //            Evaluaciones v = new Evaluaciones();
    //            v.Descripcion = txt_nombre.Text;
    //            v.id_Asignatura = Convert.ToInt32(dd_asignatura.SelectedValue);
    //            v.id_Curso = Convert.ToInt32(dd_curso.SelectedValue);
    //            v.Fecha_Evaluacion = Convert.ToDateTime(fecha.Value);
    //            data.Evaluaciones.InsertOnSubmit(v);
    //            data.SubmitChanges();
    //            Mensajes("¡Felicidades!", "Has creado la evaluación exitosamente. Que tengas un lindo día", "success");
    //            limpiar();
    //        }
    //    }
    //    catch
    //    {

    //    }
    //}

    protected void enviarCorreo(String destinatario)
    {
        MailMessage email = new MailMessage();
        email.From = new MailAddress("cristofer.binimelis@inacapmail.cl");
        email.To.Add(new MailAddress(destinatario));
        String asunto = "Confirmación de Registro con fecha: " + DateTime.Now.ToString("dd / MMM / yyy");
        email.Subject = asunto;
        email.Body = "Pincha <a href='http://localhost:54783/certamen2_cbinimelis/Confirmar.aspx'>aqui</a> para activar tu cuenta";
        email.IsBodyHtml = true;
        email.Priority = MailPriority.Normal;

        SmtpClient smtp = new SmtpClient();
        smtp.EnableSsl = true;
        try
        {
            smtp.Send(email);
            email.Dispose();
            Mensajes("Felicidades", "Se ha enviado un correo para confirmar la activacion de su cuenta", "success");
        }
        catch (Exception ex)
        {
            Mensajes("Algo salió mal", "Error enviando correo electrónico: " + ex.Message, "error");
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

    protected void limpiar()
    {
        txt_nombre.Text = "";
        dd_asignatura.SelectedValue = "";
        dd_curso.SelectedValue = "";
        fecha.Value = "";
    }
}