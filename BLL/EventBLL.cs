using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;
using UON.UIL;

namespace UON.BLL
{
    public class EventBLL
    {
        private EventDAL EventDAL;

        public EventBLL()
        {
            EventDAL = new EventDAL();
        }

        public DataTable GetEventData()
        {
            try
            {
                return EventDAL.GetEventData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}