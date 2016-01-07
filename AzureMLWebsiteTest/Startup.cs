using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AzureMLWebsiteTest.Startup))]
namespace AzureMLWebsiteTest
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
