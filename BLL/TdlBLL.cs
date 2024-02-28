using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class TdlBLL
    {
        private TdlDAL TdlDAL;

        public TdlBLL()
        {
            TdlDAL = new TdlDAL();
        }

        public DataTable GetToDoListData()
        {
            try
            {
                return TdlDAL.GetToDoListData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
