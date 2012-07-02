using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CodeBehind : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {
    Label1.Text = "Hello World; the time is now " + DateTime.Now.ToString();
  }
}