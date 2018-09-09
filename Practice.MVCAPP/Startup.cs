using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Practice.MVCAPP.Startup))]
namespace Practice.MVCAPP
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
