using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class ContactPageBLL
    {
        private ContactPageDAL ContactPageDAL;

        public ContactPageBLL()
        {
            ContactPageDAL = new ContactPageDAL();
        }

        public DataTable GetContactPageData()
        {
            try
            {
                return ContactPageDAL.GetContactPageData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
