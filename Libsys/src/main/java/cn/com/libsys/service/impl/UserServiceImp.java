package cn.com.libsys.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.com.libsys.dao.UserDao;
import cn.com.libsys.model.User;
import cn.com.libsys.service.UserService;
import cn.com.libsys.util.UuidUtil;

@Service
public class UserServiceImp implements UserService {

	@Resource
	private UserDao userdao;
	
	@Override
	public void insert(User user){
		String id = UuidUtil.get32UUID();
		user.setId(id);
		user.setCreatetime(new Date());
		userdao.insert(user);
	}

}
