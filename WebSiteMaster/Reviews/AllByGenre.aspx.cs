using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;

public partial class Reviews_AllByGenre : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {
      using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
      {
          var genres = from genre in myEntities.Genre
                       orderby genre.Name
                       select new
                       {
                           genre.Name,
                           genre.Reviews
                       };

          Repeater1.DataSource = genres;
          Repeater1.DataBind();
      }
  }
}