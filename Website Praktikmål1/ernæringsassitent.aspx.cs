﻿using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
            GoalDesc1();
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
                TipDesc2.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        private DataTable GetData3()
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

        #endregion



        void GoalDesc1()
        {
            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetGoalDesc1();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<div class='drops' id='BlueColor'>");



                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<div class='drop' draggable='true'>");

                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<table>");
                        html.Append("<tr class'dropTitle>");
                        
                        html.Append("<tr class='dropTitle'>");
                        html.Append("<td>");
                        html.Append("<h3>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</h3>");
                        html.Append("</td>");
                        html.Append("</tr>");

                        //html.Append("<tr>");
                        //html.Append("<td>");
                        //html.Append("<p>");
                        //html.Append(row[column.ColumnName]);
                        //html.Append("</p>");
                        //html.Append("</td>");

                        //html.Append("<td class='checkbox'><input type='checkbox'/>");
                        //html.Append("<td>");
                        //html.Append("</tr>");
                        html.Append("</tr>");
                        html.Append("</table>");
                    }
                    html.Append("</div>");
                }

                //Table end.
                html.Append("</div>");

                //Append the HTML string to Placeholder.
                GoalDescText1.Controls.Add(new Literal { Text = html.ToString() });
            }

        }

        private DataTable GetGoalDesc1()
        {
            string constr = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {

                using (SqlCommand cmd = new SqlCommand("SELECT Goal.GoalTitle  FROM EduGoals INNER JOIN Goal ON EduGoals.GoalId = Goal.GoalId WHERE EducationNumberId = 1;"))


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
    }
}