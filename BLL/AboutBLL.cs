
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class AboutBLL
    {
        private AboutDAL AboutDAL;

        public AboutBLL()
        {
            AboutDAL = new AboutDAL();
        }

        public DataTable GetAboutData()
        {
            try
            {
                return AboutDAL.GetAboutData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}