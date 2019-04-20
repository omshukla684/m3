package com.m3.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.m3.model.UserModel;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

		@Override
	public int saveUserData(UserModel user) {
		String sql = "insert into table1(firstName,lastName,email,password,confirmPassword,gender,address,salary,role,imgUrl,dob) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql, user.getFirstName(),user.getLastName(), user.getEmail(), user.getPassword(), user.getConfirmPassword(),
				user.getGender(),user.getAddress(),user.getSalary(),user.getRole(),user.getImgUrl(),user.getDob());
	}

		
		@Override
		public Map<String, Object> validateData(UserModel user) {
			String sql="select * from table1 where email=?";
			return jdbcTemplate.queryForMap(sql,user.getEmail());
		}
		@Override
		public List<Map<String, Object>> getAllEmployee() {
			  return jdbcTemplate.queryForList("SELECT * FROM table1");
		}

		@Override
		public int checkEmailAlreadyExist(String email) {
			return jdbcTemplate.queryForObject("select count(*) from table1 where email=?",Integer.class,email);
		}

		@Override
		public String getPasswordByEmail(String email) {
			return jdbcTemplate.queryForObject("select password from table1 where Email=?",String.class ,email);
		}

		@Override
		public Map<String, Object> getEmployeeByEmail(String email) {
			return jdbcTemplate.queryForMap("select empId,firstName,lastName,email,password,confirmPassword,gender,address,salary,role,imgUrl,dob from table1 where email=?",email);
		}

		@Override
		public int deleteUser(Long id) {
			String save="delete from table1 where empId=?";
			return jdbcTemplate.update(save,id);

		}

		@Override
		public List<Map<String, Object>> getEmployeesByPage(int pageid, int total) {
			 String sql= "SELECT * FROM table1 LIMIT "+(pageid-1)+","+total+"";
			 
		        return jdbcTemplate.queryForList(sql);		}

		@Override
		public int getCount(UserModel user) {
			String sql = "SELECT count(*) FROM table1";
			 return jdbcTemplate.queryForObject(sql,Integer.class);	             

		}

		@Override
		public Map<String, Object> getUserById(String id) {
			return jdbcTemplate.queryForMap("select empId,firstName,lastName,email,password,confirmPassword,gender,address,salary,role,imgUrl,dob from table1 where empId=?",id);
		}

		@Override
		public int updateData(UserModel user) {
			String sql="UPDATE table1 SET firstName=?,lastName=?,email=?,password=?,confirmPassword=?,gender=?,address=?,salary=?,role=?,imgUrl=?,dob=? WHERE email=?";
			return jdbcTemplate.update(sql, user.getFirstName(),user.getLastName(), user.getEmail(), user.getPassword(), user.getConfirmPassword(),user.getGender(),user.getAddress(),user.getSalary(),user.getRole(),user.getImgUrl(),user.getDob(),user.getEmail());		}

		
		@Override
		public String getEmailCount(UserModel user) {
			String sql="select count(*) from table1 where email=?";
			
			return jdbcTemplate.queryForObject(sql,String.class, user.getEmail());
			
		}
		
		@Override
		public String checkemail(String email) {
                     String sql="select count(*) from table1 where email=?";
			
			return jdbcTemplate.queryForObject(sql,String.class, email);
		}


		@Override
		public int getAdmin() {
			String str = "select count(*) from table1 where role='Admin'";
			return jdbcTemplate.queryForObject(str, Integer.class);

		}


		@Override
		public int getuser() {
			String str = "select count(*) from table1 where role='user'";
			return jdbcTemplate.queryForObject(str, Integer.class);
		}
		
		
		
		@Override
		public String isValidateUser(UserModel user) {
			String str = "Select password from table1 where email=?";
			return jdbcTemplate.queryForObject(str, String.class, user.getEmail());
		}

		
		
		
}
