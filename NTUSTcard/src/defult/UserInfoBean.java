package defult;

public class UserInfoBean {
	public String id;
	public String password;
	public String mail;
	public String name;
	public String institute;
	public String depart;
	public String birthday;

	public UserInfoBean() {
		id = "";
		password = "";
		mail = "";
		name = "";
		institute = "";
		depart = "";
		birthday = "";
	}

	public void setUserName(String id) {
		this.id = id;
	}

	public String getUserName() {
		return this.id;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return this.password;
	}
	
	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getMail() {
		return this.mail;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getInstitute() {
		return this.institute;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getDepart() {
		return this.depart;
	}
	
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getBirthday() {
		return this.mail;
	}
	
}