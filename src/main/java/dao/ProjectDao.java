package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ProjectMapper;
import logic.Project;
import logic.User;

@Repository
public class ProjectDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public void insert(Project project, User dbuser) {
		param.clear();
		param.put("project",project);
		param.put("dbuser",dbuser);
		
		sqlSession.getMapper(ProjectMapper.class).insert(param); 
	}

	public List<Project> list() { 
		return sqlSession.getMapper(ProjectMapper.class).select();
	}

	public int maxnum() {
		return sqlSession.getMapper(ProjectMapper.class).maxnum();
	}

	public List<Project> newlist() {
		return sqlSession.getMapper(ProjectMapper.class).newselect();
	}

	public List<Project> endlist() {
		return sqlSession.getMapper(ProjectMapper.class).endselect();
	}

	public List<Project> bestlist() {
		return sqlSession.getMapper(ProjectMapper.class).bestselect();
	}

	public Project selectOne(Integer num) {
		param.clear();
		param.put("project_num",num);
		return sqlSession.getMapper(ProjectMapper.class).selectOne(param);
	}

	public List<Project> selectOneReward(Integer num) {
		param.clear();
		param.put("project_num",num);
		return sqlSession.getMapper(ProjectMapper.class).selectOneReward(param);
	}

	public List<Project> searchselect(String category, String state, Integer rate) {
		String rate2=null;
		if(state != null) {
			if(state.equals("진행")) {
				state = ">";
			}else if(state.equals("마감")){
				state = "<";
			}else {
				state = null;
			}
		}
		if(rate != null) {
			if(rate == 1) {
				rate2 = "(support_money/goal)*100 < 50";
			}else if(rate == 2) {
				rate2 = "50 < (support_money/goal)*100 AND (support_money/goal)*100 < 100";
			}else {
				rate2 = "100 < (support_money/goal)*100";
			}
		}
		param.clear();
		param.put("category",category);
		param.put("state",state);
		param.put("rate", rate2);
		return sqlSession.getMapper(ProjectMapper.class).searchselect(param);
	}

	public List<Project> searchname(String search) {
		param.clear();
		param.put("search", "%"+search+"%");
		return sqlSession.getMapper(ProjectMapper.class).searchname(param);
	}
}
