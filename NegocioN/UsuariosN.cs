using AccesoDeDatosD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NegocioN
{
    public class UsuariosN
    {
        UsuariosD usuariosD = new UsuariosD();

        public bool? InsertaCliente(string @strNombre, string @strApellido, string @strTelefono, string @strEmail,  string @strPasswork, int @intRol)
        {
            usuariosD = new UsuariosD();



            return usuariosD.InsertaCliente(@strNombre, @strApellido, @strTelefono, @strEmail,
                                                               @strPasswork, @intRol);
        }


        public bool Login(string @strEmail, string @strPasswork, int @intIdRol)
        {
            usuariosD = new UsuariosD();

            return usuariosD.Login(@strEmail, @strPasswork, @intIdRol);
        }
    }
}
