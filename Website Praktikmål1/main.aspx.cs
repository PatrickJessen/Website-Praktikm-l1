using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Text;

namespace Website_Praktikmål1
{
    public partial class WebForm1 : System.Web.UI.Page
    {   
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {

            //GetQueryFromDB();
        }

        //void GetQueryFromDB()
        //{

        //    if (!Page.IsPostBack)
        //    {
        //        SqlConnection con = new SqlConnection();
        //        con.ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ToString();
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand();
        //        cmd.CommandText = $"SELECT EducationName, TipDesc, GoalTitle, GoalDesc FROM Education INNER JOIN EducationNumber ON Education.EducationNumberId = EducationNumber.EducationNumberId INNER JOIN Tips On EducationNumber.EducationNumberId = Tips.EducationNumberId INNER JOIN Tip On Tips.TipId = Tip.PeriodId INNER JOIN EduGoals ON EducationNumber.EducationNumberId = EduGoals.EducationNumberId INNER JOIN Goal On EduGoals.GoalId = Goal.PeriodId ";
        //        cmd.Connection = con;
        //        SqlDataReader rd = cmd.ExecuteReader();
        //        table.Append("<table border='1'>");
        //        table.Append("<tr><th>EducationName</th><th>TipDesc</th><th>GoalTitle</th><th>GoalDesc</th>");
        //        table.Append("</tr>");

        //        if (rd.HasRows)
        //        {
        //            while (rd.Read())
        //            {
        //                //table.Append("<tr>");
        //                table.Append("<p>" + rd[0] + "</p>");
        //                table.Append("<p>" + rd[1] + "</p>");
        //                table.Append("<p>" + rd[2] + "</p>");
        //                table.Append("<p>" + rd[3] + "</p>");
        //                //table.Append("</tr>");
        //            }
        //        }
        //        table.Append("</table>");
        //        PlacerHolder1.Controls.Add(new Literal { Text = table.ToString() });
        //        rd.Close();
        //    }



        //    //void ConnectionToDB()
        //    //{
        //    //    try
        //    //    {
        //    //        conn.Open();
        //    //    }
        //    //    catch (Exception e)
        //    //    {

        //    //        throw e;
        //    //    }
        //    //}

        //}
    }
}
    //string sqlSelectEducationName = SqlCommand cmd = new SqlCommand(sqlSelectEducationName, con);
    //SqlDataReader dr = cmd.ExecuteReader();
