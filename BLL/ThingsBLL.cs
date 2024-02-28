using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;


namespace UON.BLL
{
    public class ThingsBLL
    {
        private ThingsDAL ThingsDAL;

        public ThingsBLL()
        {
            ThingsDAL = new ThingsDAL();
        }

        public DataTable GetThingsData()
        {
            try
            {
                return ThingsDAL.GetThingsData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}