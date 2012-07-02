using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class Demos_WebServices : BasePage
{

  [WebMethod]
  public static string HelloWorld(string yourName)
  {
    return string.Format("Hello {0}", yourName);
  }

  protected void Page_Load(object sender, EventArgs e)
  {

  }
}