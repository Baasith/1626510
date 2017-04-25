using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace BruMagic
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("brumagicultimate@gmail.com", email.Text);

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("brumagicultimate@gmail.com", "teambahagia");
            smtpClient.Credentials = credentials;
            msg = new MailMessage("brumagicultimate@gmail.com", email.Text);
            msg.Subject = "comment from" + name.Text;
            msg.Body = comment.Text;

            try
            {
                smtpClient.Send(msg);
                status.Text = "<p>mail sent sucessfully</p>";
            }
            catch (Exception ex)
            {
                status.Text = "<p>sending fail: </p>" + ex.Message + "i" + ex.InnerException + "</p>";
            }
        }
    }
}