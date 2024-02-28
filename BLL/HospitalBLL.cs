using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class HospitalBLL
    {
        private HospitalDAL HospitalDAL;

        public HospitalBLL()
        {
            HospitalDAL = new HospitalDAL();
        }

        public DataTable GetHospitalData()
        {
            try
            {
                return HospitalDAL.GetHospitalData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}