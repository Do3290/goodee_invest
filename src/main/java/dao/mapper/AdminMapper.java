package dao.mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Project;
import logic.Support;
import logic.User;
import logic.Visit;

public interface AdminMapper {

	@Select({"<script>",
		 "select count(*) from userdb",
		 "<if test='searchtype!=null'> where ${searchtype} like #{searchcontent}</if>",
		 "</script>"})
	int usercount(Map<String, Object> param);
	
	@Select({"<script>",
		 "select * from userdb ",
		 "<if test=' searchtype!=null '> where ${searchtype} like #{searchcontent} </if>",
		 " order by id desc limit #{startrow}, #{limit} ",
		 "</script>"})
	List<User> userlist(Map<String, Object> param);
	
	@Select({"<script>",
		 "select count(*) from project",
		 "<if test='searchtype!=null'> where ${searchtype} like #{searchcontent}</if>",
		 "</script>"})
	int projectcount(Map<String, Object> param);

	@Select({"<script>",
		 "select * from project ",
		 "<if test='searchtype!=null '> where ${searchtype} like #{searchcontent} </if>",
		 " order by project_num desc limit #{startrow}, #{limit} ",
		 "</script>"})
	List<Project> projectlist(Map<String, Object> param);

	@Select("select * from support where id = #{id}")
	List<Support> splist(Map<String, Object> param);

	@Select("select category from project where project_num = #{project_num}")
	String catelist(Map<String, Object> param);

	@Select("select * from project where id = #{id}")
	List<Project> user_pjlist(Map<String, Object> param);

	@Delete("delete from support where id in ( ${str} )")
	void user_sp_del(Map<String, Object> param);
	@Delete("delete from project where id in ( ${str} )")
	void user_pj_del(Map<String, Object> param);
	@Delete("delete from userdb where id in ( ${str} ) ")
	void user_del(Map<String, Object> param);

	@Select("select * from support where project_num = ${num}")
	List<Support> splist_p(Map<String, Object> param);

	@Select("select gender from userdb where id = #{id}")
	String sexlist(Map<String, Object> param);

	@Select("select age from userdb where id = #{id}")
	String agelist(Map<String, Object> param);

	@Select("select nic from userdb where id=#{id}")
	String getusernic(Map<String, Object> param);

	@Update("update project set state = '진행상태' where project_num in (${str})")
	void project_approve(Map<String, Object> param);

	@Delete("delete from support where project_num in (${str})")
	void project_sp_delete(Map<String, Object> param);
	
	@Delete("delete from project where project_num in (${str})")
	void project_cancel(Map<String, Object> param);

	@Select("select main_image from project where project_num = #{num}")
	String pj_info_mainimg(Map<String, Object> param);
	@Select("select summary from project where project_num = #{num}")
	String pj_info_summary(Map<String, Object> param);
	
	@Select("select count(*) from project where state = #{state}")
	int dash_pj_cnt(Map<String, Object> param);

	@Select("select * from visit")
	List<Visit> total_visit_list();

	@Select("select visitcnt from visit where visitdate = #{time}")
	Integer todaycnt(Map<String, Object> param);

	@Select("select count(*) from visit where visitdate between #{mon} and #{sun}")
	int sign_cnt(Map<String, Object> param);

	@Select("select count(*) from project where category = #{s}")
	int getcatecnt(Map<String, Object> param);

	@Select("select count(*) from userdb where age = #{s}")
	int get_u_agecnt(Map<String, Object> param);

	@Select("select count(*) from userdb where gender = 'male'")
	int usermalecnt();

}
