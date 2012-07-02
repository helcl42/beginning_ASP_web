using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;

public partial class Reviews_ViewDetails : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int reviewId = Convert.ToInt32(Request.QueryString.Get("ReviewId"));
        Review myReview = Cache["Reviews" + reviewId.ToString()] as Review;

        Label1.Text = "In the cache.";
        if (myReview == null)
        {
            Label1.Text = "Not in Cache.";
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                myReview = (from r in myEntities.Review
                            where r.Id == reviewId
                            select r).SingleOrDefault();

                if (myReview != null)
                {
                    Cache.Insert("Reviews" + reviewId.ToString(), myReview, null, DateTime.Now.AddMinutes(20), System.Web.Caching.Cache.NoSlidingExpiration);
                }
            }
        }

        if (myReview != null)
        {
            TitleLabel.Text = myReview.Title;
            SummaryLabel.Text = myReview.Summary;
            BodyLabel.Text = myReview.Body;
            Title = myReview.Title;
            MetaDescription = myReview.Summary;
        }
    }
}