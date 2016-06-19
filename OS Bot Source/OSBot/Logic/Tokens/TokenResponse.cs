using System;

namespace OSBot.Logic.Tokens
{
    public sealed class TokenResponse
    {
        public bool LoginSucces { get; private set; }
        public string LoginToken { get; private set; }
        
        public TokenResponse(string Response)
        {
            ExtractToken(Response);
        }
        
        private void ExtractToken(string Response)
        {
            var split = Response.Split('"');
            var state = split[3].ToLower().Trim();
            LoginSucces = (state == "ok");
            if (LoginSucces)
            {
                //get token
                LoginToken = split[9];
            }
        }
        public void Dispose()
        {
            LoginToken = null;
        }
        ~TokenResponse()
        {
            Dispose();
        }
    }
}