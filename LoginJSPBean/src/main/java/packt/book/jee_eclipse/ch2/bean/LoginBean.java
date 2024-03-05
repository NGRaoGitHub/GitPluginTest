package packt.book.jee_eclipse.ch2.bean;

// Bean Class - sample class for JSP
public class LoginBean {
	private String userName;
	private String password;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isValidUser() {
		// Validation can happen here from a number of sources
		// For example, DB, LDAP
		// But we are hardcoding the username and password here
		return "admin".equalsIgnoreCase(userName) && "admin".equalsIgnoreCase(password);
	}
}
