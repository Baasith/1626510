using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace BruMagic
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("1626510_DBco5027");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var Manager = new UserManager<IdentityUser>(userStore);
            var user = Manager.Find(LoginEmail.Text, LoginPassword.Text);
            
            if (user!= null)
            {
                LogUserIn(Manager, user);
                Server.Transfer("loginpage.aspx", true);
            }
            else
            {
                litLoginError.Text = "Invalid Username or Password.";
            }
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
        }
    }
}