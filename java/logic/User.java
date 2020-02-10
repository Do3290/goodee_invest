package logic;

import java.util.Date;

import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

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
