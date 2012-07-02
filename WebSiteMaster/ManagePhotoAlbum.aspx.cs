using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PlanetWroxModel;
using System.Web.Security;



public partial class _ManagePhotoAlbum : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int photoAlbumId = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"));

        using (PlanetWroxEntities myPlanet = new PlanetWroxEntities())
        {
            string photoAlbumOwner = (from p in myPlanet.PhotoAlbum
                                      where p.Id == photoAlbumId
                                      select p.UserName).Single();
            if (User.Identity.Name != photoAlbumOwner && !User.IsInRole("Managers"))
            {
                Response.Redirect("~/");
            }
        }
    }

    protected void EntityDataSource1_Inserting(object sender, EntityDataSourceChangingEventArgs e)
    {
        int photoAlbumId = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"));
        Picture myPicture = (Picture)e.Entity;
        myPicture.PhotoAlbumId = photoAlbumId;

        FileUpload FileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");
        string virtualFolder = "~/GigPics/";
        string physicalFolder = Server.MapPath(virtualFolder);
        string fileName = Guid.NewGuid().ToString();
        string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
        myPicture.ImageUrl = virtualFolder + fileName + extension;
    }

    protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
    {
        FileUpload FileUpload1 = (FileUpload)ListView1.InsertItem.FindControl("FileUpload1");

        if (!FileUpload1.HasFile || !FileUpload1.FileName.ToLower().EndsWith(".jpg"))
        {
            CustomValidator cusValImage = (CustomValidator)ListView1.InsertItem.FindControl("cusValImage");
            cusValImage.IsValid = false;
            e.Cancel = true;
        }
    }

    protected void ListView1_ItemCreated(object sender, ListViewItemEventArgs e)
    {
    /*    switch(e.Item.ItemType)
        {
            case ListViewItemType.DataItem:
                Button deleteButton = (Button)e.Item.FindControl("DeleteButton");
                deleteButton.Visible = Roles.IsUserInRole("Managers");
                break;
        }
     */ 
    }
}