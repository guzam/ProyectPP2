using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ProyectPP2.Models;

namespace ProyectPP2.Controllers
{
    public class ServicioController : Controller
    {
        private PROJECT_PP2_DB_ORIGINALEntities db = new PROJECT_PP2_DB_ORIGINALEntities();

        // GET: Servicio
        public ActionResult Index()
        {
            var servicio = db.Servicio.Include(s => s.Cliente).Include(s => s.Empleado).Include(s => s.Equipo).Include(s => s.Estado);
            return View(servicio.ToList());
        }

        // GET: Servicio/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Servicio servicio = db.Servicio.Find(id);
            if (servicio == null)
            {
                return HttpNotFound();
            }
            return View(servicio);
        }

        // GET: Servicio/Create
        public ActionResult Create()
        {
            ViewBag.idCliente = new SelectList(db.Cliente, "idCliente", "nombre");
            ViewBag.tecnicoACargo = new SelectList(db.Empleado, "nroLegajo", "nombre");
            ViewBag.idEquipo = new SelectList(db.Equipo, "idEquipo", "nroSerie");
            ViewBag.idEstado = new SelectList(db.Estado, "idEstado", "nombre");
            return View();
        }

        // POST: Servicio/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idService,nroService,tipoService,cantidadEquipos,fechaInicio,fechaFin,fechaPresupuestado,fechaPresupAprobado,tecnicoACargo,idCliente,idEquipo,idEstado")] Servicio servicio)
        {
            if (ModelState.IsValid)
            {
                db.Servicio.Add(servicio);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idCliente = new SelectList(db.Cliente, "idCliente", "nombre", servicio.idCliente);
            ViewBag.tecnicoACargo = new SelectList(db.Empleado, "nroLegajo", "nombre", servicio.tecnicoACargo);
            ViewBag.idEquipo = new SelectList(db.Equipo, "idEquipo", "nroSerie", servicio.idEquipo);
            ViewBag.idEstado = new SelectList(db.Estado, "idEstado", "nombre", servicio.idEstado);
            return View(servicio);
        }

        // GET: Servicio/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Servicio servicio = db.Servicio.Find(id);
            if (servicio == null)
            {
                return HttpNotFound();
            }
            ViewBag.idCliente = new SelectList(db.Cliente, "idCliente", "nombre", servicio.idCliente);
            ViewBag.tecnicoACargo = new SelectList(db.Empleado, "nroLegajo", "nombre", servicio.tecnicoACargo);
            ViewBag.idEquipo = new SelectList(db.Equipo, "idEquipo", "nroSerie", servicio.idEquipo);
            ViewBag.idEstado = new SelectList(db.Estado, "idEstado", "nombre", servicio.idEstado);
            return View(servicio);
        }

        // POST: Servicio/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idService,nroService,tipoService,cantidadEquipos,fechaInicio,fechaFin,fechaPresupuestado,fechaPresupAprobado,tecnicoACargo,idCliente,idEquipo,idEstado")] Servicio servicio)
        {
            if (ModelState.IsValid)
            {
                db.Entry(servicio).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idCliente = new SelectList(db.Cliente, "idCliente", "nombre", servicio.idCliente);
            ViewBag.tecnicoACargo = new SelectList(db.Empleado, "nroLegajo", "nombre", servicio.tecnicoACargo);
            ViewBag.idEquipo = new SelectList(db.Equipo, "idEquipo", "nroSerie", servicio.idEquipo);
            ViewBag.idEstado = new SelectList(db.Estado, "idEstado", "nombre", servicio.idEstado);
            return View(servicio);
        }

        // GET: Servicio/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Servicio servicio = db.Servicio.Find(id);
            if (servicio == null)
            {
                return HttpNotFound();
            }
            return View(servicio);
        }

        // POST: Servicio/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Servicio servicio = db.Servicio.Find(id);
            db.Servicio.Remove(servicio);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
