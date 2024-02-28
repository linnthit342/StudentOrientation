using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class VdBLL
    {
        private VdDAL VdDAL;

        public VdBLL()
        {
            VdDAL = new VdDAL();
        }

        public DataTable GetHpVdData()
        {
            try
            {
                return VdDAL.GetHpVdData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}