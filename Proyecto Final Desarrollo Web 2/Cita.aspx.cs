using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioN;

namespace Proyecto_Final_Desarrollo_Web_2
{
    
    public partial class Cita : System.Web.UI.Page
    {
        CitasN citasN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                btnProgramar.Enabled = false;
            }
        }

        protected void btnProgramar_Click(object sender, EventArgs e)
        {
            citasN = new CitasN();

            string cedula = txtCedula.Value;
            string nombre = txtNombre.Value;
            string apellido = txtApellido.Value;
            string telefono = txtTelefono.Value;
            string correo = txtCorreo.Value;
            DateTime fechahora = Convert.ToDateTime(datetimePicker.Value);
            int servicio = Convert.ToInt16(ddlServicio.Value);
            int sucursal = Convert.ToInt16(ddlSucursal.Value);

            bool? respuesta = citasN.InsertaCita(cedula, nombre, apellido, telefono, correo, fechahora, servicio, sucursal);

            if (respuesta == true)
            {
                lblResgistro.Text = "Su cita se a programado con exito que tenga un buen dia";
                lblResgistro.Visible = true;
            }
            else
            {
                lblResgistro.Text = "Ocurrió un error, no se programo su cita.";
            }
        }


        protected void chkTerminos_CheckedChanged(object sender, EventArgs e)
        {
            btnProgramar.Enabled = chkTerminos.Checked;
            btnProgramar.CssClass = btnProgramar.Enabled ? "form-button enabled" : "form-button";

        }
    }
}