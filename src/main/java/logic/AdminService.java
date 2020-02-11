package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AdminDao;
import dao.ProjectDao;
import dao.RewardDao;
import dao.UserDao;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	@Autowired
	private ProjectDao projectDao;
	@Autowired
	private RewardDao rewardDao;
	@Autowired
	private UserDao userDao;
	
	
	public int usercount(String searchtype, String searchcontent) {
		return adminDao.usercount(searchtype,searchcontent);
	}

	public List<User> userlist(Integer pageNum, int limit, String searchtype, String searchcontent) {
		return adminDao.userlist(pageNum,limit,searchtype,searchcontent);
	}

	public int projectcount(String searchtype, String searchcontent) {
		return adminDao.projectcount(searchtype,searchcontent);
	}
	public List<Project> projectlist(Integer pageNum, int limit, String searchtype, String searchcontent) {
		return adminDao.projectlist(pageNum,limit,searchtype,searchcontent);
	}

	public List<Support> splist(String id) {
		return adminDao.splist(id);
	}

	public String catelist(int project_num) {
		return adminDao.catelist(project_num);
	}

	public List<Project> user_pjlist(String id) {
		return adminDao.user_pjlist(id);
	}

	public void user_sp_del(String str) {
		adminDao.user_sp_del(str);
	}

	public void user_pj_del(String str) {
		adminDao.user_pj_del(str);		
	}

	public void user_del(String str) {
		adminDao.user_del(str);		
	}

	public List<Support> splist_p(int project_num) {
		return adminDao.splist_p(project_num);
	}

	public String sexlist(String id) {
		return adminDao.sexlist(id);
	}

	public String agelist(String id) {
		return adminDao.agelist(id);
	}

	public String getusernic(String id) {
		return adminDao.getusernic(id);
	}

	public void project_approve(String str) {
		adminDao.project_approve(str);
		
	}

	public void project_sp_delete(String str) {
		adminDao.project_sp_delete(str);
		
	}
	
	public void project_cancel(String str) {
		adminDao.project_cancel(str);
	}

	public String pj_info_mainimg(int num) {
		return adminDao.pj_info_mainimg(num);
	}

	public String pj_info_summary(int num) {
		return adminDao.pj_info_summary(num);
	}

	public int dash_pj_cnt(String state) {
		return adminDao.dash_pj_cnt(state);
	}


	public List<Visit> total_visit_list() {
		return adminDao.total_visit_list();
	}

	public Integer todaycnt(String time1) {
		return adminDao.todaycnt(time1);
	}

	public int sign_cnt(String mon, String sun) {
		return adminDao.sign_cnt(mon,sun);
	}

	public int getcatecnt(String s) {
		return adminDao.getcatecnt(s);
	}

	public int get_u_agecnt(String s) {
		return adminDao.get_u_agecnt(s);
	}

	public int usermalecnt() {
		return adminDao.usermalecnt();
	}


	
	
	
}
