package com.m3.dao;

import java.util.List;
import java.util.Map;

import com.m3.model.UserModel;

public interface UserDao {
	

	int saveUserData(UserModel user);

	List<Map<String, Object>> getAllEmployee();

	int checkEmailAlreadyExist(String email);

	String getPasswordByEmail(String email);
	Map<String, Object> getEmployeeByEmail(String email);

	int deleteUser(Long id);

	List<Map<String, Object>> getEmployeesByPage(int pageid, int total);

	int getCount(UserModel user);

	Map<String, Object> getUserById(String id);

	int updateData(UserModel user);

	Map<String, Object> validateData(UserModel user);

	String getEmailCount(UserModel user);

	String checkemail(String email);

	int getAdmin();

	int getuser();

	String isValidateUser(UserModel user);


}
