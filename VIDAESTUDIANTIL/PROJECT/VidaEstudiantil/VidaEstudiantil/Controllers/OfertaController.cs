using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using VidaEstudiantil.Models;
using VidaEstudiantil.Models.Clases;

namespace VidaEstudiantil.Controllers
{
    public class OfertaController : Controller
    {
        // GET: Oferta
        public ActionResult Index()
        {
            return View("Oferta");
        }
        public ActionResult Lista()
        {
            try
            {
                return Json(
                        new
                        {
                            success = true,
                            data = Oferta.Lista(),
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

        public ActionResult Guardar(string titulo, string descripcion, int idnivelexperiencia, string horario, decimal salario, string moneda, string tipotrabajo, string cargo, string areadetrabajo, int idempresa)
        {
            try
            {
                SaveOferta_Result result = Oferta.Save(titulo, descripcion, idnivelexperiencia, horario, salario, moneda, tipotrabajo, cargo, areadetrabajo, idempresa);

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
        public ActionResult Actualizar(int idoferta, string titulo, string descripcion, int idnivelexperiencia, string horario, decimal salario, string moneda, string tipotrabajo, string cargo, string areadetrabajo, int idempresa)
        {

            try
            {
                UpdateOferta_Result result = Oferta.Update(idoferta, titulo, descripcion, idnivelexperiencia, horario, salario, moneda, tipotrabajo, cargo, areadetrabajo, idempresa);

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

        public ActionResult Delete(int id)
        {

            try
            {
                using (var db = new VIDAESTUDIANTILEntities())
                {
                    var oferta = db.OFERTALABORAL.First(f => f.IdOfertaLaboral == id);
                    db.OFERTALABORAL.Remove(oferta);
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
    }
}