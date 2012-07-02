using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_AddEditReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Get("Id") != null)
        {
            DetailsView1.DefaultMode = DetailsViewMode.Edit;
        }
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        EndEditing();
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        e.Values["UpdateDateTime"] = DateTime.Now;
    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        EndEditing();
    }

    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        e.NewValues["UpdateDateTime"] = DateTime.Now;
    }

    private void EndEditing()
    {
        Response.Redirect("Reviews.aspx");
    }
}