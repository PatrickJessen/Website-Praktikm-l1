using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;

namespace Website_Praktikmål1
{
    public class Goal
    {
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        public List<string> description { get; set; }

        public Goal(string title)
        {
            description = new List<string>();
            Title = title;
        }
    }
}