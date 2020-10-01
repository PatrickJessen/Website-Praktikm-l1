using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Praktikmål1
{
    public partial class ernæringsassitent : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            TipDescPeriod1();
            TipDescPeriod2();
            TipDescPeriod3();
        }

        void TipDescPeriod1()
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = $"SELECT TipDesc From Tips INNER JOIN Tip ON Tips.TipId = Tip.TipId WHERE EducationNumberId = 1";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<div>");

                if (rd.HasRows)
                {
                    if (rd.Read())
                    {
                        table.Append("<ul>");
                        table.Append("<li>" + rd[0] + "</li>");
                        table.Append("</ul>");
                    }
                }
                table.Append("</div>");

                TipDesc1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
            }

        }
        void TipDescPeriod2()
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = $"SELECT TipDesc From Tips INNER JOIN Tip ON Tips.TipId = Tip.TipId WHERE EducationNumberId = 2";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<div>");

                if (rd.HasRows)
                {
                    if (rd.Read())
                    {
                        table.Append("<ul>");
                        table.Append("<li>" + rd[0] + "</li>");
                        table.Append("</ul>");
                    }
                }
                table.Append("</div>");

                TipDesc2.Controls.Add(new Literal { Text = table.ToString() });             
                rd.Close();
            }
        }

        void TipDescPeriod3()
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["Myconnection"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = $"SELECT TipDesc From Tips INNER JOIN Tip ON Tips.TipId = Tip.TipId WHERE EducationNumberId = 2";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<div>");

                if (rd.HasRows)
                {
                    if (rd.Read())
                    {
                        table.Append("<ul>");
                        table.Append("<li>" + rd[0] + "</li>");
                        table.Append("</ul>");
                    }
                }
                table.Append("</div>");

                TipDesc3.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
            }
        }
    }
}
//table.Append("<tr><th>EducationName</th><th>TipDesc</th><th>GoalTitle</th><th>GoalDesc</th>");
//cmd.CommandText = $"SELECT EducationName, TipDesc, GoalTitle, GoalDesc FROM Education INNER JOIN EducationNumber ON Education.EducationNumberId = EducationNumber.EducationNumberId INNER JOIN Tips On EducationNumber.EducationNumberId = Tips.EducationNumberId INNER JOIN Tip On Tips.TipId = Tip.PeriodId INNER JOIN EduGoals ON EducationNumber.EducationNumberId = EduGoals.EducationNumberId INNER JOIN Goal On EduGoals.GoalId = Goal.PeriodId";