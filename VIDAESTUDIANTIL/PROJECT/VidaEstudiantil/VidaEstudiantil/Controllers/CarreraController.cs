using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Mvc;
using VidaEstudiantil.Models;
using VidaEstudiantil.Models.Clases;

namespace VidaEstudiantil.Controllers
{
    public class CarreraController : Controller
    {
        // GET: Facultad
        public ActionResult Index()
        {
            return View("Carrera");
        }
        public ActionResult Lista() {
            try
            {
                return Json(
                        new
                        {
                            success = true,
                            data = Carrera.Lista(),
                            message = "ok"
                        },
                        JsonRequestBehavior.AllowGet
                    );
            }
            catch (Exception ex) {
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

        public ActionResult Guardar(String nombre, int idFacultad)
        {
            try
            {
                SaveCarrera_Result result = Carrera.Save(nombre, idFacultad);

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
        public ActionResult Actualizar(int id, string nombre, bool estado,int idFacultad)
        {

            try
            {
                UpdateCarrera_Result result = Carrera.Update(id, nombre, estado,idFacultad);

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
                using(var db = new VIDAESTUDIANTILEntities())
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
    }
}