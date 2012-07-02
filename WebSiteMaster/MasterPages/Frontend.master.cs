using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPages_Frontend : System.Web.UI.MasterPage
{
  protected void Page_Load(object sender, EventArgs e)
  {
    if (!Page.IsPostBack)
    {
      string selectedTheme = Page.Theme;
      HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
      if (preferredTheme != null)
      {
        selectedTheme = preferredTheme.Value;
      }
      if (!string.IsNullOrEmpty(selectedTheme) && ThemeList.Items.FindByValue(selectedTheme) != null)
      {
        ThemeList.Items.FindByValue(selectedTheme).Selected = true;
      }
    }
    switch (Page.Theme.ToLower())
    {
      case "darkgrey":
        Menu1.Visible = false;
        TreeView1.Visible = true;
        break;
      default:
        Menu1.Visible = true;
        TreeView1.Visible = false;
        break;
    }
  }

  protected void ThemeList_SelectedIndexChanged(object sender, EventArgs e)
  {
    HttpCookie preferredTheme = new HttpCookie("PreferredTheme");
    preferredTheme.Expires = DateTime.Now.AddMonths(3);
    preferredTheme.Value = ThemeList.SelectedValue;
    Response.Cookies.Add(preferredTheme);
    Response.Redirect(Request.Url.ToString());
  }
}
