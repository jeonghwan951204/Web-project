package com.exam.project01;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConfigController {

	@Autowired
	private TestMapper testMapper;
	
//	@RequestMapping("/zipcode1.do")
//	public String jdbc1(HttpServletRequest request,HttpServletResponse response, Model model) {
//		return "zipcode1";
//	}
	
	@RequestMapping("/teamStat.do")
	public String teamStat(HttpServletRequest request,HttpServletResponse response, Model model) {
		//System.out.println("teamStat 호출");
		
		ArrayList<TeamTO> lists = testMapper.selectTeamList();
		
		StringBuffer sbHtml = new StringBuffer();
		sbHtml.append("<table border='1'>");
		sbHtml.append("<tr><th>TeamName</th><th>TotalGames</th><th>Win</th><th>Draws</th><th>Lose</th><th>TotalGoals</th><th>Average Scored</th><th>Total goals against</th><th>Average conceded</th><th>Goal difference</th><th>Coach</th></tr>");
		for( TeamTO list : lists ) {
			sbHtml.append("<tr>");
			sbHtml.append("<td><a href='playerStat.do?teamName=" + list.getTeamName() +"'>"+ list.getTeamName()+ "</a></td>");
			sbHtml.append("<td>" +list.getTeamGame()+ "</td>");
			sbHtml.append("<td>" +list.getWin()+ "</td>");
			sbHtml.append("<td>" +list.getDraw()+ "</td>");
			sbHtml.append("<td>" +list.getLose()+ "</td>");
			sbHtml.append("<td>" +list.getGoal()+ "</td>");
			sbHtml.append("<td>" +list.getGoalav()+ "</td>");
			sbHtml.append("<td>" +list.getGoalAgainst()+ "</td>");
			sbHtml.append("<td>" +list.getAvg()+ "</td>");
			sbHtml.append("<td>" +list.getGD()+ "</td>");
			sbHtml.append("<td>" +list.getCoach()+ "</td>");
			sbHtml.append("</tr>");
		}
		sbHtml.append("</table>");
		
		model.addAttribute("TeamTable", sbHtml);
		
		return "teamStat";
	}
	
	@RequestMapping("/playerStat.do")
	public String playerStat(HttpServletRequest request,HttpServletResponse response, Model model) {
		System.out.println("playerStat 호출");
		String teamName = request.getParameter("teamName");
		
		ArrayList<PlayerTO> lists = testMapper.selectPlayerList(teamName);
		
		StringBuffer sbHtml = new StringBuffer();
		sbHtml.append("<table border='1'>");
		
		for( PlayerTO list : lists ) {
			sbHtml.append("<tr>");
			sbHtml.append("<td>" + list.getPlayerName() + "</td>");
			sbHtml.append("<td>" + list.getPlayerGame() + "</td>");
			sbHtml.append("<td>" + list.getPlayerTime() + "</td>");
			sbHtml.append("<td>" + list.getPlayerGoal() + "</td>");
			sbHtml.append("<td>" + list.getPlayerAssist() + "</td>");
			sbHtml.append("<td>" + list.getPlayerSave() + "</td>");
			sbHtml.append("</tr>");
		}
		sbHtml.append("</table>");
		
		model.addAttribute("PlayerTable", sbHtml);
		
		return "playerStat";
	}
}
