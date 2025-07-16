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
    public class ImageServeMiddleware
    {
        private IWebHostEnvironment _env;
        private readonly RequestDelegate _next;
        private String _cacheFolder;

        public ImageServeMiddleware(IWebHostEnvironment env, RequestDelegate next)
        {
            _env = env;
            _next = next;
            _cacheFolder = Path.Combine(Path.Combine(_env.ContentRootPath, "Data_Stores", "salt", "cache"));
            checkAndCreateCacheDir();
        }

        public async Task InvokeAsync(HttpContext context)
        {
            List<string> paths = context.Request.Path.Value.Split("/").ToList();
            if ("GET".Equals(context.Request.Method) && paths.Count >= 3)
            {
                var req = context.Request;
                byte[] buffer = getFile(paths[1], paths.Last());
                if (buffer != null)
                {
                    if (paths.Count == 3)
                    {
                        context.Response.Headers.Add("Content-Type", MimeTypesMap.GetMimeType(paths.Last()));
                        await context.Response.BodyWriter.WriteAsync(buffer);

                        //await context.Response.BodyWriter.FlushAsync();
                    }
                    else
                    {
                        int[] sizes = paths[2].ToLower().Split("x").Select(x => int.Parse(x)).ToArray();
                        if (sizes.Length == 2)
                        {
                            req.Query.TryGetValue("m", out StringValues mode);
                            string m = "crop";
                            if (mode.Count > 0)
                            {
                                m = mode.FirstOrDefault();
                            }
                            //
                            if (System.IO.File.Exists(Path.Combine(_cacheFolder, $"{sizes[0]}x{sizes[1]}", $"{m}_{paths.Last()}")) == false)
                            {
                                using (Image thumbnail = Image.Load(buffer))
                                {
                                    thumbnail.Mutate(x => x.Resize(new ResizeOptions
                                    {
                                        Size = new Size(sizes[0], sizes[1]),
                                        Mode = m == "fill" ? ResizeMode.Pad : ResizeMode.Crop,
                                        Sampler = KnownResamplers.Lanczos3,
                                    }).BackgroundColor(new Rgba32(255, 255, 255)));
                                    if (Directory.Exists(Path.Combine(_cacheFolder, $"{sizes[0]}x{sizes[1]}")) == false)
                                    {
                                        Directory.CreateDirectory(Path.Combine(_cacheFolder, $"{sizes[0]}x{sizes[1]}"));
                                    }
                                    thumbnail.Save(Path.Combine(_cacheFolder, $"{sizes[0]}x{sizes[1]}", $"{m}_{paths.Last()}"));
                                }
                            }

                            //

                            byte[] cacheBuffer = System.IO.File.ReadAllBytes(Path.Combine(_cacheFolder, $"{sizes[0]}x{sizes[1]}", $"{m}_{paths.Last()}"));
                            //
                            await context.Response.BodyWriter.WriteAsync(cacheBuffer);
                            //await context.Response.BodyWriter.FlushAsync();
                        }
                        else
                        {
                            context.Response.StatusCode = ((int)HttpStatusCode.NotFound);
                        }
                    }
                }
                else
                {
                    context.Response.StatusCode = ((int)HttpStatusCode.NotFound);
                }
            }
            else if ("GET".Equals(context.Request.Method) && paths.Count == 2)
            {
                if (paths[1] == "blank")
                {
                    context.Response.Headers.Add("Content-Type", MimeTypesMap.GetMimeType("noimages.png"));
                    await context.Response.BodyWriter.WriteAsync(getBlankImage());
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
            var a = Path.Combine(_env.ContentRootPath, "wwwroot", "uploads", "Images", type, name);
            if (System.IO.File.Exists(Path.Combine(_env.ContentRootPath, "wwwroot", "uploads", "Images", type, name)))
            {
                return System.IO.File.ReadAllBytes(Path.Combine(_env.ContentRootPath, "wwwroot", "uploads", "Images", type, name));
            }
            return null;
        }
        public byte[] getBlankImage()
        {
            if (System.IO.File.Exists(Path.Combine(_env.ContentRootPath, "wwwroot", "assets", "img", "noimages.png")))
            {
                return System.IO.File.ReadAllBytes(Path.Combine(_env.ContentRootPath, "wwwroot", "assets", "img", "noimages.png"));
            }
            return null;
        }
        private void checkAndCreateCacheDir()
        {
            if (Directory.Exists(Path.Combine(_env.ContentRootPath, "Data_Stores", "salt")) == false)
            {
                Directory.CreateDirectory(Path.Combine(_env.ContentRootPath, "Data_Stores", "salt"));
            }
            if (Directory.Exists(_cacheFolder) == false)
            {
                Directory.CreateDirectory(_cacheFolder);
            }
        }

    }
}