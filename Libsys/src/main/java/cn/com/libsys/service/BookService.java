package cn.com.libsys.service;

import cn.com.libsys.model.Books;
import cn.com.libsys.model.Page;

public interface BookService {
	
	public void insert(Books book);
	
	public Page findByParameterToPage(Books book,Page page);
	
	public void delete(String id);

	public Books findByid(String id);
	
	public void update(Books book);

}
