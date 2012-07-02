using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_State : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }
  protected void SetDate_Click(object sender, EventArgs e)
  {
    Label1.Text = DateTime.Now.ToString();
  }
}