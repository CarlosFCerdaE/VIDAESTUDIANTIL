using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidaEstudiantil.Models;
using VidaEstudiantil.Models.Clases;

namespace VidaEstudiantil.Controllers
{
    public class OfertaLaboralController : Controller
    {
        // GET: OfertaLaboral
        public ActionResult Index()
        {
            return View("OfertaLaboral");
        }
        public ActionResult Lista()
        {
            try
            {
                return Json(
                        new
                        {
                            success = true,
                            data = OfertaLaboral.Lista(),
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

        public ActionResult Guardar(string titulo,string descripcion,int idNivelExperiencia, string horario, decimal salario, string moneda, string tipoTrabajo, string cargo, string areaDeTrabajo, int idEmpresa)
        {
            try
            {
                SaveOfertaLaboral_Result result = OfertaLaboral.Save(titulo, descripcion, idNivelExperiencia, horario, salario, moneda, tipoTrabajo, cargo, areaDeTrabajo, idEmpresa);

                return Json(
                        new
                        {
                            success = result.ESTADO == 1,
                            message = result.MENSAJE
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
        public ActionResult Actualizar(int idOfertaLaboral, string titulo, string descripcion, int idNivelExperiencia, string horario, decimal salario, string moneda, string tipoTrabajo, string cargo, string areaDeTrabajo, int idEmpresa, bool estado)
        {

            try
            {
                UpdateOfertaLaboral_Result result = OfertaLaboral.Update(idOfertaLaboral, titulo, descripcion, idNivelExperiencia, horario, salario, moneda, tipoTrabajo, cargo, areaDeTrabajo, idEmpresa, estado);

                return Json(
                        new
                        {
                            success = result.ESTADO == 1,
                            message = result.MENSAJE
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
        /*
        public ActionResult Delete(int id)
        {

            try
            {
                using (var db = new VIDAESTUDIANTILEntities())
                {
                    var carrera = db.CARRERA.First(f => f.IdCarrera == id);
                    db.CARRERA.Remove(carrera);
                    db.SaveChanges();

                    return Json(
                        new
                        {
                            success = true,
                            message = "lo logramos ekipo"
                        },
                        JsonRequestBehavior.AllowGet
                    );
                }
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
        */
    }
}