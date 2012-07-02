using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Source : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {
    Server.Transfer("Target.aspx?Test=SomeValue");
  }
}