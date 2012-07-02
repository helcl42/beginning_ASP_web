using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class _SignUp : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        
    protected void CreateUserWizard1_SendingMail(object sender, MailMessageEventArgs e)
    {
        SmtpClient client = new SmtpClient();
        client.EnableSsl = true;
        client.Send(e.Message);
        e.Cancel = true;
    }
}