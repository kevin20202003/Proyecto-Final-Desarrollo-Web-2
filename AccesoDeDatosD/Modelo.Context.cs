﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AccesoDeDatosD
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class AgendamientoTurnosVehicularesEntities : DbContext
    {
        public AgendamientoTurnosVehicularesEntities()
            : base("name=AgendamientoTurnosVehicularesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Usuarios> Usuarios { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<Servicios> Servicios { get; set; }
        public virtual DbSet<Sucursales> Sucursales { get; set; }
        public virtual DbSet<Comentarios> Comentarios { get; set; }
        public virtual DbSet<Citas> Citas { get; set; }
    
        public virtual ObjectResult<sp_insertar_clientes_Result> sp_insertar_clientes(string strNombre, string strApellido, string strTelefono, string strEmail, string strPasswork, Nullable<int> intRol)
        {
            var strNombreParameter = strNombre != null ?
                new ObjectParameter("strNombre", strNombre) :
                new ObjectParameter("strNombre", typeof(string));
    
            var strApellidoParameter = strApellido != null ?
                new ObjectParameter("strApellido", strApellido) :
                new ObjectParameter("strApellido", typeof(string));
    
            var strTelefonoParameter = strTelefono != null ?
                new ObjectParameter("strTelefono", strTelefono) :
                new ObjectParameter("strTelefono", typeof(string));
    
            var strEmailParameter = strEmail != null ?
                new ObjectParameter("strEmail", strEmail) :
                new ObjectParameter("strEmail", typeof(string));
    
            var strPassworkParameter = strPasswork != null ?
                new ObjectParameter("strPasswork", strPasswork) :
                new ObjectParameter("strPasswork", typeof(string));
    
            var intRolParameter = intRol.HasValue ?
                new ObjectParameter("intRol", intRol) :
                new ObjectParameter("intRol", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_insertar_clientes_Result>("sp_insertar_clientes", strNombreParameter, strApellidoParameter, strTelefonoParameter, strEmailParameter, strPassworkParameter, intRolParameter);
        }
    
        public virtual ObjectResult<sp_insertar_citas_Result> sp_insertar_citas(string cedula, string nombre, string apellido, string telefono, string correo, Nullable<System.DateTime> fechaHora, Nullable<int> idServicio, Nullable<int> idSucursal)
        {
            var cedulaParameter = cedula != null ?
                new ObjectParameter("Cedula", cedula) :
                new ObjectParameter("Cedula", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var apellidoParameter = apellido != null ?
                new ObjectParameter("Apellido", apellido) :
                new ObjectParameter("Apellido", typeof(string));
    
            var telefonoParameter = telefono != null ?
                new ObjectParameter("Telefono", telefono) :
                new ObjectParameter("Telefono", typeof(string));
    
            var correoParameter = correo != null ?
                new ObjectParameter("Correo", correo) :
                new ObjectParameter("Correo", typeof(string));
    
            var fechaHoraParameter = fechaHora.HasValue ?
                new ObjectParameter("FechaHora", fechaHora) :
                new ObjectParameter("FechaHora", typeof(System.DateTime));
    
            var idServicioParameter = idServicio.HasValue ?
                new ObjectParameter("IdServicio", idServicio) :
                new ObjectParameter("IdServicio", typeof(int));
    
            var idSucursalParameter = idSucursal.HasValue ?
                new ObjectParameter("IdSucursal", idSucursal) :
                new ObjectParameter("IdSucursal", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_insertar_citas_Result>("sp_insertar_citas", cedulaParameter, nombreParameter, apellidoParameter, telefonoParameter, correoParameter, fechaHoraParameter, idServicioParameter, idSucursalParameter);
        }
    
        public virtual ObjectResult<sp_login_Result> sp_login(string strEmail, string strPassword, Nullable<int> intIdRol)
        {
            var strEmailParameter = strEmail != null ?
                new ObjectParameter("strEmail", strEmail) :
                new ObjectParameter("strEmail", typeof(string));
    
            var strPasswordParameter = strPassword != null ?
                new ObjectParameter("strPassword", strPassword) :
                new ObjectParameter("strPassword", typeof(string));
    
            var intIdRolParameter = intIdRol.HasValue ?
                new ObjectParameter("intIdRol", intIdRol) :
                new ObjectParameter("intIdRol", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_login_Result>("sp_login", strEmailParameter, strPasswordParameter, intIdRolParameter);
        }
    
        public virtual ObjectResult<sp_insertar_comentario_Result> sp_insertar_comentario(string comentario, Nullable<int> calificacion, string mejoras)
        {
            var comentarioParameter = comentario != null ?
                new ObjectParameter("Comentario", comentario) :
                new ObjectParameter("Comentario", typeof(string));
    
            var calificacionParameter = calificacion.HasValue ?
                new ObjectParameter("Calificacion", calificacion) :
                new ObjectParameter("Calificacion", typeof(int));
    
            var mejorasParameter = mejoras != null ?
                new ObjectParameter("Mejoras", mejoras) :
                new ObjectParameter("Mejoras", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_insertar_comentario_Result>("sp_insertar_comentario", comentarioParameter, calificacionParameter, mejorasParameter);
        }
    
        public virtual ObjectResult<sp_listado_comentarios_Result1> sp_listado_comentarios(string strfiltro)
        {
            var strfiltroParameter = strfiltro != null ?
                new ObjectParameter("strfiltro", strfiltro) :
                new ObjectParameter("strfiltro", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_listado_comentarios_Result1>("sp_listado_comentarios", strfiltroParameter);
        }
    
        public virtual ObjectResult<sp_insertar_servicio_Result> sp_insertar_servicio(string strNombre)
        {
            var strNombreParameter = strNombre != null ?
                new ObjectParameter("strNombre", strNombre) :
                new ObjectParameter("strNombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_insertar_servicio_Result>("sp_insertar_servicio", strNombreParameter);
        }
    
        public virtual ObjectResult<sp_Listado_servicios_Result1> sp_Listado_servicios(string strfiltro)
        {
            var strfiltroParameter = strfiltro != null ?
                new ObjectParameter("strfiltro", strfiltro) :
                new ObjectParameter("strfiltro", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Listado_servicios_Result1>("sp_Listado_servicios", strfiltroParameter);
        }
    
        public virtual ObjectResult<sp_eliminar_servicio_Result> sp_eliminar_servicio(string nombre)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_eliminar_servicio_Result>("sp_eliminar_servicio", nombreParameter);
        }
    
        public virtual ObjectResult<sp_actualizar_servicio_Result> sp_actualizar_servicio(Nullable<int> idServicio, string nombre)
        {
            var idServicioParameter = idServicio.HasValue ?
                new ObjectParameter("IdServicio", idServicio) :
                new ObjectParameter("IdServicio", typeof(int));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_actualizar_servicio_Result>("sp_actualizar_servicio", idServicioParameter, nombreParameter);
        }
    
        public virtual ObjectResult<sp_actualizar_sucursal_Result> sp_actualizar_sucursal(Nullable<int> idSucursal, string nombreSucursal)
        {
            var idSucursalParameter = idSucursal.HasValue ?
                new ObjectParameter("IdSucursal", idSucursal) :
                new ObjectParameter("IdSucursal", typeof(int));
    
            var nombreSucursalParameter = nombreSucursal != null ?
                new ObjectParameter("NombreSucursal", nombreSucursal) :
                new ObjectParameter("NombreSucursal", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_actualizar_sucursal_Result>("sp_actualizar_sucursal", idSucursalParameter, nombreSucursalParameter);
        }
    
        public virtual ObjectResult<sp_eliminar_sucursal_Result> sp_eliminar_sucursal(string nombreSucursal)
        {
            var nombreSucursalParameter = nombreSucursal != null ?
                new ObjectParameter("NombreSucursal", nombreSucursal) :
                new ObjectParameter("NombreSucursal", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_eliminar_sucursal_Result>("sp_eliminar_sucursal", nombreSucursalParameter);
        }
    
        public virtual ObjectResult<sp_insertar_sucursal_Result> sp_insertar_sucursal(string strNombreSucrsal, string strDireccion)
        {
            var strNombreSucrsalParameter = strNombreSucrsal != null ?
                new ObjectParameter("strNombreSucrsal", strNombreSucrsal) :
                new ObjectParameter("strNombreSucrsal", typeof(string));
    
            var strDireccionParameter = strDireccion != null ?
                new ObjectParameter("strDireccion", strDireccion) :
                new ObjectParameter("strDireccion", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_insertar_sucursal_Result>("sp_insertar_sucursal", strNombreSucrsalParameter, strDireccionParameter);
        }
    
        public virtual ObjectResult<sp_Listado_sucursal_Result1> sp_Listado_sucursal(string strfiltro)
        {
            var strfiltroParameter = strfiltro != null ?
                new ObjectParameter("strfiltro", strfiltro) :
                new ObjectParameter("strfiltro", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Listado_sucursal_Result1>("sp_Listado_sucursal", strfiltroParameter);
        }
    
        public virtual ObjectResult<sp_Listado_Citas_Result1> sp_Listado_Citas(string strfiltro)
        {
            var strfiltroParameter = strfiltro != null ?
                new ObjectParameter("strfiltro", strfiltro) :
                new ObjectParameter("strfiltro", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Listado_Citas_Result1>("sp_Listado_Citas", strfiltroParameter);
        }
    }
}
