package mainPackage;

import java.util.List;

import bean.CityBean;
import bean.TeamBean;

import com.opensymphony.xwork2.ActionSupport;

public class SecondPage extends ActionSupport {

	private static final long serialVersionUID = 1L;


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


	public String execute(){

		System.out.println("Selected team "+teamBean.getTeam());
		System.out.println("Selected city"+cityBean.getSelectedCity());
		@SuppressWarnings("unused")
		String selectedCity=cityBean.getSelectedCity();

		return "success";
	}
}
