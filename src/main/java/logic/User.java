package logic;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.Past;
import javax.validation.constraints.Size;


public class User {
	private String id;
	private String name;
	private String pic;
	private String gender;
	private String age;
	private String nic;
	private String tel;
	private String account;
	private int money;
	private Date signdate;
	private int usertag;
	private String story;
	
	private List<Support> splist;
	private int spcnt;
	private int spsum;
	private String category;
	private List<Project> mypjlist;
	private int mypjcnt;
	
	public List<Project> getMypjlist() {
		return mypjlist;
	}
	public void setMypjlist(List<Project> mypjlist) {
		this.mypjlist = mypjlist;
	}
	
	public int getMypjcnt() {
		return mypjcnt;
	}
	public void setMypjcnt() {
		this.mypjcnt = mypjlist.size();
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String string) {
			this.category = string;
	}
	public int getSpsum() {
		return spsum;
	}
	public void setSpsum() {
		for(int i=0;i<splist.size();i++) {
			this.spsum += splist.get(i).getSupport_money();
		}
	}
	public int getSpcnt() {
		return spcnt;
	}
	public void setSpcnt() {
		this.spcnt = splist.size();
	}
	public List<Support> getSplist() {
		return splist;
	}
	public void setSplist(List<Support> splist) {
		this.splist = splist;
	}
	
	
	
	
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public Date getSigndate() {
		return signdate;
	}
	public void setSigndate(Date signdate) {
		this.signdate = signdate;
	}
	public int getUsertag() {
		return usertag;
	}
	public void setUsertag(int usertag) {
		this.usertag = usertag;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", pic=" + pic + ", gender=" + gender + ", age=" + age + ", nic="
				+ nic + ", tel=" + tel + ", account=" + account + ", money=" + money + ", signdate=" + signdate
				+ ", usertag=" + usertag + ", story=" + story + "]";
	}

	
	
	
}
