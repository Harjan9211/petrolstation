// Store Module
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class store : System.Web.UI.Page
{
    SqlCommand com = new SqlCommand();
    SqlDataAdapter adap = new SqlDataAdapter();
    SqlConnection con = new SqlConnection(); // Sql Connection 
    DataSet d = new DataSet();// Data Set Class
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    private void deleterow(int sno)
    {
        con.Close();
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
        com.CommandType = CommandType.Text;
        com.CommandText = "delete from slip  where sno=" + sno;
        adap.DeleteCommand = com;
        com.Connection = con;
        try
        {
            con.Open();
            com.ExecuteNonQuery();


        }
        catch (Exception e1)
        {
        }
    }
    private void updaterow(int sno)
    {
        // Mapping For Connection Set Class.
        con.Close();
        con.ConnectionString = @"Data Source=DESKTOP-17CKR5L;Initial Catalog=DATABASE;Integrated Security=True";
        com.CommandType = CommandType.Text;
        // DML Query To Update Extisting Entry
        com.CommandText = "update slip set validate='1' where sno="+sno;
        adap.UpdateCommand = com;
        com.Connection = con;
        try
        {
            con.Open();
            com.ExecuteNonQuery();
           

        }
        catch (Exception e1)
        {
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[7].FindControl("CheckBox1") as CheckBox);
            int sno = Convert.ToInt16(row.Cells[0].Text);
            if (status.Checked)
            {
                updaterow(sno);
            }
            else
            {

            }

        }
        Response.Redirect("storereport.aspx");// Page Redirection
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[7].FindControl("CheckBox1") as CheckBox);
            int sno = Convert.ToInt16(row.Cells[0].Text);
            if (status.Checked)
            {
                deleterow(sno);
            }
            else
            {

            }
            Response.Redirect("storereport.aspx");
        }
    }
}