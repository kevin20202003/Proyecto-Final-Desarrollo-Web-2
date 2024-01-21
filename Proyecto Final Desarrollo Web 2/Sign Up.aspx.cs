using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioN;

namespace Proyecto_Final_Desarrollo_Web_2
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        UsuariosN usuariosN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            usuariosN = new UsuariosN();

            string nombres = txtNombres.Value;
            string apellidos = txtApellidos.Value;
            string correo = txtCorreo.Value;
            string telefono = txtTelefono.Value;
            string contraseña = txtContraseña.Value;
            int rol = Convert.ToInt16(ddlRol.Value);

            bool? respuesta = usuariosN.InsertaCliente(nombres, apellidos, telefono, correo,  contraseña, rol);

            if (respuesta == true)
            {
                lblResgistro.Text = "Se registró correctamente sus datos ahora podra iniciar sesion para acceder a la pagina";
                lblResgistro.Visible = true;
            }
            else
            {
                lblResgistro.Text = "Ocurrió un error, no se registró.";
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}