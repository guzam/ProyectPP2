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
    public class EquipoController : Controller
    {
        private PROJECT_PP2_DB_ORIGINALEntities db = new PROJECT_PP2_DB_ORIGINALEntities();

        // GET: Equipo
        public ActionResult Index()
        {
            var equipo = db.Equipo.Include(e => e.Cliente).Include(e => e.TipoEquipo);
            return View(equipo.ToList());
        }

        // GET: Equipo/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Equipo equipo = db.Equipo.Find(id);
            if (equipo == null)
            {
                return HttpNotFound();
            }
            return View(equipo);
        }

        // GET: Equipo/Create
        public ActionResult Create()
        {
            ViewBag.idCLiente = new SelectList(db.Cliente, "idCliente", "nombre");
            ViewBag.idTipoEquipo = new SelectList(db.TipoEquipo, "idTipoEquipo", "nombre");
            return View();
        }

        // POST: Equipo/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idEquipo,idTipoEquipo,nroSerie,marca,modelo,fechaIngreso,fechaEgreso,codigoInterno,Anexos,idCLiente")] Equipo equipo)
        {
            if (ModelState.IsValid)
            {
                db.Equipo.Add(equipo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.idCLiente = new SelectList(db.Cliente, "idCliente", "nombre", equipo.idCLiente);
            ViewBag.idTipoEquipo = new SelectList(db.TipoEquipo, "idTipoEquipo", "nombre", equipo.idTipoEquipo);
            return View(equipo);
        }

        // GET: Equipo/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Equipo equipo = db.Equipo.Find(id);
            if (equipo == null)
            {
                return HttpNotFound();
            }
            ViewBag.idCLiente = new SelectList(db.Cliente, "idCliente", "nombre", equipo.idCLiente);
            ViewBag.idTipoEquipo = new SelectList(db.TipoEquipo, "idTipoEquipo", "nombre", equipo.idTipoEquipo);
            return View(equipo);
        }

        // POST: Equipo/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idEquipo,idTipoEquipo,nroSerie,marca,modelo,fechaIngreso,fechaEgreso,codigoInterno,Anexos,idCLiente")] Equipo equipo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(equipo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idCLiente = new SelectList(db.Cliente, "idCliente", "nombre", equipo.idCLiente);
            ViewBag.idTipoEquipo = new SelectList(db.TipoEquipo, "idTipoEquipo", "nombre", equipo.idTipoEquipo);
            return View(equipo);
        }

        // GET: Equipo/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Equipo equipo = db.Equipo.Find(id);
            if (equipo == null)
            {
                return HttpNotFound();
            }
            return View(equipo);
        }

        // POST: Equipo/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Equipo equipo = db.Equipo.Find(id);
            db.Equipo.Remove(equipo);
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
