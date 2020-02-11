package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Project;
import logic.Support;
import logic.User;

public interface UserMapper {

	
	
	@Insert
	("insert into userdb (id, name, pic, gender, age, account, money, signdate) "
		+" values (#{id}, #{name}, #{pic}, #{gender}, #{age}, #{account},#{money},NOW())")
	void userinsert(User user);

	  @Select("select * from userdb where id=#{id}")
	 User select(Map<String, Object> param);
	

	@Update
	(" update userdb set story=#{story}, nic =#{nic}, tel =#{tel} where id=#{id}")
	void update(User user);


 


@Select("select project_num, b.id, category, summary, b.story, main_image main_imageurl, banner_image banner_imageurl, state, goal, "
		+ " TIMESTAMPDIFF(day,NOW(),deadline) 'deadline', project_account, subject  from "
		+ "project a join userdb b on a.id = b.id and b.id=#{id}"
		)
List<Project> selectproject(Map<String, Object> param);


@Select("select count(*)from project a join userdb b on a.id = b.id and b.id=#{id};")
int count(Map<String, Object> param);


@Select("SELECT TIMESTAMPDIFF(day,NOW(),deadline) FROM project WHERE TIMESTAMPDIFF(day,NOW(),deadline) > 0 AND id=#{id} And project_num=#{project_num}")
List<String> datediff(Map<String, Object> param);

@Insert("insert into support (id, support_address, project_num, support_money, reward_state) values (#{id} , #{support_address} ,#{project_num},#{support.support_money}, #{reward_state})")
void supportwrite(Map<String, Object> param);
//where project_num 




@Select({"<script>",
		"select TIMESTAMPDIFF(DAY,NOW(),deadline) 'datediff', s.support_money, s.support_num,"
		," p.summary,p.project_num, p.main_image main_imageurl, p.subject, u.id, s.support_address, u.tel"
		," FROM support s JOIN project p ON s.project_num= p.project_num  JOIN userdb u ON" 
		," s.id = u.id AND s.id= #{id}"
		,"<if test = 'col !=null'>"
		," and ${col} like #{content}"
		,"</if>"
		, " GROUP BY s.support_num"		
		,"</script>"
		})
List<Project> getSupport(Map<String, Object> param);


@Select({
		"<script>"
		,"SELECT COUNT(*) FROM support s JOIN project p ON s.project_num = p.project_num"
		,"JOIN userdb u ON s.id = u.id"
		,"<if test = 'col != null'>"
		," and ${col} like #{content}"
		,"</if>"
		," and u.id =#{id} "
		,"</script>"})
int supportcount(Map<String, Object> param);


//@Select({
//	"<script>",
//	"SELECT COUNT(*) FROM support s JOIN project p ON s.project_num = p.project_num",
//	 " JOIN userdb u ON s.id =u.id",
//	,"<if test = 'col != null'> and ${col} like #{content}</if>",
//	 " AND u.id = #{id} AND TIMESTAMPDIFF(DAY,NOW(),deadline)<0",
//	"</script>"})
@Select({
	"<script>"
	,"SELECT COUNT(*) FROM support s JOIN project p ON s.project_num = p.project_num"
	,"JOIN userdb u ON s.id = u.id"
	,"<if test = 'col != null'>"
	," and ${col} like #{content}"
	,"</if>"
	," and u.id = #{id} AND TIMESTAMPDIFF(DAY,NOW(),deadline) &lt; 0"
	,"</script>"})
int supportcount1(Map<String, Object> param); // ����




@Select({"<script>"
	,"SELECT COUNT(*) FROM support s JOIN project p ON s.project_num = p.project_num"
	,"JOIN userdb u ON s.id = u.id"
	,"<if test = 'col != null'>"
	," and ${col} like #{content}"
	,"</if>"
	," and u.id = #{id} AND TIMESTAMPDIFF(DAY,NOW(),deadline) > 0"
	,"</script>"})
int supportcount2(Map<String, Object> param);
//����

@Select("select * from support where support_num=#{support_num}")
Support supportnum(Map<String, Object> param);


@Update("UPDATE userdb u INNER JOIN support s ON"
		+" u.id=s.id"
		+" SET u.money=#{updatemoney} where u.id =#{id}")
void moneyUpdate(Map<String, Object> param);



@Select("SELECT * FROM support s JOIN userdb u ON s.id = u.id" 
		+" AND s.id=#{id} join project p on p.project_num = s.project_num AND s.support_num=#{support_num}")

Project supportDetail(Map<String, Object> param);



@Update("update support set reward_state=2 where project_num=#{project_num} and id=#{id}")
void updateReward(Map<String, Object> param);

@Select("select * from support where support_num=#{support_num} and id=#{id}")
Support getSupportOne(Map<String, Object> param);


@Select("SELECT p.project_num, s.reward_state, u.nic, sum(support_money) 'support_money' FROM support s JOIN project p ON p.project_num = s.project_num"
		+ " join userdb u ON s.id=u.id and p.project_num=#{project_num}"
		+" GROUP BY u.nic")
List<Project> getsupportUser(Map<String, Object> param);


@Update("update support set reward_state=1 where project_num=#{project_num} and id=#{id}")
void giveReward(Map<String, Object> param);
}


