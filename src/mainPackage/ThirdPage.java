package mainPackage;


import bean.CityBean;
import bean.TeamBean;
import bean.VenueBean;

import com.opensymphony.xwork2.ActionSupport;

import dataPull.ListOfVenues;

public class ThirdPage extends ActionSupport {

	private static final long serialVersionUID = 1L;


	public VenueBean venueBean;
	public CityBean cityBean;
	public TeamBean teamBean;
	
	
	public CityBean getCityBean() {
		return cityBean;
	}


	public void setCityBean(CityBean cityBean) {
		this.cityBean = cityBean;
	}


	public TeamBean getTeamBean() {
		return teamBean;
	}


	public void setTeamBean(TeamBean teamBean) {
		this.teamBean = teamBean;
	}


	public VenueBean getVenueBean() {
		return venueBean;
	}


	public void setVenueBean(VenueBean venueBean) {
		this.venueBean = venueBean;
	}


	public String execute(){
		System.out.println("city Type: "+cityBean.getSelectedCity());
		System.out.println("Venue Type: "+venueBean.getVenueType());
		System.out.println("Team type: "+teamBean.getTeam());
		
		ListOfVenues venues= new ListOfVenues();
		venues.getVenues(venueBean.getVenueType());
		

		return "success";
	}
}