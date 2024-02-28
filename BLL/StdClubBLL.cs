using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class StdClubBLL
    {
        private StdClubDAL StdClubDAL;

        public StdClubBLL()
        {
            StdClubDAL = new StdClubDAL();
        }

        public DataTable GetStdClubData()
        {
            try
            {
                return StdClubDAL.GetStdClubData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}