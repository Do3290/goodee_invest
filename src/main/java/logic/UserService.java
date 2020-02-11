package logic;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	
	public void userInsert(User user) {
		userDao.userInsert(user);
		
	}
	public User getUser(String id) {
		return userDao.selectOne(id);
	}

	public void userUpdate(User user, HttpServletRequest request) {
		userDao.update(user);
		
		
	}

	public List<Project> getProject(String id, String project_num) {
		return userDao.project(id,project_num);
	}
	public int projectcount(String id) {
		
		
		return userDao.count(id);
		
	}
	public List<String> datediff(String id, String project_num) {
		return userDao.datediff(id, project_num);
	}
	public void supportwrite(String id, Support support, HttpServletRequest request, String address, Integer project_num) {
		userDao.supportwrite(id, support, address,project_num);
		
	}

	
	public List<Project> getSupport(String id, Support support, String project_num, Project project, String col, String content) {
		
		return userDao.getSupport(id, support, project_num, project, col, content);
		
	}
	public int supportcount(String id, Support support, String project_num, String col, String content) {
		// TODO Auto-generated method stub
		return userDao.supportcount(id, support, project_num, col, content);
	}
	
	public int supportcount1(String id, Support support, String project_num, String col, String content) {
		
		
		return userDao.supportcount1(id, support, project_num, col, content);
	}
	public int supportcount2(String id, Support support, String project_num, String col, String content) {
		return userDao.supportcount2(id, support, project_num, col, content);
	}

	public Support getSupportnum(Support support_num) {
		return userDao.supportNum(support_num);
	}
	public void moneyUpdate(String id, int updatemoney) {
		userDao.moneyUpdate(id,updatemoney);
	}

	public Project supportDetail(int support_num, String id) {
		
		return userDao.supportDetail(support_num, id);
	}
	public void updateReward(int project_num, String id) {
		userDao.updateReward(project_num,id);
	}
	public Support getSupportone(Support support_num, String id) {
		
		
		return userDao.getSupportOne(support_num, id);
	}
	public List<Project> getsupportUser(int num) {

		
		return userDao.getsupportUser(num);
	}
	public void giveReward(int project_num, String id) {
		userDao.giveReward(project_num,id);
	}
	
	


}
