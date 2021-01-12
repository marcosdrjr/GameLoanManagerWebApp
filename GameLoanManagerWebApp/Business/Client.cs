using GameLoanManagerWebApp.DTOS;
using Newtonsoft.Json;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace GameLoanManagerWebApp.Business
{
    public class Client
    {
       public static string uri = "https://localhost:5001";
        public static List<GameLoanDTO> GetGameLoanAll()
        {
            string _uri = uri.ToString() + "/api/Onboarding/gameloanall" ;
            var client = new RestClient(uri);
            client.Timeout = -1;
            var request = new RestRequest(Method.GET);
            request.AddHeader("accept", "text/plain");
            IRestResponse response = client.Execute(request);
            var ret = JsonConvert.DeserializeObject<List<GameLoanDTO>>(response.Content);
            return ret;
        }
    }
}