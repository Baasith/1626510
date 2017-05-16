using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security; 

namespace BruMagic
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("1626510_DBco5027");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var rolestore = new RoleStore<IdentityRole>(identityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(rolestore);

            var user = new IdentityUser() { UserName = TextBox1.Text, Email = TextBox2.Text };
            IdentityResult result = manager.Create(user, TextBox3.Text);
            if (result.Succeeded)
            {
                IdentityRole endUserRole = new IdentityRole("endUser");
                rolemanager.Create(endUserRole);
                Server.Transfer("loginpage.aspx", true);
            }
            else
            {
                litRegisterError.Text = "An error occured:" + result.Errors.FirstOrDefault();
            }

        }
    }
}