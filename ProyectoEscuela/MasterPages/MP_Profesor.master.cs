﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MP_Profesor : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Profesor"] == null)
        {
            Response.Redirect("../Default.aspx");
        }
        else
        {
            Session.Timeout = 10;
        }
    }
}
