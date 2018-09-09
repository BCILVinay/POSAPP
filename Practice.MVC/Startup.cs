using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Practice.MVC.Startup))]
namespace Practice.MVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
