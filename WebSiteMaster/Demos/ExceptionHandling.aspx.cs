using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;



public partial class Demos_ExceptionHandling : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Exception test";
        myMessage.Body = "test body";
        try
        {
            myMessage.From = new MailAddress("lubos.helcl@gmail.com");
            myMessage.To.Add(new MailAddress("lubos.helcl@gmail.com"));

            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);
            Message.Text = "Message sent";
        }
        catch 
        {
            Message.Text = "jo notak sem chytil vyjimku";
        }
    }
}