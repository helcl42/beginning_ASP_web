using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_Reviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string GetBooleanText(object booleanValue)
    {
        bool authorized = (bool)booleanValue;
        if (authorized)
        {
            return "Yes";
        }
        else
        {
            return "No";
        }
    }
}