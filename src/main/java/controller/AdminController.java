package controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.AdminService;
import logic.Project;
import logic.Support;
import logic.User;
import logic.Visit;


@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private AdminService service;
	
	@RequestMapping("dash")
	public ModelAndView dash() {
		ModelAndView mav = new ModelAndView();
		
		int projecting = service.dash_pj_cnt("진행상태"); 
		int project_rd = service.dash_pj_cnt("승인대기");
		
		List<Visit> total_visit_list = service.total_visit_list();
		
		int lastweek[] = new int[7];
		int lastweekcnt = 0;
		int thisweek[] = new int[7];
		int thisweekcnt = 0;
		for(int i=0;i<total_visit_list.size();i++) {
			if(i<7) {
				lastweek[i] = total_visit_list.get(i).getVisitcnt();
				lastweekcnt += total_visit_list.get(i).getVisitcnt();
			}
			else {
				thisweek[i-7] = total_visit_list.get(i).getVisitcnt();
				thisweekcnt += total_visit_list.get(i).getVisitcnt();
			}
		}
		
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd");
		Date time = new Date();
		
		String time1 = format.format(time); //현재날짜
		
		int todaycnt = service.todaycnt(time1); // 오늘 방문자 수
		time = new Date(time.getTime()+(1000*60*60*24*-1)); //어제 계산
		String time2 = format.format(time); //어제 날짜
		int ystdaycnt = service.todaycnt(time2); //어제 방문자 수 
		
 		Calendar c = Calendar.getInstance(); //월요일
 		Calendar c1 = Calendar.getInstance();//일요일
 		
 		c.set(Calendar.DAY_OF_WEEK,Calendar.SUNDAY);
 		c1.set(Calendar.DAY_OF_WEEK,Calendar.SATURDAY);
 		
 		String sun = format.format(c.getTime());
 		String sat = format.format(c1.getTime());
 		int this_sign_cnt = service.sign_cnt(sun,sat); //이번주 총 가입자수
 		
 		 c.add(Calendar.DATE, -7);
 		 c1.add(Calendar.DATE, -7);
 		 String last_sun  = format.format(c.getTime());
 		 String last_sat = format.format(c1.getTime());
		 
 		int last_sign_cnt = service.sign_cnt(last_sun, last_sat);//지난 주 총 가입자 수 

 		
		int total_invest_m = total_visit_list.get(total_visit_list.size()-1).getInvest_m(); // 인베스트 수익
		
		String[] cate = {"게임","공예","영화·비디오","패션","만화","디자인","음악","테크놀로지"};
		int[] iCate = new int[cate.length];
		int idx = 0;
		for(String s : cate) {
			iCate[idx] = service.getcatecnt(s);
			idx++;
		}
		String[] age = {"10~19","20~29","30~39","40~49","50~59","60~69"};
		int[] arrAge = new int[age.length];
		int idx2 = 0;
		for(String s : age) {
			arrAge[idx2] = service.get_u_agecnt(s);
			idx2++;
		}
		int[] arrSex = new int[2];
		arrSex[0] = service.usermalecnt();
		arrSex[1] = service.usercount(null,null) - arrSex[0];
		
		mav.addObject("projecting",projecting);
		mav.addObject("project_rd",project_rd);
		mav.addObject("total_invest_m",total_invest_m);
		mav.addObject("lastweek",Arrays.toString(lastweek));
		mav.addObject("thisweek",Arrays.toString(thisweek));
		mav.addObject("lastweekcnt",lastweekcnt);
		mav.addObject("thisweekcnt",thisweekcnt);
		mav.addObject("todaycnt",todaycnt);
		mav.addObject("ystdaycnt",ystdaycnt);
		mav.addObject("this_sign_cnt",this_sign_cnt);
		mav.addObject("last_sign_cnt",last_sign_cnt);
		
		for(int i=0;i<cate.length;i++) {
			mav.addObject("cate"+i,iCate[i]);
		}
		mav.addObject("arrAge",Arrays.toString(arrAge));
		mav.addObject("arrSex",Arrays.toString(arrSex));
		return mav;
	}
	@RequestMapping("user")
	public ModelAndView user(Integer pageNum,  String searchtype, String searchcontent) {
		ModelAndView mav = new ModelAndView();
		//유저리스트 기본값
		if(pageNum==null||pageNum.toString().equals("")) {pageNum = 1;}
		if(searchtype!=null&&searchtype.trim().equals("")) {searchtype=null;}
		if(searchcontent!=null&&searchcontent.trim().equals("")) {searchcontent=null;}
		if(searchcontent==null||searchtype==null) {searchtype=null;searchcontent=null;}

		int limit = 10; //페이지당 보여지는 게시물 건수
		int usercount = service.usercount(searchtype,searchcontent); //전체 등록된 회원수
		List<User> userlist = service.userlist(pageNum,limit,searchtype,searchcontent);
		List<Support> splist = null;
		List<Project> mypjlist = null;
		for(int i = 0; i<userlist.size(); i++) {
			
			splist = service.splist(userlist.get(i).getId()); //후원 목록 서칭
			mypjlist = service.user_pjlist(userlist.get(i).getId()); //내 플젝 목록 서칭
			
			userlist.get(i).setSplist(splist);
			userlist.get(i).setMypjlist(mypjlist);
			
			int catelist[] = new int[8];
			for(int j=0; j<splist.size();j++) {
				switch(service.catelist(splist.get(j).getProject_num())) {
				case "게임":
					catelist[0] += 1;
					break;
				case "공예":
					catelist[1] += 1;
					break;
				case "영화·비디오":
					catelist[2] += 1;
					break;
				case "패션":
					catelist[3] += 1;
					break;
				case "만화":
					catelist[4] += 1;
					break;
				case "디자인":
					catelist[5] += 1;
					break;
				case "음악":
					catelist[6] += 1;
					break;
				case "테크놀로지":
					catelist[7] += 1;
					break;
				}
			}
			userlist.get(i).setCategory(Arrays.toString(catelist));
			userlist.get(i).setSpcnt();
			userlist.get(i).setSpsum();
			userlist.get(i).setMypjcnt();
		}
	
		
		
		int maxpage = (int)((double)usercount/limit+0.95); //최대 페이지
		int startpage = (int)((pageNum/10.0+0.9)-1) * 10 + 1; //보여지는 첫번째 페이지
		int endpage = startpage + 9;//보여지는 마지막 페이지
		if( endpage > maxpage) endpage = maxpage;
		int userno = usercount - (pageNum-1) * limit; //화면에 출력되는 게시물 번호. 순서
		
		mav.addObject("pageNum",pageNum);
		mav.addObject("maxpage",maxpage);
		mav.addObject("startpage",startpage);
		mav.addObject("endpage",endpage);
		mav.addObject("usercount",usercount);
		mav.addObject("userlist",userlist);
		mav.addObject("userno",userno);
		return mav;
		
	}
	@RequestMapping("project")
	public ModelAndView project(Integer pageNum,  String searchtype, String searchcontent) {
		ModelAndView mav = new ModelAndView();
		//유저리스트 기본값
		if(pageNum==null||pageNum.toString().equals("")) {pageNum = 1;}
		if(searchtype!=null&&searchtype.trim().equals("")) {searchtype=null;}
		if(searchcontent!=null&&searchcontent.trim().equals("")) {searchcontent=null;}
		if(searchcontent==null||searchtype==null) {searchtype=null;searchcontent=null;}

		int limit = 10; //페이지당 보여지는 게시물 건수
		int projectcount = service.projectcount(searchtype,searchcontent); //전체 등록된 회원수
		List<Project> projectlist = service.projectlist(pageNum,limit,searchtype,searchcontent);
		
		List<Support> splist = null;
		for(int i =0;i<projectlist.size();i++) {
			splist = service.splist_p(projectlist.get(i).getProject_num());
			projectlist.get(i).setSplist(splist);
			
			int sexlist[] = new int[2];
			int agelist[] = new int[6];
			
			for(int k=0;k<splist.size();k++) {
				if(service.sexlist(splist.get(k).getId()).equals("male")){
					sexlist[0] +=1;
				}else sexlist[1] +=1;
			}
			for(int j=0; j<splist.size();j++) {
				switch(service.agelist(splist.get(j).getId())) {
				case "10~19":
					agelist[0] += 1;
					break;
				case "20~29":
					agelist[1] += 1;
					break;
				case "30~39":
					agelist[2] += 1;
					break;
				case "40~49":
					agelist[3] += 1;
					break;
				case "50~59":
					agelist[4] += 1;
					break;
				case "60~69":
					agelist[5] += 1;
					break;
				}
			}
			projectlist.get(i).setP_nic(service.getusernic(projectlist.get(i).getId()));
			projectlist.get(i).setSp_avg_sex(Arrays.toString(sexlist));
			projectlist.get(i).setSp_avg_age(Arrays.toString(agelist));
			projectlist.get(i).setSpcnt();
			projectlist.get(i).setSpsum();
		
		}
		
		
		int maxpage = (int)((double)projectcount/limit+0.95); //최대 페이지
		int startpage = (int)((pageNum/10.0+0.9)-1) * 10 + 1; //보여지는 첫번째 페이지
		int endpage = startpage + 9;//보여지는 마지막 페이지
		if( endpage > maxpage) endpage = maxpage;
		int projectno = projectcount - (pageNum-1) * limit; //화면에 출력되는 게시물 번호. 순서
		
		mav.addObject("pageNum",pageNum);
		mav.addObject("maxpage",maxpage);
		mav.addObject("startpage",startpage);
		mav.addObject("endpage",endpage);
		mav.addObject("projectcnt",projectcount);
		mav.addObject("projectlist",projectlist);
		mav.addObject("projectno",projectno);
		return mav;
	}
	@RequestMapping("charts")
	public ModelAndView charts() {
		ModelAndView mav = new ModelAndView();
		
List<Visit> total_visit_list = service.total_visit_list();
		
		int lastweek[] = new int[7];
		int lastweekcnt = 0;
		int thisweek[] = new int[7];
		int thisweekcnt = 0;
		for(int i=0;i<total_visit_list.size();i++) {
			if(i<7) {
				lastweek[i] = total_visit_list.get(i).getVisitcnt();
				lastweekcnt += total_visit_list.get(i).getVisitcnt();
			}
			else {
				thisweek[i-7] = total_visit_list.get(i).getVisitcnt();
				thisweekcnt += total_visit_list.get(i).getVisitcnt();
			}
		}
		
		SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd");
		Date time = new Date();
		
		String time1 = format.format(time); //현재날짜
		
		int todaycnt = service.todaycnt(time1); // 오늘 방문자 수
		time = new Date(time.getTime()+(1000*60*60*24*-1)); //어제 계산
		String time2 = format.format(time); //어제 날짜
		int ystdaycnt = service.todaycnt(time2); //어제 방문자 수 
		
 		Calendar c = Calendar.getInstance(); //월요일
 		Calendar c1 = Calendar.getInstance();//일요일
 		
 		c.set(Calendar.DAY_OF_WEEK,Calendar.SUNDAY);
 		c1.set(Calendar.DAY_OF_WEEK,Calendar.SATURDAY);
 		
 		String sun = format.format(c.getTime());
 		String sat = format.format(c1.getTime());
 		int this_sign_cnt = service.sign_cnt(sun,sat); //이번주 총 가입자수
 		
 		 c.add(Calendar.DATE, -7);
 		 c1.add(Calendar.DATE, -7);
 		 String last_sun  = format.format(c.getTime());
 		 String last_sat = format.format(c1.getTime());
		 
 		int last_sign_cnt = service.sign_cnt(last_sun, last_sat);//지난 주 총 가입자 수 
 		String[] cate = {"게임","공예","영화·비디오","패션","만화","디자인","음악","테크놀로지"};
		int[] iCate = new int[cate.length];
		int idx = 0;
		for(String s : cate) {
			iCate[idx] = service.getcatecnt(s);
			idx++;
		}
		String[] age = {"10~19","20~29","30~39","40~49","50~59","60~69"};
		int[] arrAge = new int[age.length];
		int idx2 = 0;
		for(String s : age) {
			arrAge[idx2] = service.get_u_agecnt(s);
			idx2++;
		}
		int[] arrSex = new int[2];
		arrSex[0] = service.usermalecnt();
		arrSex[1] = service.usercount(null,null) - arrSex[0];
		
		mav.addObject("lastweek2",Arrays.toString(lastweek)); //지난주 그래프
		mav.addObject("thisweek2",Arrays.toString(thisweek)); //이번주 그래프
		mav.addObject("lastweekcnt2",lastweekcnt); // 지난주 방문자 수
		mav.addObject("thisweekcnt2",thisweekcnt); // 이번주 방문자 수 
		mav.addObject("todaycnt2",todaycnt); // 오늘 방문자 수
		mav.addObject("ystdaycnt2",ystdaycnt); //어제 방문자 수 
		mav.addObject("this_sign_cnt2",this_sign_cnt); // 이번주 가입자수 
		mav.addObject("last_sign_cnt2",last_sign_cnt); //지난 주 가입자 수 
		
		mav.addObject("arrCate",Arrays.toString(iCate));
		mav.addObject("arrAge2",Arrays.toString(arrAge));
		mav.addObject("arrSex2",Arrays.toString(arrSex));
		
		
		return mav;
	}
	
	@RequestMapping("message")
	public ModelAndView message() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	 @PostMapping("userdel")
	   public ModelAndView userdel (String[] idchks, HttpSession session)  {
	      ModelAndView mav = new ModelAndView();
	      String str = "";
	      if(idchks == null || idchks.length==0) {
	    	  str = null;
	    	  System.out.println("없네 슈벌");
	      }else {
	    	  for(int i=0; i<idchks.length;i++) {
	    		  str += "'"+idchks[i].toString()+"'";
	    		  if(i<idchks.length-1) str+=",";
	    	  }
	      }
	      if(str != null) {
		      System.out.println(str);
		      service.user_sp_del(str);
		      service.user_pj_del(str);
		      service.user_del(str);
	      }
	      mav.setViewName("redirect:user.do");
	      return mav;

	   }
	  @PostMapping("approve")
	   public ModelAndView approve (String[] idchks, HttpSession session)  {
	      ModelAndView mav = new ModelAndView();
	      String str = "";
	      if(idchks == null || idchks.length==0) {
	    	  str = null;
	    	  System.out.println("없네 슈벌");
	      }else {
	    	  for(int i=0; i<idchks.length;i++) {
	    		  str += "'"+idchks[i].toString()+"'";
	    		  if(i<idchks.length-1) str+=",";
	    	  }
	      }
	      if(str != null) {
		      System.out.println(str);
		      service.project_approve(str);
		     // service.user_del(str);
	      }
	      mav.setViewName("redirect:project.do");
	      return mav;

	   }
	  @PostMapping("cancel")
	   public ModelAndView cancel (String[] idchks, HttpSession session)  {
	      ModelAndView mav = new ModelAndView();
	      String str = "";
	      if(idchks == null || idchks.length==0) {
	    	  str = null;
	    	  System.out.println("없네 슈벌");
	      }else {
	    	  for(int i=0; i<idchks.length;i++) {
	    		  str += "'"+idchks[i].toString()+"'";
	    		  if(i<idchks.length-1) str+=",";
	    	  }
	      }
	      if(str != null) {
		      System.out.println(str);
		      service.project_sp_delete(str);
		      service.project_cancel(str);
		     // service.user_del(str);
	      }
	      mav.setViewName("redirect:project.do");
	      return mav;

	   }
	  @RequestMapping("spview")
	  public ModelAndView spview(String id) {
		  ModelAndView mav = new ModelAndView();
		  List<Support> mysplist = service.splist(id);
		  int myspcnt = mysplist.size();
		  mav.addObject("myspcnt",myspcnt);
		  mav.addObject("mysplist",mysplist);
		  return mav;
	  }
	  @RequestMapping("pjview")
	  public ModelAndView pjview(int num) {
		  ModelAndView mav = new ModelAndView();
		  mav.addObject("mainimg", service.pj_info_mainimg(num));
		  mav.addObject("summary", service.pj_info_summary(num));
		  return mav;
	  }
	
	
	
}
