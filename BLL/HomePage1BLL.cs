using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class HomePage1BLL
    {
        private HomePage1DAL HomePage1DAL;

        public HomePage1BLL()
        {
            HomePage1DAL = new HomePage1DAL();
        }

        public DataTable GetHomePage1Data()
        {
            try
            {
                return HomePage1DAL.GetHomePage1Data();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}