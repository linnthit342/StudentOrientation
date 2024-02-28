using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class HomePage2BLL
    {
        private HomePage2DAL HomePage2DAL;

        public HomePage2BLL()
        {
            HomePage2DAL = new HomePage2DAL();
        }

        public DataTable GetHomePage2Data()
        {
            try
            {
                return HomePage2DAL.GetHomePage2Data();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}