using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class TeamBLL
    {
        private TeamDAL TeamDAL;

        public TeamBLL()
        {
            TeamDAL = new TeamDAL();
        }

        public DataTable GetTeamData()
        {
            try
            {
                return TeamDAL.GetTeamData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}