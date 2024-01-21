using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntidadesE;

namespace AccesoDeDatosD
{
    public class ServicioD
    {
        public bool? InsertarServicio(string @strNombre)
        {
            bool? respuesta = false;
            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_insertar_servicio(@strNombre);
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

        public List<ServicioE> ListadoServicio(string @strfiltro)
        {
            List<ServicioE> Doc = new List<ServicioE>();
            using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
            {
                var sp = context.sp_Listado_servicios(@strfiltro);
                foreach (var item in sp)
                {
                    ServicioE doc = new ServicioE();
                    doc.IdServicio = item.IdServicio;
                    doc.Nombre = item.Nombre;
                 

                    Doc.Add(doc);
                }
            }
            return Doc;
        }

        public bool? ActualizarServicio(int @IdServicio, string @strNombre)
        {
            bool? respuesta = false;
            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_actualizar_servicio(@IdServicio, @strNombre);
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

        public bool? EliminarServicio(string @Nombre)
        {
            bool? respuesta = false;

            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_eliminar_servicio(@Nombre);
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
