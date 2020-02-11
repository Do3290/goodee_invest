package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.LoginException;
import exception.ProjectException;
import logic.Project;
import logic.ProjectService;
import logic.User;
import logic.UserService;
@Controller
@RequestMapping("page")
public class PageController {
	 @Autowired 
	 private ProjectService service;
	 @Autowired
	 private UserService userservice;
	 
	
	@RequestMapping("main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		List<Project> projectlist = service.projectlist();	//프로젝트리스트
		List<Project> newprojectlist = service.newprojectlist();	//신규추천프로젝트리스트(글작성순서대로)
		List<Project> endprojectlist = service.endprojectlist();	//마감임박프로젝트리스트(0일 ~ 10일 기간 남은 프로젝트중 마감기한이 빠른 순서대로)
		List<Project> bestprojectlist = service.bestprojectlist();
		mav.addObject("projectlist", projectlist);	
		mav.addObject("newprojectlist", newprojectlist);
		mav.addObject("endprojectlist", endprojectlist);
		mav.addObject("bestprojectlist", bestprojectlist);
		return mav;
	}
	
	@RequestMapping("search")
	public ModelAndView search(String project, String category, String state, Integer rate, String search) {
		System.out.println(search);
		List<Project> projectlist;
		if(project != null && project.equals("end") && category == null && state == null && rate == null){
			projectlist = service.endprojectlist();
		}else if(project != null && project.equals("new") && category == null && state == null && rate == null) {
			projectlist = service.newprojectlist();
		}else if(project != null && project.equals("pop") && category == null && state == null && rate == null) {
			projectlist = service.bestprojectlist();
		}else if(category != null || state != null || rate != null) {
			projectlist = service.searchlist(category, state, rate);
		}else if(search != null && !search.trim().equals("")) {
			projectlist = service.searchname(search);
		}
		else {
			projectlist = service.projectlist();
		}
		int projectcount = projectlist.size();
		ModelAndView mav = new ModelAndView();
		mav.addObject("projectlist", projectlist);
		mav.addObject("projectcount", projectcount);
		return mav;
	} 
	
	@RequestMapping("info")
	public ModelAndView info(Integer num) {
		ModelAndView mav = new ModelAndView();
		Project project = null;
		List<Project> reward = null;
		if(num == null) {
			project = new Project();
		}else {
			project = service.getProject(num);
			reward = service.getReward(num);
		}
		mav.addObject("project", project);
		mav.addObject("reward", reward);
		return mav;
	}
	
	@RequestMapping("agree")
	public ModelAndView agree() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	  
	@GetMapping("write")
	public ModelAndView getBoard() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("project", new Project());
		return mav;
	}
	
	
	@PostMapping("write") 
	public ModelAndView write(@Valid Project project, String id, int[] item_order, String[] item, int[] itemcnt, int[] reward_goal, String[] reward_date ,BindingResult bresult, HttpServletRequest request) { 
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel()); 
			return mav; 
		} try {
			User dbuser= userservice.getUser(id); 
			service.projectWrite(project, dbuser, request);
			for(int i=0; i<item.length; i++) {
				service.rewardWrite(service.projectMaxnum(),item_order[i],item[i],itemcnt[i],reward_goal[i],reward_date[i],request); 
			}
			mav.setViewName("redirect:main.do");
		} catch(Exception e) { 
			e.printStackTrace(); 
			throw new ProjectException("게시물등록이 실패했습니다.","write.do"); 
		} 
		return mav; 
	} 
}