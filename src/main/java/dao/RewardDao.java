package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.RewardMapper;

@Repository
public class RewardDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<>();

	public void insert(int project_num, int item_order, String item, int itemcnt, int reward_goal,
			String reward_date) {
		param.clear();
		param.put("project_num", project_num);
		param.put("item_order", item_order);
		param.put("item", item);
		param.put("itemcnt", itemcnt);
		param.put("reward_goal", reward_goal);
		param.put("reward_date", reward_date);
		sqlSession.getMapper(RewardMapper.class).insert(param); 	
	}
}
