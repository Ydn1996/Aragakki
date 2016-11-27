package cn.com.libsys.dao;

import org.springframework.stereotype.Repository;

import cn.com.libsys.model.User;

@Repository
public interface UserDao {

	public void insert(User user);
}
