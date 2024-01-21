using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntidadesE;

namespace AccesoDeDatosD
{
    public class SucursalD
    {
        public bool? InsertarSucursal(string @strNombreSucrsal, string @strDireccion)
        {
            bool? respuesta = false;
            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_insertar_sucursal(@strNombreSucrsal, @strDireccion);
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

        public List<SucursalE> ListadoSucursal(string @strfiltro)
        {
            List<SucursalE> Doc = new List<SucursalE>();
            using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
            {
                var sp = context.sp_Listado_sucursal(@strfiltro);
                foreach (var item in sp)
                {
                    SucursalE doc = new SucursalE();
                    doc.IdSucursal = item.IdSucursal;
                    doc.NombreSucursal = item.NombreSucursal;
                    doc.Direccion = item.Direccion;


                    Doc.Add(doc);
                }
            }
            return Doc;
        }

        public bool? ActualizarSucursal(int @IdSucursal, string @strNombreSucrsal)
        {
            bool? respuesta = false;
            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_actualizar_sucursal(@IdSucursal,@strNombreSucrsal);
                    foreach (var item in sp)
                    {
                        respuesta = item.Respuesta;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return respuesta;
        }

        public bool? EliminarSucursal(string @NombreSucursal)
        {
            bool? respuesta = false;

            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_eliminar_sucursal(@NombreSucursal);
                    foreach (var item in sp)
                    {
                        respuesta = item.Respuesta;
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
