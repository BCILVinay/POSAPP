using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Practice.ASP_MultiLanguageApp.Startup))]
namespace Practice.ASP_MultiLanguageApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
