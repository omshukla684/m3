package com.m3.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.m3.model.UserModel;
import com.m3.dao.UserDao;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private JavaMailSender sender;
	@Autowired
	UserDao dao;
	
	@Value("${file.upload-path}")
	private String folderPath;
	
	public Map<String, Object> addUser(UserModel user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
//	public int signUp(UserModel user) throws IOException {
//		
//		String fileName = StringUtils.cleanPath(user.getMultipartimage().getOriginalFilename());
//		Path path = Paths.get(folderPath + fileName);
//		long copy = Files.copy(user.getMultipartimage().getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
//		user.setImgUrl(fileName);
//		return dao.saveUserData(user);
//		
//	}
	
	public Map<String, Object> signUp(UserModel user) throws IOException {
		Map<String, Object> response = new HashMap<>();
		
		String fileName = StringUtils.cleanPath(user.getMultipartimage().getOriginalFilename());
		Path path = Paths.get(folderPath + fileName);
		long copy = Files.copy(user.getMultipartimage().getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
		user.setImgUrl(fileName);
		int result= dao.saveUserData(user);
		
		
		if (result > 0) {
			response.put("200", "Success");
		} else {
			response.put("204", "Failed");
		}
		return response;
	}

	@Override
	public List<Map<String, Object>> getAllEmployee() {
		 return dao.getAllEmployee();
	}
	

	@Override
	public String trytoLogin(UserModel user) 
	{
	try {
		Map<String, Object> userdetail = dao.validateData(user);
		String password = (String) userdetail.get("password");
		System.out.println("================="+password);

		if (password.equals(user.getPassword())) {
			return "200";
		} else {
			return "201";
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return "202";
}

	@Override
	public int loginValidate(UserModel user) {
		int result=dao.checkEmailAlreadyExist(user.getEmail());
		if(result>0) {
			//Password validate
			String password= dao.getPasswordByEmail(user.getEmail());
			
			if(password.equals(user.getPassword())) {
				//success
				return 200;
			}else
				//password not match
				return 201;
		}
		else {
			// email not exist
			return 404;
		}

	}

	@Override
	public Object getEmployeeByEmail(String email) {

		

		return dao.getEmployeeByEmail(email);
	}

	@Override
	public int deleteUser(Long id) {
		return dao.deleteUser(id);
	}
     @Override
	public List<Map<String, Object>> getEmployeesByPage(int pageid, int total) {
        return dao.getEmployeesByPage(pageid, total);
    }

	@Override
	public int getCount(UserModel user) {
		return dao.getCount(user);
	}

	@Override
	public Map<String, Object> getUserById(String id) {
		return dao.getUserById(id);	}

	@Override

	public int updateData(UserModel user) throws IOException {
		
		
	
		String fileName = StringUtils.cleanPath(user.getMultipartimage().getOriginalFilename());
		Path path = Paths.get(folderPath + fileName);
		long copy = Files.copy(user.getMultipartimage().getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
		user.setImgUrl(fileName);
		
		 		return dao.updateData(user);
	}	
	@Override
	public String getEmailCount(UserModel user) {
		return dao.getEmailCount(user);
		
	}
	
    @Override
    public String checkemail(String email) {
    	return dao.checkemail(email);
    }

	@Override
	public int getAdmin() {
		return dao.getAdmin();
		
	}

	@Override
	public int getUser() {
		return dao.getuser();

	}
	@Override
	public String isUserValid(UserModel user) {
		MimeMessage message = sender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		try {
			helper.setTo(user.getEmail());
			helper.setText("Your Password is : " + dao.isValidateUser(user));
			helper.setSubject("Mail From Spring Boot");
		} catch (MessagingException e) {
			e.printStackTrace();
			return "Error while sending mail ..";
		}
		sender.send(message);
		return "message sent";
	}

}
