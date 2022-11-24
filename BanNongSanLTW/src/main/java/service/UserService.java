package service;

import java.util.List;

import dao.UserDao;
import bean.User;
import service.UserService;

public class UserService {
	UserDao userDao = new UserDao();
	
	public void insert(User user) {
		userDao.insert(user);
	}

	public void edit(User newUser) {
		User oldUSer = userDao.get(newUser.getId());
		oldUSer.setName(newUser.getName());
		oldUSer.setEmail(newUser.getEmail());
		oldUSer.setPhone(newUser.getPhone());
		oldUSer.setUsername(newUser.getUsername());
		oldUSer.setPassword(newUser.getPassword());
		oldUSer.setCreated(newUser.getCreated());
		userDao.edit(oldUSer);

	}

	public List<User> getAll() {
		return userDao.getAll();
	}

	public void delete(int id) {
		userDao.delete(id);
		
	}

	public User get(int id) {
		return userDao.get(id);
	}

	public User get(String name) {
		// TODO Auto-generated method stub
		return null;
	}


}

