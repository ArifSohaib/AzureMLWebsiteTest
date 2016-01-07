using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AzureMLWebsiteTest.Models;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.IO;
using System.Text;

namespace AzureMLWebsiteTest
{

    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getPrediction(object sender, EventArgs e)
        {
            //get all the inputs
            string inAge = age.Text;
            results.InnerText = String.Format("Age: {0}",inAge);
            string inWorkclass = workclass.SelectedItem.ToString();
            results.InnerText = String.Format("Workclass: {0}", inWorkclass);
            string inFnlwgt = fnlwgt.Text;
            string inEducation = education.SelectedItem.ToString();
            string inEducationNum = educationNum.Text;
            string inMaratialStatus = maratialStatus.SelectedItem.ToString();
            string inOccupation = occupation.ToString();
            string inRelationship = relationship.ToString();
            string inSex = sex.SelectedItem.ToString();
            string inRace = race.SelectedItem.ToString();
            string inCapitalGain = capitalGain.Text;
            string inCapitalLoss = capitalLoss.Text;
            string inHours = hoursPerWeek.Text;
            string inCountry = country.SelectedItem.ToString();

            results.InnerText = "Please wait.....";
            //Task<string> res = CallML.InvokeRequestResponseService(inAge, inWorkclass, inFnlwgt, inEducation, inEducationNum, inMaratialStatus, inOccupation, inRelationship, inSex, inRace, inCapitalGain, inCapitalLoss, inHours, inCountry);
            //Task.WaitAll(res);

            Task<string> response =  CallML.InvokeRequestResponseService(inAge, inWorkclass, inFnlwgt, inEducation, inEducationNum, inMaratialStatus, inOccupation, inRelationship, inSex, inRace, inCapitalGain, inCapitalLoss, inHours, inCountry);
            response.ConfigureAwait(false);
            /*JsonTextReader reader = new JsonTextReader(new StringReader(response.Result));
            StringBuilder stringResponse = new StringBuilder();
            while(reader.Read())
            {
                if(reader.Value != null && reader.TokenType.Equals("PropertyName") )
                {
                    stringResponse.AppendLine(string.Format("Token: {0}  | Value: {1}", reader.TokenType, reader.Value));
                    
                }
                else
                {
                    stringResponse.AppendLine(string.Format("Token: {0}", reader.Value));
                }
            }
            results.InnerHtml = stringResponse.ToString();*/
            //Output RAW Jason
            AutoMLResult data = JsonConvert.DeserializeObject<AutoMLResult>(response.Result);
            try 
            {
                results.InnerHtml = data.Results.output1.value.ColumnNames[13] + " " + data.Results.output1.value.Values[0][13] + "<br/>" + "<p>Time Taken: "+ data.ExecutionDurationMs + "</p>";
                //results.InnerText = data.root.Results.output1.value.ColumnNames.Last();
            }
            catch(System.NullReferenceException ex)
            {
                results.InnerText = ex.Message;
            }
            
        }

        protected void test(object sender, EventArgs e)
        {
            results.InnerText="Hello!!!";
            
        }
    }
}