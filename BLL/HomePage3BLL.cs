using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class HomePage3BLL
    {
        private HomePage3DAL HomePage3DAL;

        public HomePage3BLL()
        {
            HomePage3DAL = new HomePage3DAL();
        }

        public DataTable GetHomePage3Data()
        {
            try
            {
                return HomePage3DAL.GetHomePage3Data();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}