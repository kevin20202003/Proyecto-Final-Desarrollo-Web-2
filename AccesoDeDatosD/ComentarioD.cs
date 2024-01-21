using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EntidadesE;

namespace AccesoDeDatosD
{
    public class ComentarioD
    {
        public bool? InsertaComentario(string @Comentario, int @Calificacion, string @Mejoras)
        {
            bool? respuesta = false;

            try
            {
                using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
                {
                    var sp = context.sp_insertar_comentario(@Comentario, @Calificacion, @Mejoras);
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

        public List<ComentarioE> ListadoComentarios(string @strfiltro)
        {
            List<ComentarioE> Doc = new List<ComentarioE>();
            using (AgendamientoTurnosVehicularesEntities context = new AccesoDeDatosD.AgendamientoTurnosVehicularesEntities())
            {
                var sp = context.sp_listado_comentarios(@strfiltro);
                foreach (var item in sp)
                {
                    ComentarioE doc = new ComentarioE();
                    doc.comentario = item.comentario;
                    doc.calificacion = (int)item.calificacion;
                    doc.mejoras = item.mejoras;

                    Doc.Add(doc);
                }
            }
            return Doc;
        }
    }
}
