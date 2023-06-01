using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VidaEstudiantil.Models.Clases
{
    public class NivelExp
    {
        private static VIDAESTUDIANTILEntities VIDAESTUDIANTIL = new VIDAESTUDIANTILEntities();

        public static List<GetAllNivelExperiencia_Result> Lista()
        {
            return VIDAESTUDIANTIL.GetAllNivelExperiencia().ToList();
        }

    }
}