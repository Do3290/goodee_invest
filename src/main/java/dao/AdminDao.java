package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.AdminMapper;
import logic.Project;
import logic.Support;
import logic.User;
import logic.Visit;


@Repository
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();
	
	public int usercount(String searchtype, String searchcontent) {
		param.clear();
		param.put("searchtype", searchtype);
		param.put("searchcontent", "%"+searchcontent+"%");
		return sqlSession.getMapper(AdminMapper.class).usercount(param);
	}


	public List<User> userlist(Integer pageNum, int limit, String searchtype, String searchcontent) {
		param.clear();
		param.put("searchtype", searchtype);
		param.put("searchcontent", "%"+searchcontent+"%");
		param.put("startrow", (pageNum-1)*limit);
		param.put("limit", limit);
		return sqlSession.getMapper(AdminMapper.class).userlist(param); 
	}

	public int projectcount(String searchtype, String searchcontent) {
		param.clear();
		param.put("searchtype", searchtype);
		param.put("searchcontent", "%"+searchcontent+"%");
		return sqlSession.getMapper(AdminMapper.class).projectcount(param);
	}

	public List<Project> projectlist(Integer pageNum, int limit, String searchtype, String searchcontent) {
		param.clear();
		param.put("searchtype", searchtype);
		param.put("searchcontent", "%"+searchcontent+"%");
		param.put("startrow", (pageNum-1)*limit);
		param.put("limit", limit);
		return sqlSession.getMapper(AdminMapper.class).projectlist(param); 
	}


	public List<Support> splist(String id) {
		param.clear();
		param.put("id", id);
		return  sqlSession.getMapper(AdminMapper.class).splist(param); 
	}


	public String catelist(int project_num) {
		param.clear();
		param.put("project_num", project_num);
		return  sqlSession.getMapper(AdminMapper.class).catelist(param); 
	}


	public List<Project> user_pjlist(String id) {
		param.clear();
		param.put("id", id);
		return  sqlSession.getMapper(AdminMapper.class).user_pjlist(param); 
	}


	public void user_sp_del(String str) {
		param.clear();
		param.put("str", str);
		sqlSession.getMapper(AdminMapper.class).user_sp_del(param); 
	}


	public void user_pj_del(String str) {
		param.clear();
		param.put("str", str);
		sqlSession.getMapper(AdminMapper.class).user_pj_del(param); 		
	}


	public void user_del(String str) {
		param.clear();
		param.put("str", str);
		sqlSession.getMapper(AdminMapper.class).user_del(param); 		
	}


	public List<Support> splist_p(int project_num) {
		param.clear();
		param.put("num", project_num);
		return  sqlSession.getMapper(AdminMapper.class).splist_p(param);
	}


	public String sexlist(String id) {
		param.clear();
		param.put("id", id);
		return  sqlSession.getMapper(AdminMapper.class).sexlist(param);
	}


	public String agelist(String id) {
		param.clear();
		param.put("id", id);
		return  sqlSession.getMapper(AdminMapper.class).agelist(param);
	}


	public String getusernic(String id) {
		param.clear();
		param.put("id", id);
		return  sqlSession.getMapper(AdminMapper.class).getusernic(param);
	}


	public void project_approve(String str) {
		param.clear();
		param.put("str", str);
		sqlSession.getMapper(AdminMapper.class).project_approve(param); 				
	}


	public void project_sp_delete(String str) {
		param.clear();
		param.put("str", str);
		sqlSession.getMapper(AdminMapper.class).project_sp_delete(param); 		
	}


	public void project_cancel(String str) {
		param.clear();
		param.put("str", str);
		sqlSession.getMapper(AdminMapper.class).project_cancel(param); 				
	}


	public String pj_info_mainimg(int num) {
		param.clear();
		param.put("num", num);
		return sqlSession.getMapper(AdminMapper.class).pj_info_mainimg(param);
	}


	public String pj_info_summary(int num) {
		param.clear();
		param.put("num", num);
		return sqlSession.getMapper(AdminMapper.class).pj_info_summary(param);
	}


	public int dash_pj_cnt(String state) {
		param.clear();
		param.put("state", state);
		return sqlSession.getMapper(AdminMapper.class).dash_pj_cnt(param);
	}



	public List<Visit> total_visit_list() {
		return sqlSession.getMapper(AdminMapper.class).total_visit_list();
	}


	public Integer todaycnt(String time1) {
		param.clear();
		param.put("time", time1);
		return sqlSession.getMapper(AdminMapper.class).todaycnt(param);
	}


	public int sign_cnt(String mon, String sun) {
		param.clear();
		param.put("mon", mon);
		param.put("sun",sun);
		return sqlSession.getMapper(AdminMapper.class).sign_cnt(param);
	}


	public int getcatecnt(String s) {
		param.clear();
		param.put("s",s);
		return sqlSession.getMapper(AdminMapper.class).getcatecnt(param);
	}


	public int get_u_agecnt(String s) {
		param.clear();
		param.put("s",s);
		return sqlSession.getMapper(AdminMapper.class).get_u_agecnt(param);
	}


	public int usermalecnt() {
		return  sqlSession.getMapper(AdminMapper.class).usermalecnt();
	}


}
