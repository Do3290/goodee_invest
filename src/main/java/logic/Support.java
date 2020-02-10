package logic;

public class Support {
	private int support_num;
	private String id;
	private int project_num;
	private int support_money;
	private String support_address;
	private int reward_state;
	public int getSupport_num() {
		return support_num;
	}
	public void setSupport_num(int support_num) {
		this.support_num = support_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getProject_num() {
		return project_num;
	}
	public void setProject_num(int project_num) {
		this.project_num = project_num;
	}
	public int getSupport_money() {
		return support_money;
	}
	public void setSupport_money(int support_money) {
		this.support_money = support_money;
	}
	public String getSupport_address() {
		return support_address;
	}
	public void setSupport_address(String support_address) {
		this.support_address = support_address;
	}
	public int getReward_state() {
		return reward_state;
	}
	public void setReward_state(int reward_state) {
		this.reward_state = reward_state;
	}
	@Override
	public String toString() {
		return "Support [support_num=" + support_num + ", id=" + id + ", project_num=" + project_num
				+ ", support_money=" + support_money + ", support_address=" + support_address + ", reward_state="
				+ reward_state + "]";
	}
	
	
}
