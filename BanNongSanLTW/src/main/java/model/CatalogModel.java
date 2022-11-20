package model;

import java.util.List;

import dao.CatalogDao;
import bean.Catalog;

public class CatalogModel {
	CatalogDao catalogDao = new CatalogDao();


	public void insert(Catalog catalog) {
		catalogDao.insert(catalog);
	}


	public void edit(Catalog newcatalog) {
		Catalog oldCata = catalogDao.get(Integer.parseInt(newcatalog.getId()));
		oldCata.setName(newcatalog.getName());
		oldCata.setParent_id(newcatalog.getParent_id());
		catalogDao.edit(oldCata);

	}


	public void delete(String id) {
		catalogDao.delete(id);

	}


	public Catalog get(int id) {
		return catalogDao.get(id);
	}


	public Catalog get(String name) {
		return catalogDao.get(name);
	}


	public List<Catalog> getAll() {
		return catalogDao.getAll();
	}
	
	
	public List<Catalog> getCataByProduct(int id) {
		return catalogDao.getCataByProduct(id);
	}
}
