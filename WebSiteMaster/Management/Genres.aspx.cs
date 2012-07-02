using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Management_Genres : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        switch (e.Row.RowType)
        {
            case DataControlRowType.DataRow:
                DataRowView myDataRowView = (DataRowView)e.Row.DataItem;
                if (Convert.ToInt32(myDataRowView["NumberOfReviews"]) > 0)
                {
                    LinkButton deleteLink = e.Row.FindControl("DeleteLink") as LinkButton;
                    //IF IT'S NOT IN EDIT MODE 
                    if (deleteLink != null)
                    {
                 //       deleteLink.Enabled = false;
                    }
                }
                break;
        }
    }


    protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception != null && e.Exception is SqlException)
        {
            SqlException myException = (SqlException)e.Exception;
            if (myException.Number == 547)
            {
                ErrorMessage.Text = @"Sorry, you can't delete this genre because it has associated reviews that you need delete first.";
                e.ExceptionHandled = true;
            }
        }
    }
}