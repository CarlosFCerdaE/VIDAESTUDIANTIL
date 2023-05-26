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
    public class FacultadController : Controller
    {
        // GET: Facultad
        public ActionResult Index()
        {
            return View("Facultad");
        }
        public ActionResult Lista(){
            try
            {
                return Json(
                        new
                        {
                            success = true,
                            data = Facultad.Lista(),
                            message = "ok"
                        },
                        JsonRequestBehavior.AllowGet
                    );
            }
            catch(Exception ex) {
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

        public ActionResult Guardar(String nombre)
        {
            try
            {
                SaveFacultad_Result result = Facultad.Save(nombre);

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
        public ActionResult Lista()
        {
            HttpClient httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri(baseURL);
            httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage response = httpClient.GetAsync("/api/facultades").Result;


            string data = response.Content.ReadAsStringAsync().Result;
            List<FACULTAD> facultades = JsonConvert.DeserializeObject<List<FACULTAD>>(data);

            return Json(
                new
                {
                    success = true,
                    data = facultades,
                    message = "done"
                },
                JsonRequestBehavior.AllowGet
                );
        }

        public ActionResult Guardar(String nombre)
        {
            try
            {
                FACULTAD facultad = new FACULTAD();
                facultad.Nombre = nombre;

                HttpClient httpClient = new HttpClient();
                httpClient.BaseAddress = new Uri(baseURL);
                httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                string tarjetaJson = JsonConvert.SerializeObject(facultad);
                HttpContent body = new StringContent(tarjetaJson, Encoding.UTF8, "application/json");


                HttpResponseMessage response = httpClient.PostAsync("/api/facultades", body).Result;
                if (response.IsSuccessStatusCode)
                {
                    return Json(
                        new
                        {
                            success = true,
                            message = "Facultad creada satisfactoriamente"
                        }, JsonRequestBehavior.AllowGet);
                }



                throw new Exception("Error al guardar");
            }

            catch (Exception ex)
            {
                return Json(
                    new
                    {
                        success = false,
                        message = ex.InnerException
                    }, JsonRequestBehavior.AllowGet);
            }
        }

        */
        public ActionResult Actualizar(int id, string nombre, bool estado)
        {

            try
            {
                UpdateFacultad_Result result = Facultad.Update(id, nombre, estado);

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
                    var facultad = db.FACULTAD.First(f => f.IdFacultad == id);
                    db.FACULTAD.Remove(facultad);
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