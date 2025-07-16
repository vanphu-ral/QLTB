using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using NLog.Web;
using System;
using System.Reflection;
using System.Threading.Tasks;

namespace MledNew2023.MVC
{
	public class Program
	{
		[Obsolete]
		private static readonly NLog.Logger _Nlog = NLogBuilder.ConfigureNLog("nlog.config").GetCurrentClassLogger();

		[Obsolete]
		public async static Task Main(string[] args)
		{
			var host = CreateHostBuilder(args).Build();
			using (var scope = host.Services.CreateScope())
			{
				var services = scope.ServiceProvider;
				var loggerFactory = services.GetRequiredService<ILoggerFactory>();
				var logger = loggerFactory.CreateLogger("app");
				try
				{
					var userManager = services.GetRequiredService<UserManager<IdentityUser>>();
					var roleManager = services.GetRequiredService<RoleManager<IdentityRole>>();
					await Seeds.DefaultRoles.SeedAsync(userManager, roleManager);
					await Seeds.DefaultUsers.SeedBasicUserAsync(userManager, roleManager);
					_Nlog.Info(String.Format("Finished Seeding Default Data", "Application Starting"));
				}
				catch (Exception ex)
				{
					_Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
					"Program.Main",
					ex.Message,
					ex.StackTrace,
					ex.InnerException,
					(ex.InnerException == null ? string.Empty : ex.InnerException.Message));
				}
			}
			host.Run();
		}
		public static IHostBuilder CreateHostBuilder(string[] args) =>
			Host.CreateDefaultBuilder(args)
				.ConfigureWebHostDefaults(webBuilder =>
				{
					webBuilder.UseStartup<Startup>();
				});
	}
}