package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.JsonNode;
import com.github.scribejava.core.model.OAuth2AccessToken;

import logic.Project;
import logic.Support;
import logic.User;
import logic.UserService;


@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService service;
	private NaverLoginBo naverLoginBO;
	private String apiResult = null;
	private kakao_restapi kakao_restapi = new kakao_restapi();
	@Autowired
	private void setNaverLoginBO(NaverLoginBo naverLoginBO) {
	this.naverLoginBO = naverLoginBO;
	}
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
	String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
	System.out.println("���̹�:" + naverAuthUrl);
	model.addAttribute("url", naverAuthUrl);
	User user = new User();
	User dbuser= service.getUser(user.getId());
	session.setAttribute("loginUser", dbuser);

	return "/user/login";
	}
	@RequestMapping(value = "/info3", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView callback (Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
	System.out.println(" callback");
	OAuth2AccessToken oauthToken;
	oauthToken = naverLoginBO.getAccessToken(session, code, state);
	apiResult = naverLoginBO.getUserProfile(oauthToken);
	JSONParser parser = new JSONParser();
	Object obj = parser.parse(apiResult);
	JSONObject jsonObj = (JSONObject) obj;
	JSONObject response_obj = (JSONObject)jsonObj.get("response");
	System.out.println(response_obj);
	String name = (String)response_obj.get("name");
	String id = (String)response_obj.get("email");
	String gender = (String)response_obj.get("gender");
	String pic = (String)response_obj.get("profile_image");
	String birthday = (String)response_obj.get("birthday");
	String age = (String)response_obj.get("age");
	String login = "naver";
	 int[] num = new int [12];
   	String exam = "";
   	for(int i = 0; i< num.length; i++) {
	    	  num[i] = (int)(Math.random()*9);
	    	  exam+=Integer.toString(num[i]);
	      }
	String account=exam;
	 int money=1000000;
	
	session.setAttribute("id",id);
	session.setAttribute("name", name);
	session.setAttribute("pic", pic);
	session.setAttribute("gender", gender);
	session.setAttribute("birthday", birthday);
	session.setAttribute("age", age);
	  User user = new User();
	  
	  	user.setId(id);
	  	user.setName(name);
	  	user.setPic(pic);
	  	user.setGender(gender);
	  	user.setAccount(account);
	  	user.setMoney(money);
	  	user.setGender(gender);
	  	user.setAge(age);
		User dbuser= service.getUser(user.getId());
	  	session.setAttribute("login",login);
	  	System.out.println(user.getId());
	  	System.out.println(user);
	  	System.out.println(dbuser);
	  	if(dbuser==null) {
	  	service.userInsert(user);
	  	session.setAttribute("loginUser", user);
	  	}
	  	session.setAttribute("dbuser",dbuser);
	  	session.setAttribute("loginUser", user);
	model.addAttribute("result", apiResult);
	ModelAndView mav = new ModelAndView();
	mav.setViewName("redirect:../page/main.do");
	return mav;
	}
	

	@RequestMapping(value = "/info2", produces = "application/json")
	public ModelAndView info(@RequestParam("code") String code, RedirectAttributes ra, HttpSession session,
			HttpServletResponse response) {
		System.out.println("kakao code: " + code);
		
		kakao_restapi kr = new kakao_restapi();
		JsonNode node = kr.getAccessToken(code);
		JsonNode accesstoken = node.get("access_token");
		   JsonNode userInfo = controller.kakao_restapi.getKakaoUserInfo(accesstoken);
		      String id = null;
		      String name = null;
		      String gender = null;
		      String birthday = null;
		      String age = null;
		      String pic = null;
		      String login = "kakao";
		      int[] num = new int [12];
		      	String exam = "";
		      	for(int i = 0; i< num.length; i++) {
			    	  num[i] = (int)(Math.random()*9);
			    	  exam+=Integer.toString(num[i]);
			      }
		      
		      
		      String account= exam;
		  	  int money=1000000;
		      JsonNode properties = userInfo.path("properties");
		      JsonNode kakao_account = userInfo.path("kakao_account");
		      
		      id = kakao_account.path("email").asText();
		      name = properties.path("nickname").asText();
		      pic = properties.path("profile_image").asText();
		      gender = kakao_account.path("gender").asText();
		      birthday = kakao_account.path("birthday").asText();
		      age = kakao_account.path("age_range").asText();
		      session.setAttribute("id",id);
		      session.setAttribute("name", name);
		      session.setAttribute("pic", pic);
		      session.setAttribute("gender", gender);
		      session.setAttribute("birthday", birthday);
		      session.setAttribute("age", age);
		      session.setAttribute("login",login);
		      User user = new User();
		  
		  	user.setId(id);
		  	user.setName(name);
		  	user.setPic(pic);
		  	user.setGender(gender);
		  	user.setAccount(account);
		  	user.setMoney(money);
		  	user.setGender(gender);
		  	user.setAge(age);
			User dbuser= service.getUser(user.getId());
		  	session.setAttribute("login",login);
		  
		  	if(dbuser==null) {
		  	service.userInsert(user);
		  	session.setAttribute("loginUser", user);
		  
		  	}
		  	session.setAttribute("dbuser",dbuser);
		  	session.setAttribute("loginUser", user);
		  	System.out.println(dbuser);
		session.setAttribute("token", accesstoken);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:../page/main.do");
		return mav;
	}
	
	
	@RequestMapping("supportuserlist")
	public ModelAndView supportuserlist(Integer num) {
	ModelAndView mav = new ModelAndView();
	System.out.println(num);
	List<Project> supportuserlist = service.getsupportUser(num);
	System.out.println("뽑을꺼:"+supportuserlist);
	mav.addObject("supportuserlist", supportuserlist);
	return mav;
}
	@PostMapping("givereward")
	public ModelAndView givereward(int project_num, HttpSession session, HttpServletRequest request) {
		User loginuser = (User) session.getAttribute("loginUser");
		String id = loginuser.getId();
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("project_num"));
	
		ModelAndView mav = new ModelAndView();
		service.giveReward(project_num,id);	
		mav.setViewName("redirect:../user/supportuserlist.do?num="+project_num);
		return mav;
	}
	
	@RequestMapping("supportdetail")
	public ModelAndView supportdetail( Support support, Project project, User user, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginuser = (User) session.getAttribute("loginUser");
		String id = loginuser.getId();
		int support_num = support.getSupport_num();
		System.out.println(support_num);
		Project supportDetail = service.supportDetail(support_num, id);
		
		String address = supportDetail.getSupport_address();
		String[] address1 = address.split("/");
		String add1 = address1[0];
		String add2 = address1[1];
		String add3 = address1[2];
		
		mav.addObject("add1", add1);
		mav.addObject("add2",add2);
		mav.addObject("add3",add3);
		mav.addObject("supportDetail",supportDetail);
		System.out.println(supportDetail);
		return mav;
	}
	@PostMapping("getReward")
	public ModelAndView getReward( int support_num,int project_num, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User loginuser = (User) session.getAttribute("loginUser");
		String id = loginuser.getId();
		
		System.out.println("이게멀까"+project_num);
		service.updateReward(project_num, id);
		
		mav.setViewName("redirect:../user/supportdetail.do?support_num="+support_num);
		
		return mav;
	
	}

	@RequestMapping("support")
	public ModelAndView support(HttpSession session, Support support,
			String project_num, User user, Project project, String searchtype, String searchcontent) {
		ModelAndView mav = new ModelAndView();
		if(searchtype!=null && searchtype.trim().equals("")) {
			searchtype = null;
			
		}
		if(searchcontent!=null && searchcontent.trim().equals("")) {
			searchcontent = null;
		}
		if(searchtype == null || searchcontent == null) {
			searchtype = null;
			searchcontent = null;
		}
		User loginuser = (User) session.getAttribute("loginUser");
		String id = loginuser.getId();
		int supportcount= service.supportcount(id, support, project_num,searchtype, searchcontent);
		int supportcount1 = service.supportcount1(id, support, project_num,searchtype, searchcontent);
		int supportcount2 = service.supportcount2(id, support, project_num,searchtype, searchcontent);
		List<Project> supportlist = service.getSupport(id,support, project_num, project,searchtype, searchcontent);
		
		
		
		
		mav.addObject("supportlist", supportlist);
		mav.addObject("supportcount", supportcount);
		mav.addObject("supportcount1", supportcount1);
		mav.addObject("supportcount2", supportcount2);
		
		return mav;
	}
	@RequestMapping("project")
	public ModelAndView project(String id, String project_num)  {
		ModelAndView mav = new ModelAndView();
		List<Project> userproject = service.getProject(id,project_num);
		int listcount = service.projectcount(id);
		mav.addObject("userproject",userproject);
		mav.addObject("listcount", listcount);
		return mav;
	}
	
	@GetMapping("supporting")
	public ModelAndView supporting(String id,User user, Support support,HttpSession session, Integer num) {
		ModelAndView mav = new ModelAndView();
		User dbuser = (User) session.getAttribute("dbuser");
		System.out.println(num);
		String acc = dbuser.getAccount();
		String a = acc.substring(0, 3);
		String b = acc.substring(3,6);
		String c = acc.substring(6,12);
		session.setAttribute("a", a);
		session.setAttribute("b", b);
		session.setAttribute("c", c);
		mav.addObject("project_num",num);
		
		return mav;
		
	}
	@PostMapping("supporting")
	public ModelAndView supporting(HttpSession session, Support support, HttpServletRequest request, Integer project_num) {
		ModelAndView mav = new ModelAndView();
		User loginuser = (User) session.getAttribute("loginUser");
		
		System.out.println("번호는?"+project_num);
		
		String zipcode = request.getParameter("zipcode");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address = zipcode+"/"+address1+"/"+address2;
		String id = loginuser.getId();
		int support_money = support.getSupport_money();
		service.supportwrite(id,support, request,address,project_num);
		int money = loginuser.getMoney();
		int updatemoney =money - support_money;
		service.moneyUpdate(id, updatemoney);
		
		mav.setViewName("redirect:../user/support.do?id="+loginuser.getId());
		
		return mav;
	}


	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login.do";
		
	}
	@RequestMapping("infoview")
	public ModelAndView infoview(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(id);
		mav.addObject("user",user);
		
		
		String account = user.getAccount();
		
		String a = account.substring(0, 3);
		String b = account.substring(3,6);
		String c = account.substring(6,12);
		session.setAttribute("a", a);
		session.setAttribute("b", b);
		session.setAttribute("c", c);
		User user1 = (User)session.getAttribute("dbuser");
		user1.setNic(user.getNic());
		session.setAttribute("dbuser", user1);
		
		return mav;	
	}
	@GetMapping(value= {"updateview"})
	public ModelAndView updateview(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(id);
		String account = user.getAccount();
		
		String a = account.substring(0, 3);
		String b = account.substring(3,6);
		String c = account.substring(6,12);
		session.setAttribute("a", a);
		session.setAttribute("b", b);
		session.setAttribute("c", c);
		mav.addObject("user",user);
		return mav;	
	}
	
	@PostMapping("update")
	public ModelAndView UpdateView(User user, HttpServletRequest request,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		service.userUpdate(user,request);
		session.setAttribute("loginUser2", service.getUser(user.getId()));
		mav.setViewName("redirect:../user/infoview.do?id="+user.getId());
		return mav;
	}
	
	
	

}