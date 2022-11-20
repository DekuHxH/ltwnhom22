package model;

import java.util.List;

import dao.OrderDao;
import bean.Ordered;
public class OrderModel {
	OrderDao orderDao = new OrderDao();

	public void insert(Ordered ordered) {
		orderDao.insert(ordered);
	}

	public void edit(Ordered ordered) {
		
	}

	public void delete(String id) {
		
	}

	public Ordered get(int id) {
		return null;
	}

	public Ordered get(String name) {
		return null;
	}

	public List<Ordered> getAll() {
		return orderDao.getAll();
	}
}
