package cn.com.libsys.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.com.libsys.dao.BookDao;
import cn.com.libsys.model.Books;
import cn.com.libsys.model.Page;
import cn.com.libsys.service.BookService;
import cn.com.libsys.util.UuidUtil;

@Service
public class BookServiceImp implements BookService {

	@Resource
	private BookDao bookDao;

	@Override
	public void insert(Books book) {
		String id = UuidUtil.get32UUID();
		book.setId(id);
		bookDao.insert(book);
	}

	@Override
	public Page findByParameterToPage(Books book, Page page) {
		if (book.getName() != null) {
			book.setName("%" + book.getName() + "%");
		}
		if (page.getPage() == 0) {
			page.setPage(1);
		}
		page.setPageObject(book);
		page.setTotalPage(bookDao.findByParameterToPages(page));
		page.setBefore((page.getPage() - 1) * page.getSize());
		page.setPageObject(bookDao.findByParameterToPage(page));
		return page;
	}

	@Override
	public void delete(String id) {
		bookDao.delete(id);
	}

	@Override
	public Books findByid(String id) {
		return bookDao.findByid(id);
	}

	@Override
	public void update(Books book) {
		bookDao.update(book);

	}

}
