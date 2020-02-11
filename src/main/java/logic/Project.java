package logic;


import org.springframework.web.multipart.MultipartFile;

/**
 * @author GDJ_19
 *
 */
public class Project {
   private int project_num;
   private String id;
   private String category;
   private String summary;
   private String story;
   private MultipartFile main_image;
   private String main_imageurl;
   private MultipartFile banner_image;
   private String banner_imageurl;
   private String state;
   private int goal;
   
   
   private String deadline;
   private String project_account;
   private String subject;
   private int reward_num;
   private int item_order;
   private String item;
   private int itemcnt;
   private int reward_goal;
   private String reward_date;
   
   //박민진작업따로
   private int pop;
   private String date;
   private int supportcnt;
   
 //김경훈작업따로
   private int reward_state;
   private int support_money;
   private int support_num;
   private String support_address;
   private String tel;
   private String name;
   private int datediff;
   
   
public int getPop() {
	return pop;
}
public void setPop(int pop) {
	this.pop = pop;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public int getSupportcnt() {
	return supportcnt;
}
public void setSupportcnt(int supportcnt) {
	this.supportcnt = supportcnt;
}  
   
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getReward_state() {
	return reward_state;
}
public void setReward_state(int reward_state) {
	this.reward_state = reward_state;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getSupport_address() {
	return support_address;
}
public void setSupport_address(String support_address) {
	this.support_address = support_address;
}
public int getDatediff() {
	return datediff;
}
public void setDatediff(int datediff) {
	this.datediff = datediff;
}
public int getSupport_money() {
	return support_money;
}
public void setSupport_money(int support_money) {
	this.support_money = support_money;
}
public int getSupport_num() {
	return support_num;
}
public void setSupport_num(int support_num) {
	this.support_num = support_num;
}
public int getProject_num() {
      return project_num;
   }
   public void setProject_num(int project_num) {
      this.project_num = project_num;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getCategory() {
      return category;
   }
   public void setCategory(String category) {
      this.category = category;
   }
   public String getSummary() {
      return summary;
   }
   public void setSummary(String summary) {
      this.summary = summary;
   }
   public String getStory() {
      return story;
   }
   public void setStory(String story) {
      this.story = story;
   }
   public MultipartFile getMain_image() {
      return main_image;
   }
   public void setMain_image(MultipartFile main_image) {
      this.main_image = main_image;
   }
   public String getMain_imageurl() {
      return main_imageurl;
   }
   public void setMain_imageurl(String main_imageurl) {
      this.main_imageurl = main_imageurl;
   }
   public MultipartFile getBanner_image() {
      return banner_image;
   }
   public void setBanner_image(MultipartFile banner_image) {
      this.banner_image = banner_image;
   }
   public String getBanner_imageurl() {
      return banner_imageurl;
   }
   public void setBanner_imageurl(String banner_imageurl) {
      this.banner_imageurl = banner_imageurl;
   }
   public String getState() {
      return state;
   }
   public void setState(String state) {
      this.state = state;
   }
   public int getGoal() {
      return goal;
   }
   public void setGoal(int goal) {
      this.goal = goal;
   }
   public String getDeadline() {
      return deadline;
   }
   public void setDeadline(String deadline) {
      this.deadline = deadline;
   }
   public String getProject_account() {
      return project_account;
   }
   public void setProject_account(String project_account) {
      this.project_account = project_account;
   }
   public String getSubject() {
      return subject;
   }
   public void setSubject(String subject) {
      this.subject = subject;
   }
   public int getReward_num() {
      return reward_num;
   }
   public void setReward_num(int reward_num) {
      this.reward_num = reward_num;
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
   public String getReward_date() {
      return reward_date;
   }
   public void setReward_date(String reward_date) {
      this.reward_date = reward_date;
   }
@Override
public String toString() {
	return "Project [project_num=" + project_num + ", id=" + id + ", category=" + category + ", summary=" + summary
			+ ", story=" + story + ", main_image=" + main_image + ", main_imageurl=" + main_imageurl + ", banner_image="
			+ banner_image + ", banner_imageurl=" + banner_imageurl + ", state=" + state + ", goal=" + goal
			+ ", deadline=" + deadline + ", project_account=" + project_account + ", subject=" + subject
			+ ", reward_num=" + reward_num + ", item_order=" + item_order + ", item=" + item + ", itemcnt=" + itemcnt
			+ ", reward_goal=" + reward_goal + ", reward_date=" + reward_date + ", pop=" + pop + ", date=" + date
			+ ", supportcnt=" + supportcnt + ", reward_state=" + reward_state + ", support_money=" + support_money
			+ ", support_num=" + support_num + ", support_address=" + support_address + ", tel=" + tel + ", name="
			+ name + ", datediff=" + datediff + "]";
}    
}