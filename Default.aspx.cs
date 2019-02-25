// Defualt module for Connection and SQL Class Interface
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
 

using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    SqlCommand com = new SqlCommand();   // SQl Class Object 
    SqlDataAdapter adap = new SqlDataAdapter();
    SqlConnection con = new SqlConnection();
    DataSet d = new DataSet();   // Sql Data Set Object
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = DateTime.Today.ToShortDateString(); // TYpe Caste FOr date
        Label1.Text = str;
    }
    string str = "";
    protected void Button2_Click(object sender, EventArgs e)
    {
          
        if(RadioButton1.Checked==true)
        {
            str="petrol";
        }
        else
        {
            str="diesel";
        }
        
       // Mapping For Connection String 
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
        com.CommandType = CommandType.Text;
        // DML Query 
        com.CommandText = "insert into slip (type_fuel,date_filling,empno,name,vehicle,quantity)values('" + str + "','" + DateTime.Today.ToShortDateString() +"','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        adap.SelectCommand = com;
        com.Connection = con;
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            Response.Redirect("clientreport.aspx");
            // Page Redirection
             
        }
        catch (Exception e1)
        {
        }
         
       


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";


    }
}