using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;


namespace UON.BLL
{
    public class ThingsListBLL
    {
        private ThingsListDAL ThingsListDAL;

        public ThingsListBLL()
        {
            ThingsListDAL = new ThingsListDAL();
        }

        public DataTable GetThingsListData()
        {
            try
            {
                return ThingsListDAL.GetThingsListData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}