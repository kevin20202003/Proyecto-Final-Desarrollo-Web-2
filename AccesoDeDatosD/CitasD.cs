using EntidadesE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDeDatosD
{
    public class CitasD
    {
        public bool? InsertaCita(string @Cedula, string @Nombre, string @Apellido, string @Telefono, string @Correo, DateTime @FechaHora, int @IdServicio, int @IdSucursal)
        {
            bool? respuesta = false;

            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_insertar_citas(@Cedula, @Nombre, @Apellido, @Telefono, @Correo, @FechaHora, @IdServicio, @IdSucursal);
                    foreach (var item in sp)
                    {
                        respuesta = item.respuesta == 1 ? true : false;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return respuesta;
        }

        public List<CitasE> ListadoCitas(string @strfiltro)
        {
            List<CitasE> Doc = new List<CitasE>();
            using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
            {
                var sp = context.sp_Listado_Citas(@strfiltro);
                foreach (var item in sp)
                {
                    CitasE doc = new CitasE();
                    doc.Cedula = item.Cedula;
                    doc.Nombre = item.Nombre;
                    doc.Apellido = item.Apellido;
                    doc.Telefono = item.Telefono;
                    doc.Correo = item.Correo;
                    doc.FechaHora = (DateTime)item.FechaHora;
                    doc.IdServico = (int)item.IdServicio;
                    doc.IdSucursal = (int)item.IdSucursal;

                    Doc.Add(doc);
                }
            }
            return Doc;
        }
    }
}
