using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioN;

namespace Proyecto_Final_Desarrollo_Web_2
{
    public partial class Administrador2 : System.Web.UI.Page
    {
        ServicioN servicioN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                CargarServicios("%");
            }
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtFiltro.Text))
            {
                CargarServicios(txtFiltro.Text);
            }
            else
            {

            }
        }

        protected void dtgListadoServicios_SelectedIndexChanged(object sender, EventArgs e)
        {

            PnlIngresoservicio.Visible = true;
            txtCodigo.Text = HttpUtility.HtmlDecode(dtgListadoServicios.SelectedRow.Cells[1].Text);
            txtNombre.Text = HttpUtility.HtmlDecode(dtgListadoServicios.SelectedRow.Cells[2].Text);
            

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (!PnlIngresoservicio.Visible)
            {
                PnlIngresoservicio.Visible = true;
            }
            else
            {
                PnlIngresoservicio.Visible = false;
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            servicioN = new ServicioN();
            bool? respuesta = servicioN.InsertarServicio(txtNombre.Text);

            if (respuesta == true)
            {
                lblResgistro.Text = "Se registro correctamente";
                lblResgistro.Visible = true;
                PnlIngresoservicio.Visible = false;
                CargarServicios("%");
                LimpiarCajas();
            }
            else
            {
                lblResgistro.Text = "Ocurrio un error no se registro.";
            }
        }

        protected void btlActualizar_Click(object sender, EventArgs e)
        {
            servicioN = new ServicioN();

            bool? respuesta = servicioN.ActualizarServicio(Convert.ToInt16 (txtCodigo.Text), txtNombre.Text);
            if (respuesta == true)
            {
                lblResgistro.Text = "El registro se actualizó correctamente";
                lblResgistro.Visible = true;
                PnlIngresoservicio.Visible = false;
                LimpiarCajas();
                CargarServicios("%");
            }
            else
            {
                lblResgistro.Text = "Ocurrio un error no se actualizó.";
            }
        }

        protected void btlEliminar_Click(object sender, EventArgs e)
        {
            servicioN = new ServicioN();

            bool? respuesta = servicioN.EliminarServicio(txtNombre.Text.Trim());
            if (respuesta == true)
            {
                lblResgistro.Text = "El registro se elimino correctamente";
                lblResgistro.Visible = true;
                PnlIngresoservicio.Visible = false;
                LimpiarCajas();
                CargarServicios("%");
            }
            else
            {
                lblResgistro.Text = "Ocurrio un error no se actualizó.";
            }
        }

        public void CargarServicios(string strfiltro)
        {
            servicioN = new ServicioN();
            var items = servicioN.ListadoServicio(strfiltro);
            dtgListadoServicios.DataSource = items;
            dtgListadoServicios.DataBind();
        }

        public void LimpiarCajas()
        {
            txtNombre.Text = string.Empty;
           

        }
    }
}