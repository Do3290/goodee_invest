package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import dao.mapper.UserMapper;
import logic.Project;
import logic.Support;
import logic.User;
@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
Map<String,Object> param = new HashMap<String,Object>();


	public void userInsert(User user) {
		sqlSession.getMapper(UserMapper.class).userinsert(user);
	}
	public User selectOne(String id) {	
		param.clear();
		param.put("id",id);
		return sqlSession.getMapper(UserMapper.class).select(param);
			
	}
	public int count(String id) {
		param.clear();
		param.put("id",id);
		return sqlSession.getMapper(UserMapper.class).count(param);
	}
	public void update(User user) {
		
	
		sqlSession.getMapper(UserMapper.class).update(user);
	}

	

	
	public List<Project> project(String id, String project_num) {
		param.clear();
		param.put("id", id);
		param.put("project_num",project_num);
		return sqlSession.getMapper(UserMapper.class).selectproject(param);
	}
	public List<String> datediff(String id, String project_num) {
		param.clear();
		param.put("id",id);
		param.put("project_num",project_num);
		
		return sqlSession.getMapper(UserMapper.class).datediff(param);
	}
	public void supportwrite(String id, Support support, String address) {
		param.clear();
		param.put("id",id);
		param.put("support",support);
		System.out.println("param" +id);
		param.put("support_address",address);
		System.out.println("address"+address);
		sqlSession.getMapper(UserMapper.class).supportwrite(param);
	}

	public List<Project> getSupport(String id, Support support, String project_num,Project project, String col, String content) {
		param.clear();
		param.put("id",id);
		param.put("col", col);
		param.put("content", "%" + content + "%");
		param.put("support",support);
		param.put("project",project);
		param.put("project_num",project_num);
		
		return sqlSession.getMapper(UserMapper.class).getSupport(param);
	}
	public int supportcount(String id, Support support, String project_num, String col, String content) {
		
		param.clear();
		param.put("id", id);
		param.put("col", col);
		param.put("content", "%" + content + "%");
		param.put("support",support);
		param.put("project_num",project_num);
		
		
		
		return sqlSession.getMapper(UserMapper.class).supportcount(param);
	}
	
	
	
	public int supportcount1(String id, Support support, String project_num, String col, String content) {

		param.clear();
		param.put("id", id);
		param.put("col",col);
		param.put("content", "%" + content + "%");
		param.put("support",support);
		param.put("project_num",project_num);
		
		
		
		return sqlSession.getMapper(UserMapper.class).supportcount1(param);
	}
	public int supportcount2(String id, Support support, String project_num,String col, String content) {
		param.clear();
		param.put("id", id);
		param.put("col",col);
		param.put("content", "%" + content + "%");
		param.put("support",support);
		param.put("project_num",project_num);
		
		
		
		return sqlSession.getMapper(UserMapper.class).supportcount2(param);
	}

	public Support supportNum(Support support_num) {
		param.clear();
		param.put("support_num",support_num);
		
		return sqlSession.getMapper(UserMapper.class).supportnum(param);
	}
	public void moneyUpdate(String id, int updatemoney) {
		param.clear();
		param.put("id",id);
		param.put("updatemoney",updatemoney);
		
		sqlSession.getMapper(UserMapper.class).moneyUpdate(param);
	}
	public Project supportDetail(int support_num, String id) {
		param.clear();
		param.put("support_num",support_num);
		param.put("id",id);
		return sqlSession.getMapper(UserMapper.class).supportDetail(param);
	}
	public void updateReward(int support_num) {
		param.put("support_num",support_num);
		sqlSession.getMapper(UserMapper.class).updateReward(param);
	}
	public Support getSupportOne(Support support_num, String id) {
		param.put("support_num", support_num);
		
		return sqlSession.getMapper(UserMapper.class).getSupportOne(param);
	}

	
}
