package service;

import java.util.List;

import dao.OrderedDao;
import bean.Ordered;

public class OrderedService {
	OrderedDao orderDao = new OrderedDao();
	
	public void insert(Ordered ordered) {
		orderDao.insert(ordered);
	}

	public void edit(Ordered ordered) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	public Ordered get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Ordered get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Ordered> getAll() {
		return orderDao.getAll();
	}

}
