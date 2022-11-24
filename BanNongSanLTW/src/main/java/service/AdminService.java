package service; 

import java.util.List;
import bean.Admin; 



import dao.AdminDao;
import bean.Admin;
import service.AdminService; 
 
public class AdminService { 
	AdminDao adminDao = new AdminDao(); 
 
	public void insert(Admin admin) { 
		adminDao.insert(admin); 
	} 
 
	public void edit(Admin admin) {
		Admin oldAdmin = adminDao.get(admin.getId());		
		oldAdmin.setUsername(admin.getUsername());
		oldAdmin.setPassword(admin.getPassword());
		oldAdmin.setName(admin.getName());
		adminDao.edit(oldAdmin); 

	} 
 
	public void delete(String id) { 
		adminDao.delete(id); 
 
	} 
 
	public Admin get(int id) { 
		return adminDao.get(id); 
	} 
 
	public Admin get(String name) { 
		return adminDao.get(name); 
	} 
 
	public List<Admin> getAll() { 
		return adminDao.getAll(); 
	}	
} 
 

