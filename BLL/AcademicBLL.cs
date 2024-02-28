using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class AcademicBLL
    {
        private AcademicDAL AcademicDAL;

        public AcademicBLL()
        {
            AcademicDAL = new AcademicDAL();
        }

        public DataTable GetAcademicData()
        {
            try
            {
                return AcademicDAL.GetAcademicData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
