using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VidaEstudiantil.Models.Clases
{
    public class Oferta
    {
        private static VIDAESTUDIANTILEntities VIDAESTUDIANTIL = new VIDAESTUDIANTILEntities();

        public static List<GetAllOfertas_Result> Lista()
        {
            return VIDAESTUDIANTIL.GetAllOfertas().ToList();
        }

        public static SaveOferta_Result Save(string titulo,string descripcion, int idnivelexperiencia, string horario, decimal salario, string moneda, string tipotrabajo, string cargo, string areadetrabajo, int idempresa)
        {
            return VIDAESTUDIANTIL.SaveOferta(titulo, descripcion, idnivelexperiencia, horario, salario, moneda, tipotrabajo, cargo, areadetrabajo, idempresa).FirstOrDefault();
        }
        public static UpdateOferta_Result Update( int idoferta, string titulo, string descripcion, int idnivelexperiencia, string horario, decimal salario, string moneda, string tipotrabajo, string cargo, string areadetrabajo, int idempresa)
        {
            return VIDAESTUDIANTIL.UpdateOferta(idoferta, titulo, descripcion, idnivelexperiencia, horario, salario, moneda, tipotrabajo, cargo, areadetrabajo, idempresa).FirstOrDefault();
        }
    }
}