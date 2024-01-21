using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDeDatosD
{
    public class UsuariosD
    {
        public bool? InsertaCliente(string @strNombre, string @strApellido, string @strTelefono, string @strEmail,  string @strPasswork, int @intRol)
        {
            bool? respuesta = false;

            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_insertar_clientes(@strNombre, @strApellido, @strTelefono, @strEmail,
                                                               @strPasswork, @intRol);
                    foreach (var item in sp)
                    {
                        respuesta = item.respuesta;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return respuesta;
        }

        public bool Login(string @strEmail, string @strPasswork, int @intIdRol)
        {
            bool respuesta = false;

            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_login(@strEmail, @strPasswork, @intIdRol);
                    foreach (var item in sp)
                    {
                        respuesta = item.respuesta == 1;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return respuesta;
        }




    }
}
