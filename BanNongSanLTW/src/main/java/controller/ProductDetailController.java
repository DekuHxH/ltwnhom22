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

public class ProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CatalogModel catalogModel = new CatalogModel();
	ProductModel productModel = new ProductModel();
	DecimalFormat df = new DecimalFormat("#.000");
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Product detail_product = productModel.get(Integer.parseInt(id));
		req.setAttribute("detail_product", detail_product);
		
		List<Catalog> name_cata_of_product= catalogModel.getCataByProduct(Integer.parseInt(id));
		req.setAttribute("name_cata_of_product", name_cata_of_product);
		
		String idCata = detail_product.getCatalog_id();
		
		List<Product> productListCata = productModel.getProductById(Integer.parseInt(idCata));
		
		req.setAttribute("productById", productListCata);
		
		Product detail_product1 = detail_product;
		detail_product1.setPrice(String.valueOf(df.format(Double.parseDouble(detail_product.getPrice()) * (1 - (Double.parseDouble(detail_product.getDiscount())/100)))));
		req.setAttribute("detail_product1", detail_product1);
		
//		List<Product> productList = productModel.getAll();
//		req.setAttribute("productlist", productList);	
//		//Giá giảm
//		List<Product> productsList1 = new ArrayList<Product>();
//		for(Product product: productList)
//		{
//			Product product1 = productModel.get(Integer.parseInt(product.getId()));
//			product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
//			productsList1.add(product1);
//			
//		}
//
//		req.setAttribute("productlist1", productsList1);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product-detail.jsp");
		dispatcher.forward(req, resp);
	}
}