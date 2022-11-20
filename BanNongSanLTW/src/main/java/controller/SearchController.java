package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Catalog;
import bean.Product;
import model.CatalogModel;
import model.ProductModel;

public class SearchController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	CatalogModel cataModel = new CatalogModel();
	ProductModel productModel=new ProductModel();
	DecimalFormat df = new DecimalFormat("#.000");
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("s");
		List<Catalog> cataList = cataModel.getAll();
		req.setAttribute("catalist", cataList);
		
		List<Product> productSeachByName = productModel.searchByName(name);
		req.setAttribute("productlist", productSeachByName);
	
		List<Product> productAllList = productModel.getAll();
		req.setAttribute("product_all", productAllList);
		
		//Giá giảm
		List<Product> productsList1 = new ArrayList<Product>();
		for(Product product: productSeachByName)
		{
			Product product1 = productModel.get(Integer.parseInt(product.getId()));
			product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
			productsList1.add(product1);
			
		}

		req.setAttribute("productlist1", productsList1);
		// Product bán chạy
		List<Product> product_banchay= productModel.getProductById(6);
		req.setAttribute("product_banchay", product_banchay);	
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product-search.jsp");
		dispatcher.forward(req, resp);
	}
}
