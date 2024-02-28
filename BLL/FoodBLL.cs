using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using UON.DAL;

namespace UON.BLL
{
    public class FoodBLL
    {
        private FoodDAL FoodDAL;

        public FoodBLL()
        {
            FoodDAL = new FoodDAL();
        }

        public DataTable GetFoodData()
        {
            try
            {
                return FoodDAL.GetFoodData();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}