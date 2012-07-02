using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;

public partial class Reviews_All : BasePage
{
  protected void Page_Load(object sender, EventArgs e)
  {
      using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
      {
          /*
          var reviews = (from review in myEntities.Review.Include("Genre")
                        where review.Authorized == true
                        orderby review.CreateDateTime descending
                        select review).Skip(10).Take(10);
          */
          var allReviews = from review in myEntities.Review
                           where review.Authorized == true
                           select new { review.Id, review.Title, review.Genre.Name, review.Summary, review.Body };
          /*
          var allReviewss = from review in myEntities.Review
                            select new
                            {
                                Number = review.Id,
                                Title = review.Title.Substring(0, 20),
                                review.Genre.Name,
                                HasBeenUpdated = (review.UpdateDateTime > review.CreateDateTime)
                            };
          */
          /*
          var allGenres = from genre in myEntities.Genre      
                          orderby genre.Name
                          select genre;
          */
          Repeater1.DataSource = allReviews;          
          Repeater1.DataBind();
      }
  }
}