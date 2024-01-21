using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioN;

namespace Proyecto_Final_Desarrollo_Web_2
{
    public partial class Administrador3 : System.Web.UI.Page
    {
        SucursalN sucursalN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarSucursal("%");
            }
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtFiltro.Text))
            {
                CargarSucursal(txtFiltro.Text);
            }
            else
            {

            }
        }

        protected void dtgListadoSucursal_SelectedIndexChanged(object sender, EventArgs e)
        {
            PnlIngresosucursal.Visible = true;
            txtCodigo.Text = HttpUtility.HtmlDecode(dtgListadoSucursal.SelectedRow.Cells[1].Text);
            txtNombre.Text = HttpUtility.HtmlDecode(dtgListadoSucursal.SelectedRow.Cells[2].Text);
            txtDireccion.Text = HttpUtility.HtmlDecode(dtgListadoSucursal.SelectedRow.Cells[3].Text);
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (!PnlIngresosucursal.Visible)
            {
                PnlIngresosucursal.Visible = true;
            }
            else
            {
                PnlIngresosucursal.Visible = false;
            }
        }

        protected void btnGurdar_Click(object sender, EventArgs e)
        {
            sucursalN = new SucursalN();
            bool? respuesta = sucursalN.InsertarSucursal(txtNombre.Text, txtDireccion.Text);

            if (respuesta == true)
            {
                lblResgistro.Text = "Se registro correctamente";
                lblResgistro.Visible = true;
                PnlIngresosucursal.Visible = false;
                CargarSucursal("%");
                LimpiarCajas();
            }
            else
            {
                lblResgistro.Text = "Ocurrio un error no se registro.";
            }
        }

        protected void btlActualizar_Click(object sender, EventArgs e)
        {
            sucursalN = new SucursalN();

            bool? respuesta = sucursalN.ActualizarSucursal(Convert.ToInt16 (txtCodigo.Text), txtNombre.Text);
            if (respuesta == true)
            {
                lblResgistro.Text = "El registro se actualizó correctamente";
                lblResgistro.Visible = true;
                PnlIngresosucursal.Visible = false;
                LimpiarCajas();
                CargarSucursal("%");
            }
            else
            {
                lblResgistro.Text = "Ocurrio un error no se actualizó.";
            }
        }

        protected void btlEliminar_Click(object sender, EventArgs e)
        {
            sucursalN = new SucursalN();

            bool? respuesta = sucursalN.EliminarSucursal(txtNombre.Text.Trim());
            if (respuesta == true)
            {
                lblResgistro.Text = "El registro se elimino correctamente";
                lblResgistro.Visible = true;
                PnlIngresosucursal.Visible = false;
                LimpiarCajas();
                CargarSucursal("%");
            }
            else
            {
                lblResgistro.Text = "Ocurrio un error no se actualizó.";
            }
        }

        public void CargarSucursal(string strfiltro)
        {
            sucursalN = new SucursalN();
            var items = sucursalN.ListadoSucursal(strfiltro);
            dtgListadoSucursal.DataSource = items;
            dtgListadoSucursal.DataBind();
        }

        public void LimpiarCajas()
        {
            txtCodigo.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtDireccion.Text = string.Empty;

        }
    }
}