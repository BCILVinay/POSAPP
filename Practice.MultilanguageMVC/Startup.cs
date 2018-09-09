using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Practice.MultilanguageMVC.Startup))]
namespace Practice.MultilanguageMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
