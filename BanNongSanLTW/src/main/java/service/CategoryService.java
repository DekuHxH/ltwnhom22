package service;


import java.util.List;

import dao.CategoryDao;
import bean.Catalog;
import bean.Product;

public class CategoryService {
	CategoryDao categoryDao = new CategoryDao();

	public void insert(Catalog category) {
		categoryDao.insert(category);
	}

	public void edit(Catalog newCategory) {
		Catalog oldCate = categoryDao.get(Integer.parseInt(newCategory.getId()));
		oldCate.setName(newCategory.getName());
		oldCate.setParent_id(newCategory.getParent_id());
		categoryDao.edit(oldCate);

	}

	public void delete(String id) {
		categoryDao.delete(id);

	}

	public Catalog get(int id) {
		return categoryDao.get(id);
	}

	public Catalog get(String name) {
		return categoryDao.get(name);
	}

	public List<Catalog> getAll() {
		return categoryDao.getAll();
	}
	
	
	public List<Catalog> getCateByProduct(int id) {
		return categoryDao.getCateByProduct(id);
	}

}