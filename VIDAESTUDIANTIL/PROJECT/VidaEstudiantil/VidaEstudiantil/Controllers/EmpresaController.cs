using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidaEstudiantil.Models;
using VidaEstudiantil.Models.Clases;

namespace VidaEstudiantil.Controllers
{
    public class EmpresaController : Controller
    {
        // GET: Empresa
        public ActionResult Lista()
        {
            try
            {
                return Json(
                        new
                        {
                            success = true,
                            data = Empresa.Lista(),
                            message = "ok"
                        },
                        JsonRequestBehavior.AllowGet
                    );
            }
            catch (Exception ex)
            {
                return Json(
                    new
                    {
                        success = false,
                        message = ex.Message
                    },
                    JsonRequestBehavior.AllowGet
                    );
            }
        }
    }
}