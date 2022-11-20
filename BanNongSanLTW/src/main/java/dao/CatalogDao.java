package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import bean.Catalog;
import jdbc.ConnectDB;

public class CatalogDao{
	 
	public void insert(Catalog category) {
		String sql = "INSERT INTO catalog(name) VALUES (?)";
		new ConnectDB();
		Connection con = ConnectDB.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	 
	public void edit(Catalog category) {
		String sql = "UPDATE catalog SET name = ? WHERE id = ?";
		new ConnectDB();
		Connection con = ConnectDB.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.setString(2, category.getParent_id());
			ps.setString(3, category.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	 
	public Catalog get(int id) {
		String sql = "SELECT * FROM catalog WHERE id = ? ";
		new ConnectDB();
		Connection con = ConnectDB.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog category = new Catalog();

				category.setId(rs.getString("id"));
				category.setName(rs.getString("name"));
				return category;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	 
	public Catalog get(String name) {
		return null;
	}

	 
	public List<Catalog> getAll() {
		List<Catalog> catalogs = new ArrayList<Catalog>();
		String sql = "SELECT * FROM catalog";
		Connection conn = ConnectDB.getConnection();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog catalog = new Catalog();

				catalog.setId(rs.getString("id"));
				catalog.setName(rs.getString("name"));
				catalogs.add(catalog);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return catalogs;
	}

	 
	public void delete(String id) {
		System.out.println("Id :"+ id);
		String sql = "DELETE FROM catalog WHERE id = ?";
		new ConnectDB();
		Connection conn = ConnectDB.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	 
	public List<Catalog> getCataByProduct(int id) {
		List<Catalog> products_cate = new ArrayList<Catalog>();
		String sql = "select catalog.name from catalog,product where catalog.id = product.catalog_id and product.id = ?";
		Connection conn = ConnectDB.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog catagory_product = new Catalog();
				catagory_product.setName(rs.getString("name"));
				products_cate.add(catagory_product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products_cate;
	}
}
