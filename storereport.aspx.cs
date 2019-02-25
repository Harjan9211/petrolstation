using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class storereport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Session["date1"] = Calendar1.SelectedDate.ToShortDateString();
    }
}