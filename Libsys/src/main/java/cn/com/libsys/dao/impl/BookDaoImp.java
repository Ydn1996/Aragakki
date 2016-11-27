package cn.com.libsys.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import cn.com.libsys.dao.BookDao;
import cn.com.libsys.model.Books;
import cn.com.libsys.model.Page;

@Repository
public class BookDaoImp implements BookDao{
	
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public void insert(Books book) {
		sqlSessionTemplate.insert("cn.com.libsys.mapper.BookMapper.insert", book);
		
	}

	@Override
	public List<Books> findByParameterToPage(Page page) {
		return sqlSessionTemplate.selectList("cn.com.libsys.mapper.BookMapper.findByParameterToPage", page);
	}
	
	@Override
	public Integer findByParameterToPages(Page page) {
		return sqlSessionTemplate.selectOne("cn.com.libsys.mapper.BookMapper.findByParameterToPages", page);
	}

	@Override
	public Integer delete(String id) {
        return sqlSessionTemplate.delete("cn.com.libsys.mapper.BookMapper.delete", id);		
	}

	@Override
	public Books findByid(String id) {
		return sqlSessionTemplate.selectOne("cn.com.libsys.mapper.BookMapper.findByid", id);
	}

	@Override
	public Integer update(Books book) {
		return sqlSessionTemplate.update("cn.com.libsys.mapper.BookMapper.update",book);
	}

	

}
