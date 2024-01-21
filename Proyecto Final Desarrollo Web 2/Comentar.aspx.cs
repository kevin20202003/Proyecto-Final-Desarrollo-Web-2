using NegocioN;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Final_Desarrollo_Web_2
{
    
    public partial class Perfil_Usuario : System.Web.UI.Page
    {
        ComentarioN coemntarioN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }
        }

        protected void btnEnviarComentario_Click(object sender, EventArgs e)
        {
            coemntarioN = new ComentarioN();

            string coemntario = txtcoemtario.Value;
            int calificion = Convert.ToInt16 (ddlCalificion.Value);
            string mejoras = txtMejoras.Value;
           

            bool? respuesta = coemntarioN.InsertaComentario(coemntario, calificion, mejoras);

            if (respuesta == true)
            {
                lblResgistro.Text = "Se registró correctamente";
                lblResgistro.Visible = true;
            }
            else
            {
                lblResgistro.Text = "Ocurrió un error, no se registró.";
            }
        }
    }
}