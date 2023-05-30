using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VidaEstudiantil.Models.Clases
{
    public class OfertaLaboral
    {
        private static VIDAESTUDIANTILEntities VIDAESTUDIANTIL = new VIDAESTUDIANTILEntities();

        public static List<GetOfertasLaborales_Result> Lista()
        {
            return VIDAESTUDIANTIL.GetOfertasLaborales().ToList();
        }
        public static SaveOfertaLaboral_Result Save(string titulo,string descripcion,int idNivelExperiencia, string horario, decimal salario, string moneda, string tipoTrabajo, string cargo, string areaDeTrabajo, int idEmpresa)
        {
            return VIDAESTUDIANTIL.SaveOfertaLaboral(titulo,descripcion,idNivelExperiencia,horario,salario,moneda,tipoTrabajo,cargo,areaDeTrabajo,idEmpresa).FirstOrDefault();
        }
        public static UpdateOfertaLaboral_Result Update(int idOfertaLaboral,string titulo, string descripcion, int idNivelExperiencia, string horario, decimal salario, string moneda, string tipoTrabajo, string cargo, string areaDeTrabajo, int idEmpresa,bool estado)
        {
            return VIDAESTUDIANTIL.UpdateOfertaLaboral(idOfertaLaboral,titulo, descripcion, idNivelExperiencia, horario, salario, moneda, tipoTrabajo, cargo, areaDeTrabajo, idEmpresa,estado).FirstOrDefault();
        }
    }
}