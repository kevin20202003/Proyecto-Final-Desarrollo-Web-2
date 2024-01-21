using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDeDatosD;
using EntidadesE;

namespace NegocioN
{
    public class ServicioN
    {
        ServicioD servicioD = new ServicioD();
        public bool? InsertarServicio(string @strNombre)
        {
            servicioD = new ServicioD();
            return servicioD.InsertarServicio(@strNombre);
        }

        public List<ServicioE> ListadoServicio(string @strfiltro)
        {
            servicioD = new ServicioD();
            return servicioD.ListadoServicio(strfiltro);
        }

        public bool? ActualizarServicio(int @IdServicio, string @strNombre)
        {
            servicioD = new ServicioD();
            return servicioD.ActualizarServicio(@IdServicio, @strNombre);
        }

        public bool? EliminarServicio(string @Nombre)
        {
            servicioD = new ServicioD();

            return servicioD.EliminarServicio(@Nombre);
        }
    }
}
