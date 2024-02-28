using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class ContactBLL
    {
        private ContactDAL ContactDAL;

        public ContactBLL()
        {
            ContactDAL = new ContactDAL();
        }

        public DataTable GetContactUsData()
        {
            try
            {
                return ContactDAL.GetContactUsData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
