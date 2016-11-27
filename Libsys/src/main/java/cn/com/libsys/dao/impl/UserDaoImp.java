package cn.com.libsys.dao.impl;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import cn.com.libsys.dao.UserDao;
import cn.com.libsys.model.User;

@Repository
public class UserDaoImp implements UserDao{
	
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insert(User user){
		sqlSessionTemplate.insert("cn.com.libsys.mapper.UserMapper.insert",user);
	}
}
