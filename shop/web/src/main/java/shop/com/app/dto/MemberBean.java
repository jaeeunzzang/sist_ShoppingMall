package shop.com.app.dto;

public class MemberBean {
	private int m_no;
	private String m_id;
	private String m_name;
	private String m_pw;
	private String gender;
	private String birth;
	private String m_addr;
	private String hp;
	private String grade;
	private int point;
	private int price_sum;
	private String joindate;
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getPrice_sum() {
		return price_sum;
	}
	public void setPrice_sum(int price_sum) {
		this.price_sum = price_sum;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public MemberBean(int m_no, String m_id, String m_name, String m_pw, String gender, String birth, String m_addr,
			String hp, String grade, int point, int price_sum, String joindate) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_pw = m_pw;
		this.gender = gender;
		this.birth = birth;
		this.m_addr = m_addr;
		this.hp = hp;
		this.grade = grade;
		this.point = point;
		this.price_sum = price_sum;
		this.joindate = joindate;
	}
	public MemberBean() {
		super();
	}
	
	public MemberBean(String m_id, String m_pw) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
	}
	@Override
	public String toString() {
		return "Member [m_no=" + m_no + ", m_id=" + m_id + ", m_name=" + m_name + ", m_pw=" + m_pw + ", gender="
				+ gender + ", birth=" + birth + ", m_addr=" + m_addr + ", hp=" + hp + ", grade=" + grade + ", point="
				+ point + ", price_sum=" + price_sum + ", joindate=" + joindate + "]";
	}
	
	
}
