using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDeDatosD;
using EntidadesE;

namespace NegocioN
{
    public class CitasN
    {
        CitasD citasD = new CitasD();
        public bool? InsertaCita(string @Cedula, string @Nombre, string @Apellido, string @Telefono, string @Correo, DateTime @FechaHora, int @IdServicio, int @IdSucursal)
        {
            citasD = new CitasD();



            return citasD.InsertaCita(@Cedula, @Nombre, @Apellido, @Telefono, @Correo, @FechaHora, @IdServicio, @IdSucursal);
        }

        public List<CitasE> ListadoCitas(string @strfiltro)
        {
            citasD = new CitasD();
            return citasD.ListadoCitas(strfiltro);
        }
    }
}
