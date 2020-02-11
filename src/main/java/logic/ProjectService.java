package logic;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.ProjectDao;
import dao.RewardDao;
import dao.UserDao;

@Service
public class ProjectService {
	@Autowired
	private ProjectDao projectDao;
	@Autowired
	private RewardDao rewardDao;
	
	public void projectWrite(Project project, User dbuser, HttpServletRequest request) {
			if(project.getMain_image() != null && !project.getMain_image().isEmpty()) {
				uploadFileCreate(project.getMain_image(), request, "page/file/");
				project.setMain_imageurl(project.getMain_image().getOriginalFilename());
			}
			if(project.getBanner_image() != null && !project.getBanner_image().isEmpty()) {
				uploadFileCreate(project.getBanner_image(), request, "page/file/");
				project.setBanner_imageurl(project.getBanner_image().getOriginalFilename());
			}
			projectDao.insert(project, dbuser);
	}

	private void uploadFileCreate(MultipartFile picture, HttpServletRequest request, String path) {
		String orgFile = picture.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + path;
		File fpath = new File(uploadPath);
		if(!fpath.exists()) fpath.mkdirs();
		try {
			picture.transferTo(new File(uploadPath + orgFile));
		} catch(Exception e) {
			e.printStackTrace();
		}	
	}

	public List<Project> projectlist() {
		return projectDao.list();  
	}

	public void rewardWrite(int project_num, int item_order, String item, int itemcnt, int reward_goal,
			String reward_date, HttpServletRequest request) {
		rewardDao.insert(project_num,item_order,item,itemcnt,reward_goal,reward_date);
	}

	public int projectMaxnum() {
		return projectDao.maxnum();
	}

	public List<Project> newprojectlist() {
		return projectDao.newlist();
	}

	public List<Project> endprojectlist() {
		return projectDao.endlist();
	}

	public List<Project> bestprojectlist() {
		return projectDao.bestlist();
	}

	public Project getProject(Integer num) {
		return projectDao.selectOne(num);
	}

	public List<Project> getReward(Integer num) {
		return projectDao.selectOneReward(num);
	}

	public List<Project> searchlist(String category, String state, Integer rate) {
		return projectDao.searchselect(category, state, rate);
	}

	public List<Project> searchname(String search) {
		return projectDao.searchname(search);
	}

}
