using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class PoliceBLL
    {
        private PoliceDAL PoliceDAL;

        public PoliceBLL()
        {
            PoliceDAL = new PoliceDAL();
        }

        public DataTable GetPoliceData()
        {
            try
            {
                return PoliceDAL.GetPoliceData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}