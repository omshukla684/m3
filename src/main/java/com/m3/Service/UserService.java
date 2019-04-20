package com.m3.Service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.m3.model.UserModel;

public interface UserService {

	Map<String, Object> signUp(UserModel user) throws IOException;

	List<Map<String, Object>> getAllEmployee();

	int loginValidate(UserModel user);

	Object getEmployeeByEmail(String email);

    int deleteUser(Long id);

	Object getEmployeesByPage(int pageid, int total);

	int getCount(UserModel user);

	Map<String, Object> getUserById(String id);

    int updateData(UserModel user) throws IOException;

	String trytoLogin(UserModel user);

	String getEmailCount(UserModel user);

	String checkemail(String email);

	int getAdmin();

    int getUser();

	String isUserValid(UserModel user);

	

	

//	Map<String, Object> addUser(UserModel user);
	
}
