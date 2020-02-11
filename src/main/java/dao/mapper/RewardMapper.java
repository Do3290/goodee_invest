package dao.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import logic.Project;
import logic.Reward;

public interface RewardMapper {
	@Insert("insert into reward (project_num, item_order, item, itemcnt, reward_goal, reward_date) " +
			"values(#{project_num}, #{item_order}, #{item}, #{itemcnt}, #{reward_goal}, #{reward_date})")
	void insert(Map<String, Object> param);
	
}
