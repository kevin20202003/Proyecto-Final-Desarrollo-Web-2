using AccesoDeDatosD;
using EntidadesE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NegocioN
{
    public class ComentarioN
    {
        ComentarioD comentarioD = new ComentarioD();

        public bool? InsertaComentario(string @Comentario, int @Calificacion, string @Mejoras)
        {
            comentarioD = new ComentarioD();



            return comentarioD.InsertaComentario(@Comentario, @Calificacion, @Mejoras);
        }

        public List<ComentarioE> ListadoComentarios(string @strfiltro2)
        {
            comentarioD = new ComentarioD();
            return comentarioD.ListadoComentarios(strfiltro2);
        }
    }
}
