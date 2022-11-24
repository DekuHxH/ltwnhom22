package service;

import java.util.List;

import dao.TransactionDao;
import bean.Admin;
import bean.Transactions;

public class TransactionService {
	TransactionDao transactionDao = new TransactionDao();
	 
	public void insert(Transactions transaction) { 
		transactionDao.insert(transaction); 
	} 
	
	
	public void edit(Transactions transaction) {
		Transactions oldTransaction = transactionDao.get(transaction.getId());		
		oldTransaction.setUser_name(transaction.getUser_name());
		oldTransaction.setUser_mail(transaction.getUser_mail());
		oldTransaction.setUser_phone(transaction.getUser_phone());
		oldTransaction.setAddress(transaction.getAddress());
		oldTransaction.setMessage(transaction.getMessage());
		oldTransaction.setAmount(transaction.getAmount());
		oldTransaction.setPayment(transaction.getPayment());
		oldTransaction.setStatus(transaction.getStatus());
		transactionDao.edit(oldTransaction);
	} 
	
	
	public void delete(String id) { 
		transactionDao.delete(id); 
 
	} 
 
	public Transactions get(int id) { 
		return transactionDao.get(id); 
	} 
 
	public Transactions get(String name) { 
		return transactionDao.get(name); 
	} 
 
	public List<Transactions> getAll() { 
		return transactionDao.getAll(); 
	}	
 

}
