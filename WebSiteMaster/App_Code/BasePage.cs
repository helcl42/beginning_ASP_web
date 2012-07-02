using System;
using System.Web;
public class BasePage : System.Web.UI.Page
{

  private void Page_PreInit(object sender, EventArgs e)
  {
    HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
    if (preferredTheme != null)
    {
      Page.Theme = preferredTheme.Value;
    }
  }

  private void Page_PreRender(object sender, EventArgs e)
  {
    if (this.Title == "Untitled Page" || string.IsNullOrEmpty(this.Title))
    {
      throw new Exception("Page title cannot be \"Untitled Page\" or an empty string.");
    }
  }

  public BasePage()
  {
    this.PreRender += new EventHandler(Page_PreRender);
    this.PreInit += new EventHandler(Page_PreInit);
  }
}