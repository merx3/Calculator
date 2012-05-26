using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Calc : System.Web.UI.Page
    {
        static decimal? previousArg;
        static string previousOperation = null;
        static decimal number = 0m;
        static bool separator = false;

        protected void NumberClicked(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if (!separator)
            {
                number = number * 10 + decimal.Parse(b.Text.Substring(0));
            }
            else
            {
                int commaIndex = this.result.Value.IndexOf(',');
                int exp = (int)Math.Pow(10, this.result.Value.Length - commaIndex);
                number = number + decimal.Parse(b.Text.Substring(0)) / exp;
            }
            this.result.Value = number.ToString();
        }

        protected void CommaClicked(object sender, EventArgs e)
        {
            this.result.Value = this.result.Value + ',';
            separator = true;
        }

        protected void Clear(object sender, EventArgs e)
        {
            number = 0;
            previousArg = 0;
            previousOperation = null;
            separator = false;
            this.result.Value = number.ToString();
        }

        protected void GetOperand(object sender, EventArgs e)
        {
            this.result.Value = FlushOperation(((Button)sender).Text);
            separator = false;
        }

        protected void Equals(object sender, EventArgs e)
        {
            this.result.Value = FlushOperation("x");
            number = (decimal)previousArg;
            previousArg = 0;
            previousOperation = null;
            separator = false;
        }

        protected string FlushOperation(string o)
        {
            if (o.Length == 1)
            {
                switch (previousOperation)
                {
                    case "+":
                        previousArg = previousArg + number;
                        break;
                    case "-":
                        previousArg = previousArg - number;
                        break;
                    case "*":
                        previousArg = previousArg * number;
                        break;
                    case "/":
                        previousArg = previousArg / number;
                        break;
                    case null:
                        previousArg = number;
                        break;
                }
                previousOperation = o;
                number = 0;

                return previousArg.ToString();
            }
            else
            {
                switch (o)
                {
                    case "sqrt":
                        number = (decimal)Math.Sqrt(double.Parse(this.result.Value));
                        break;
                    case "mod":
                        number = number > 0 ? number : -number;
                        break;
                }
                
                return number.ToString();
            }
        }
    }
}