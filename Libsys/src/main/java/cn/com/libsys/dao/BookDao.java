package cn.com.libsys.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.com.libsys.model.Books;
import cn.com.libsys.model.Page;

@Repository
public interface BookDao {
	
	public void insert(Books book);
	
	public List<Books> findByParameterToPage(Page page);
	
	public Integer findByParameterToPages(Page page);
	
	public Integer delete(String id);
	
	public Integer update(Books book);

	public Books findByid(String id);

}
