using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides access to the various mail related classes

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }

  protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
  {
    if (!string.IsNullOrEmpty(PhoneHome.Text) || !string.IsNullOrEmpty(PhoneBusiness.Text))
    {
      args.IsValid = true;
    }
    else
    {
      args.IsValid = false;
    }
  }
  protected void SendButton_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      string mailBody = Cache["ContactFromMailBody"] as string;

      if (string.IsNullOrEmpty(mailBody))
      {
          string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
          mailBody = File.ReadAllText(fileName);
          Cache.Insert("ContactFromMailBody", mailBody, new CacheDependency(fileName));
      }

      mailBody = mailBody.Replace("##Name##", Name.Text);
      mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
      mailBody = mailBody.Replace("##HomePhone##", PhoneHome.Text);
      mailBody = mailBody.Replace("##BusinessPhone##", PhoneBusiness.Text);
      mailBody = mailBody.Replace("##Comments##", Comments.Text);

      try
      {
          MailMessage myMessage = new MailMessage();
          myMessage.Subject = "Response from web site";
          myMessage.Body = mailBody;

          myMessage.From = new MailAddress(AppConfiguration.FromAddress, AppConfiguration.FromName);
          myMessage.To.Add(new MailAddress(AppConfiguration.ToAddress, AppConfiguration.ToName));

          SmtpClient mySmtpClient = new SmtpClient();
          mySmtpClient.Send(myMessage);

          Message.Visible = true;
          MessageSentPara.Visible = true;
          FormTable.Visible = false;
          // System.Threading.Thread.Sleep(5000);
      }
      catch
      {
          Message.Text = "An Error occured while sending your e-mail. Please try it again later.";
      }
      finally
      {
          Message.Visible = true;
      }
    }
  }
}