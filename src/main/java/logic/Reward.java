package logic;

import java.util.Date;

public class Reward {
	private int reward_num;
	private int project_num;
	private int item_order;
	private String item;
	private int itemcnt;
	private int reward_goal;
	private Date reward_date;
	
	public int getReward_num() {
		return reward_num;
	}
	public void setReward_num(int reward_num) {
		this.reward_num = reward_num;
	}
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public int getItem_order() {
		return item_order;
	}
	public void setItem_order(int item_order) {
		this.item_order = item_order;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public int getItemcnt() {
		return itemcnt;
	}
	public void setItemcnt(int itemcnt) {
		this.itemcnt = itemcnt;
	}
	public int getReward_goal() {
		return reward_goal;
	}
	public void setReward_goal(int reward_goal) {
		this.reward_goal = reward_goal;
	}
	public Date getReward_date() {
		return reward_date;
	}
	public void setReward_date(Date reward_date) {
		this.reward_date = reward_date;
	}
	@Override
	public String toString() {
		return "Reward [reward_num=" + reward_num + ", project_num=" + project_num + ", item_order=" + item_order
				+ ", item=" + item + ", itemcnt=" + itemcnt + ", reward_goal=" + reward_goal + ", reward_date="
				+ reward_date + "]";
	}
}
