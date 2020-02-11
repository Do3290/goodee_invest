package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Project;

public interface ProjectMapper {
	@Insert("insert into project (id,category,summary,story,main_image,banner_image,state,goal,deadline,project_account,subject) "
	+ " values(#{dbuser.id}, #{project.category}, #{project.summary}, #{project.story}, #{project.main_imageurl}, #{project.banner_imageurl}, '승인 대기', #{project.goal}, #{project.deadline}, #{dbuser.account}, #{project.subject})") 
	void insert(Map<String,Object> map);
 
	@Select("SELECT project.project_num, project.id, project.category ,project.summary, project.banner_image banner_imageurl, project.subject, project.summary, project.main_image main_imageurl, TIMESTAMPDIFF(day,NOW(),deadline) 'deadline', ifnull(support.support_money,0) 'support_money', ifnull(ROUND(100 * SUM(support.support_money) / project.goal),0) pop " + 
			"FROM project Left JOIN support ON project.project_num = support.project_num GROUP BY project.project_num")
	List<Project> select();

	@Select("SELECT IFNULL(MAX(project_num),0) FROM project")
	int maxnum();

	@Select("SELECT project.project_num, project.id, project.summary, project.banner_image banner_imageurl, project.subject, project.summary, project.main_image main_imageurl, TIMESTAMPDIFF(day,NOW(),deadline) 'deadline', ifnull(support.support_money,0) 'support_money', ifnull(ROUND(100 * SUM(support.support_money) / project.goal),0) 'pop' " + 
			"FROM project Left JOIN support ON project.project_num = support.project_num GROUP BY project.project_num ORDER BY project.project_num desc")
	List<Project> newselect();

	@Select("SELECT project.project_num, project.id, project.summary, project.banner_image banner_imageurl, project.subject, project.summary, project.main_image main_imageurl, TIMESTAMPDIFF(day,NOW(),deadline) 'deadline', ifnull(support.support_money,0) 'support_money', ifnull(ROUND(100 * SUM(support.support_money) / project.goal),0) 'pop' " + 
			"FROM project Left JOIN support ON project.project_num = support.project_num GROUP BY project.project_num Having deadline > 0 and deadline < 11 ORDER BY deadline")
	List<Project> endselect();

	@Select("SELECT project.project_num, project.id, project.summary, project.banner_image banner_imageurl, project.subject, project.summary, project.main_image main_imageurl, TIMESTAMPDIFF(day,NOW(),deadline) 'deadline', ifnull(support.support_money,0) 'support_money', ifnull(ROUND(100 * SUM(support.support_money) / project.goal),0) 'pop' " + 
			"FROM project Left JOIN support ON project.project_num = support.project_num GROUP BY project.project_num HAVING pop > 150 and deadline > 0 ORDER BY pop DESC")
	List<Project> bestselect();
	
	@Select("SELECT count(DISTINCT support.id) 'supportcnt', project.subject, project.project_num, project.id, project.category ,project.summary, project.story, project.banner_image banner_imageurl,project.main_image main_imageurl, project.goal, project.deadline 'date', project.project_account,TIMESTAMPDIFF(day,NOW(),deadline) 'deadline', ifnull(support.support_money,0) 'support_money', ifnull(ROUND(100 * SUM(support.support_money) / project.goal),0) 'pop' " + 
			"FROM project Left JOIN support ON project.project_num = support.project_num WHERE project.project_num = #{project_num}")
	Project selectOne(Map<String, Object> param);

	@Select("SELECT item ,reward_num, project_num, item_order, itemcnt, reward_goal, reward_date FROM reward WHERE project_num = #{project_num}")
	List<Project> selectOneReward(Map<String, Object> param);
	
	@Select("<script>" +
			"SELECT project_num,id,category,summary,story,main_imageurl,state,goal,subject ,TIMESTAMPDIFF(day,NOW(),deadline) deadline, support_money,pop FROM " +
			"( SELECT project_num,id,category,summary,story,main_image main_imageurl,state,goal,subject ,deadline ,(SELECT IFNULL(SUM(support_money),0) FROM support s WHERE s.project_num = p.project_num) support_money, (SELECT ifnull(ROUND(100 * SUM(support_money)/goal),0) FROM support s WHERE s.project_num = p.project_num) pop  FROM project p) a " +
			"<trim prefix='where' prefixOverrides='AND || OR'> " + 
			"	<if test='category != null'>and category = #{category}</if> " + 
			"	<if test='state != null'>and deadline ${state} NOW()</if> " + 
			"	<if test='rate != null'>and ${rate}</if> " + 
			"</trim>" +
			"</script>")
	List<Project> searchselect(Map<String, Object> param);
	
	@Select("<script>"
			+ "SELECT project_num,id,category,summary,story,main_imageurl,state,goal,subject, TIMESTAMPDIFF(day,NOW(),deadline) deadline, support_money,pop  FROM  "
			+ "( SELECT project_num,id,category,summary,story,main_image main_imageurl,state,goal,subject, deadline,(SELECT IFNULL(SUM(support_money),0) FROM support s WHERE s.project_num = p.project_num) support_money, (SELECT ifnull(ROUND(100 * SUM(support_money)/goal),0) FROM support s WHERE s.project_num = p.project_num) pop  FROM project p) a"
			+ "<if test='search != null'>where subject like #{search}</if>"
			+ "</script>")
	List<Project> searchname(Map<String, Object> param);
}
