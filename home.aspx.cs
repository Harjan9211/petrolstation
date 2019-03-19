using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    public string latitude;
    public string longitude;
    public string x = "";
    public string API = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    
	 latitude=TextBox1.Text;
	 longitude=TextBox2.Text;
	  x="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d13792.051195608108!2d"+latitude+"!3d"+longitude+"!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1552996902653";
     API = "1230909!23asw";
    
    }
}