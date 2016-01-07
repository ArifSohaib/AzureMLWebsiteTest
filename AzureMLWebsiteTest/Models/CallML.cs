using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading;

namespace AzureMLWebsiteTest.Models
{
    public class CallML
    {
        public class StringTable
        {
            public string[] ColumnNames { get; set; }
            public string[,] Values { get; set; }
        }

        /*public static async Task<string> Test()
        {
            Thread.Sleep(5000);
            return "Task complete";
        }*/

        //Call the Azure ML web api
        public static async Task<string> InvokeRequestResponseService(string age,string workclass, string fnlwgt, string education,string educationNum,string maratialStatus,string occupation, string relationship, string sex, string race,string capitalGain,string capitalLoss,string hours, string country)
        {
            using (var client = new HttpClient())
            {
                var scoreRequest = new
                {
                    Inputs = new Dictionary<string, StringTable>() {
                    {
                        "input1",
                        new StringTable
                        {
                            ColumnNames = new string[] {"Age", "Workclass", "Fnlwgt", "Education", "Education-num", "Marital-status", "Occupation", "Relationship", "Race", "Sex", "Capital-gain", "Capital-loss", "Hours-per-week", "Native-country", "Income"},
                            Values = new string[,] { {age,workclass,fnlwgt,education,educationNum,maratialStatus,occupation,relationship,sex, race, capitalGain,capitalLoss,hours,country,"0"}, }
                        }
                    },
                    },
                    GlobalParameters = new Dictionary<string, string>()
                    {
                    }

                };
                const string apiKey = "o7fepXXy9YxUG7GZdloB18i65RR8hcD6/B/tB9jksWf1M4aYIgSs3q9M+GeyW4jTVVX0JOXYWxdjkpzhQ+OXcw==";
                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", apiKey);

                client.BaseAddress = new Uri("https://ussouthcentral.services.azureml.net/workspaces/4d00554997ca48d9be053e3e4814ed4d/services/1dcc46fa575c4deaaca47ec84aa15772/execute?api-version=2.0&details=true");
                HttpResponseMessage response = await client.PostAsJsonAsync("", scoreRequest).ConfigureAwait(false);
                if (response.IsSuccessStatusCode)
                {
                    string result = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
                    //send result to caller
                    return result;
                }
                else
                {
                    string result = string.Format("The request failed with status code: {0}", response.StatusCode);
                    //send error to caller
                    return result;
                }
            }
        }
    }
}