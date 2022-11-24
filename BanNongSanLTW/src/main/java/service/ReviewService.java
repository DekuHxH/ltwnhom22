package service;

import java.util.List;

import dao.ReviewDao;
import bean.Review;

public class ReviewService {
	ReviewDao reviewDao = new ReviewDao();

	public void insert(Review review) {
		reviewDao.insert(review);
		
	}

	public void edit(Review review) {
		// TODO Auto-generated method stub
		
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		reviewDao.delete(id);
	}

	public Review get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Review get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Review> getAll() {
		return reviewDao.getAll();
	}
	
	public List<Review> getReviewById(int id) {
		return reviewDao.getReviewById(id);
	}

}
