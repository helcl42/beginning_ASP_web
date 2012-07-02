using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;


public partial class PhotoAlbums_Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(DropDownList1.SelectedValue))
        {
            int photoAlbumId = Convert.ToInt32(DropDownList1.SelectedValue);
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                string photoAlbumOwner = (from p in myEntities.PhotoAlbum
                                          where p.Id == photoAlbumId
                                          select p.UserName).Single();

                if (User.Identity.IsAuthenticated && User.Identity.Name == photoAlbumOwner || User.IsInRole("Managers"))
                {
                    EditLink.NavigateUrl = string.Format("~/ManagePhotoAlbum.aspx?PhotoalbumId={0}", DropDownList1.SelectedValue);
                    EditLink.Visible = true;
                }
                else 
                {
                    EditLink.Visible = false;
                }

                if (!string.IsNullOrEmpty(photoAlbumOwner))
                {
                    ProfileCommon ownerProfile = Profile.GetProfile(photoAlbumOwner);
                    UserNameLabel.Text = photoAlbumOwner;
                    BioLabel.Text = ownerProfile.Bio;
                    PhotoAlbumDetails.Visible = true;
                }
                else
                {
                    PhotoAlbumDetails.Visible = false;
                }
            }
        }
        else
        {
            EditLink.Visible = false;
        }
    }
}