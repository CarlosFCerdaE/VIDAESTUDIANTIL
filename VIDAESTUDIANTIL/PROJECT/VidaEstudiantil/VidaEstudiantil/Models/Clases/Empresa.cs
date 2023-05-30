using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VidaEstudiantil.Models.Clases
{
    public class Empresa
    {
        private static VIDAESTUDIANTILEntities VIDAESTUDIANTIL = new VIDAESTUDIANTILEntities();

        public static List<GetAllEmpresasNames_Result> Lista()
        {
            return VIDAESTUDIANTIL.GetAllEmpresasNames().ToList();
        }
    }
}