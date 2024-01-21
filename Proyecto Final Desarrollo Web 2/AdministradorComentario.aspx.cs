using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioN;

namespace Proyecto_Final_Desarrollo_Web_2
{
    public partial class Administrador : System.Web.UI.Page
    {
        ComentarioN comentarioN;
        CitasN citaN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarComentario("%");
                CargarCitas("%");
            }
        }

        public void CargarComentario(string strfiltro)
        {
            comentarioN = new ComentarioN();
            var items = comentarioN.ListadoComentarios(strfiltro);
            dtgListadoComentarios.DataSource = items;
            dtgListadoComentarios.DataBind();
        }

        public void CargarCitas(string strfiltro)
        {
            citaN = new CitasN();
            var items = citaN.ListadoCitas(strfiltro);
            dtgListadoCitas.DataSource = items;
            dtgListadoCitas.DataBind();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtFiltro.Text))
            {
                CargarComentario(txtFiltro.Text);
            }
            else
            {

            }
        }

        protected void btnBuscarCitas_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtFiltro.Text))
            {
                CargarCitas(txtFiltro.Text);
            }
            else
            {

            }
        }
    }
}