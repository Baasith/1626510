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

            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("brumagicultimate@gmail.com", "teambahagia");
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = userpass;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(email.Text);
            msg.To.Add (new MailAddress("brumagicultimate@gmail.com"));

            msg.Subject = "Subject : " + subject.Text;
            msg.IsBodyHtml = true;
            msg.Body = "Message From : " + name.Text + ", Email :" + email.Text + ", Message : " + comment.Text;

            try
            {
                smtpClient.Send(msg);
                status.Text = "<p> Message sent sucesssfully </p>";
            }
            catch (Exception ex)
            {
                status.Text = "<p> Sending Fail: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}