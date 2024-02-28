using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class IntStdClubBLL
    {
        private IntStdClubDAL IntStdClubDAL;

        public IntStdClubBLL()
        {
            IntStdClubDAL = new IntStdClubDAL();
        }

        public DataTable GetIntStdClubData()
        {
            try
            {
                return IntStdClubDAL.GetIntStdClubData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}