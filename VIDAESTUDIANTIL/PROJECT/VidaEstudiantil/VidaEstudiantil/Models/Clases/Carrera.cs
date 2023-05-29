using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VidaEstudiantil.Models.Clases
{
    public class Carrera
    {
        private static VIDAESTUDIANTILEntities VIDAESTUDIANTIL = new VIDAESTUDIANTILEntities();

        public static List<GetAllCarrera_Result> Lista()
        {
            return VIDAESTUDIANTIL.GetAllCarrera().ToList();
        }

        public static List<GetCarreraByFacultad_Result> CarreraByFacultad(int idFacultad)
        {
            return VIDAESTUDIANTIL.GetCarreraByFacultad(idFacultad).ToList();
        }
        public static SaveCarrera_Result Save(string nombre,int idFacultad)
        {
            return VIDAESTUDIANTIL.SaveCarrera(nombre,idFacultad).FirstOrDefault();
        }
        public static UpdateCarrera_Result Update(int idCarrera, string nombre, bool estado, int idFacultad)
        {
            return VIDAESTUDIANTIL.UpdateCarrera(idCarrera, nombre,estado, idFacultad).FirstOrDefault();
        }
    }
}