using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class HomePage4BLL
    {
        private HomePage4DAL HomePage4DAL;

        public HomePage4BLL()
        {
            HomePage4DAL = new HomePage4DAL();
        }

        public DataTable GetHomePage4Data()
        {
            try
            {
                return HomePage4DAL.GetHomePage4Data();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}