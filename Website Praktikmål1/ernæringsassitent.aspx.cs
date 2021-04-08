using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections.Generic;
using System.Linq;

namespace Website_Praktikmål1
{

    public partial class ernæringsassitent : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            TipDescPeriod1();
            TipDescPeriod2();
            TipDescPeriod3();
            for (int i = 1; i <= 3; i++)
            {
                DisplayData(i);
            }
        }
        #region TipDesc
        void TipDescPeriod1()
        {
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData1();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<div>");



                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<ul>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<li>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</li>");
                    }
                    html.Append("</ul>");
                }

                //Table end.
                html.Append("</div>");

                //Append the HTML string to Placeholder.
                TipDesc1.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        private DataTable GetData1()
        {
            string constr = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT TipDesc From Tips INNER JOIN Tip ON Tips.TipId = Tip.TipId WHERE EducationNumberId = 1"))


                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        void TipDescPeriod2()
        {
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData2();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<div>");



                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<ul>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<li>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</li>");
                    }
                    html.Append("</ul>");
                }

                //Table end.
                html.Append("</div>");

                //Append the HTML string to Placeholder.
                TipDesc2.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        private DataTable GetData2()
        {
            string constr = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT TipDesc From Tips INNER JOIN Tip ON Tips.TipId = Tip.TipId WHERE EducationNumberId = 2"))


                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        void TipDescPeriod3()
        {
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData3();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<div>");



                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<ul>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<li>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</li>");
                    }
                    html.Append("</ul>");
                }

                //Table end.
                html.Append("</div>");

                //Append the HTML string to Placeholder.
                TipDesc3.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        private DataTable GetData3()
        {

            //Connectionstring to database
            string constr = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                //Select Statement from database
                using (SqlCommand cmd = new SqlCommand("SELECT TipDesc From Tips INNER JOIN Tip ON Tips.TipId = Tip.TipId WHERE EducationNumberId = 2"))


                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }

        #endregion



        List<Goal> GoalDesc1(int number)
        {
            List<Goal> goals = new List<Goal>();
            List<string> GoalTitels = new List<string>();
            DataTable dt = GetGoalDesc1(number);

            //Loops through all rows in datatable
            foreach (DataRow dr in dt.Rows)
            {
                //Looking in list GoalTitles for the title
                if (GoalTitels.Contains(dr[0].ToString()))
                {
                    //Loops through list of goals
                    for (int i = 0; i < goals.Count; i++)
                    {
                        //If Goals title is the same as row title
                        if (goals[i].Title == dr[0].ToString())
                        {
                            //add description to list of goal on index i
                            goals[i].description.Add(dr[1].ToString());
                        }
                    }
                }
                //add the title to goal title list
                //Making new object of Goal adding to goals
                //Getting data from the data table
                else
                {
                    GoalTitels.Add(dr[0].ToString());
                    goals.Add(new Goal(dr[0].ToString()));
                    goals.Last().description.Add(dr[1].ToString());
                }
            }
            return goals;
        }

        private DataTable GetGoalDesc1(int number)
        {
            string constr = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT Goal.GoalTitle,Goal.GoalDesc  FROM EduGoals INNER JOIN Goal ON EduGoals.GoalId = Goal.GoalId WHERE EducationNumberId = "+number+";"))


                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        void DisplayData(int number)
        {
            string color ="";
            List<Goal> temp = GoalDesc1(number);
            StringBuilder html = new StringBuilder();
            if (number == 1)
            {
                color = "BlueColor";   
            }
            else if(number == 2)
            {
                color = "GreyColor";
            }
            else if(number == 3)
            {
                color = "YellowColor";
            }
            html.Append("<div class='drops' id='"+color+"'>");
            for (int i = 0; i < temp.Count; i++)
            {

                html.Append("<div class='drop' draggable='true'>");

                html.Append("<table>");
                html.Append("<tr class'dropTitle>");

                html.Append("<tr class='dropTitle'>");
                html.Append("<td>");
                html.Append("<h3>");
                html.Append(temp[i].Title);
                html.Append("</h3>");
                html.Append("</td>");
                html.Append("</tr>");


                    foreach (string description in temp[i].description)
                    {
                        html.Append("<tr>");
                        html.Append("<td>");
                        html.Append("<p>");
                        html.Append(description);
                        html.Append("</p>");
                        html.Append("</td>");
                        html.Append("<td class='checkbox'><input type='checkbox'/>");
                        html.Append("<td>");
                        html.Append("</tr>");
                        html.Append("</tr>");
                    }

                html.Append("</table>");

                html.Append("</div>");
            }
            html.Append("</div>");
            if (number == 1)
            {
                GoalDescText1.Controls.Add(new Literal { Text = html.ToString() });
            }
            else if (number == 2)
            {
                GoalDescText2.Controls.Add(new Literal { Text = html.ToString() });
            }
            else if (number == 3)
            {
                GoalDescText3.Controls.Add(new Literal { Text = html.ToString() });
            }
        }
    }
}