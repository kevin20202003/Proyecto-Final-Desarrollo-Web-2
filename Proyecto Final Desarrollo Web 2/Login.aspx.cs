using NegocioN;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final_Desarrollo_Web_2
{
    public partial class Login : System.Web.UI.Page
    {
        UsuariosN usuariosN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }
        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            usuariosN = new UsuariosN();

            string strEmail = txtCorreo.Value;
            string strPassword = txtContraseña.Value;
            int intIdRol = Convert.ToInt32(ddlRol.Value);

            bool respuesta = usuariosN.Login(strEmail, strPassword, intIdRol);

            if (respuesta)
            {
                if (intIdRol == 1) // Administrador
                {
                    // Redirigir a otro formulario para administradores
                    Response.Redirect("AdministradorComentario.aspx");
                }
                else if (intIdRol == 2) // Usuario normal
                {
                    // Redirigir a la página principal
                    Response.Redirect("Pagina Principal.aspx");
                }
            }
            else
            {
                lblResgistro.Text = "El usuario o la contraseña son incorrectos.";
                lblResgistro.Visible = true;
            }
        }
    }
}