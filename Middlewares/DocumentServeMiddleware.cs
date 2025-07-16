using HeyRed.Mime;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Primitives;
using SixLabors.ImageSharp;
using SixLabors.ImageSharp.PixelFormats;
using SixLabors.ImageSharp.Processing;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Middlewares
{
    public class DocumentServeMiddleware
    {
        private IWebHostEnvironment _env;
        private readonly RequestDelegate _next;

        public DocumentServeMiddleware(IWebHostEnvironment env, RequestDelegate next)
        {
            _env = env;
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            List<string> paths = context.Request.Path.Value.Split("/").ToList();
            if ("GET".Equals(context.Request.Method) && paths.Count == 3)
            {
                var req = context.Request;
                byte[] buffer = getFile(paths[1], paths.Last());
                if (buffer != null)
                {

                    context.Response.Headers.Add("Content-Type", MimeTypesMap.GetMimeType(paths.Last()));
                    await context.Response.BodyWriter.WriteAsync(buffer);

                    //await context.Response.BodyWriter.FlushAsync();
                }
                else
                {
                    context.Response.StatusCode = ((int)HttpStatusCode.NotFound);
                }
            }
            else
            {
                await _next(context);
            }
        }
        // public byte[] getFile(string name)
        // {
        //     if (System.IO.File.Exists(Path.Combine(_env.ContentRootPath, "Data_Stores", "salt", "media", name)))
        //     {
        //         return System.IO.File.ReadAllBytes(Path.Combine(_env.ContentRootPath, "Data_Stores", "salt", "media", name));
        //     }
        //     return null;
        // }
        public byte[] getFile(string type, string name)
        {
            if (System.IO.File.Exists(Path.Combine(_env.ContentRootPath, "wwwroot", "uploads", "Documents", type, name)))
            {
                return System.IO.File.ReadAllBytes(Path.Combine(_env.ContentRootPath, "wwwroot", "uploads", "Documents", type, name));
            }
            return null;
        }

    }
}