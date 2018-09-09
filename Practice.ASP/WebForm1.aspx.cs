using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice.ASP_MultiLanguageApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlCity.DataTextField = "CityName";
                ddlCity.DataValueField = "CityId";
                ddlCity.DataSource = GetAllCity();
                ddlCity.DataBind();
                ddlCity.Items.Insert(0, new ListItem { Value = "0", Text = "SELECT", Selected = true });
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        private List<City> GetAllCity()
        {
            return new List<City>()
            {
                new City{ CityId =1 ,CityName ="Rewa1"},
                new City{ CityId =2 ,CityName ="Rewa2"},
                new City{ CityId =3 ,CityName ="Rewa3"},
                new City{ CityId =4 ,CityName ="Rewa4"},
                new City{ CityId =5 ,CityName ="Rewa5"},
                new City{ CityId =6 ,CityName ="Rewa6"},
                new City{ CityId =7 ,CityName ="Rewa7"},
                new City{ CityId =8 ,CityName ="Rewa8"},
                new City{ CityId =9 ,CityName ="Rewa9"},
                new City{ CityId =10 ,CityName ="Rewa10"},
            };
        }
    }
    public class City
    {
        public int CityId { get; set; }
        public string CityName { get; set; }
    }
}