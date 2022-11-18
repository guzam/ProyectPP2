using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ProyectPP2
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                //defaults: new { controller = "Servicio", action = "Create", id = UrlParameter.Optional } //Si no le indico ruta Ira aquí por default
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }

            );
        }
    }
}
