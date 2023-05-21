using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VidaEstudiantil.Models.Clases
{
    public class Facultad
    {
        private static VIDAESTUDIANTILEntities VIDAESTUDIANTIL = new VIDAESTUDIANTILEntities();

        public static List<GetAllFacultad_Result> Lista()
        {
            return VIDAESTUDIANTIL.GetAllFacultad().ToList();
        }
        public static SaveFacultad_Result Save(string nombre)
        {
            return VIDAESTUDIANTIL.SaveFacultad(nombre).FirstOrDefault();
        }
        public static UpdateFacultad_Result Update(int idFacultad, string nombre, bool estado)
        {
            return VIDAESTUDIANTIL.UpdateFacultad(idFacultad,nombre,estado).FirstOrDefault();
        }
    }
}