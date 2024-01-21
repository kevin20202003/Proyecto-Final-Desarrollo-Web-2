using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDeDatosD;
using EntidadesE;

namespace NegocioN
{
    public class SucursalN
    {
        SucursalD sucursalD = new SucursalD();
        public bool? InsertarSucursal(string @strNombreSucrsal, string @strDireccion)
        {
            sucursalD = new SucursalD();
            return sucursalD.InsertarSucursal(@strNombreSucrsal, @strDireccion);
        }

        public List<SucursalE> ListadoSucursal(string @strfiltro)
        {
            sucursalD = new SucursalD();
            return sucursalD.ListadoSucursal(strfiltro);
        }

        public bool? ActualizarSucursal(int @IdSucursal, string @strNombreSucrsal)
        {
            sucursalD = new SucursalD();
            return sucursalD.ActualizarSucursal(@IdSucursal, @strNombreSucrsal);
        }

        public bool? EliminarSucursal(string @NombreSucursal)
        {
            sucursalD = new SucursalD();

            return sucursalD.EliminarSucursal(@NombreSucursal);
        }
    }
}
