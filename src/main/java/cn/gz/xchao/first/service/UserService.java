package cn.gz.xchao.first.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.gz.xchao.first.dao.UserMapper;
import cn.gz.xchao.first.entity.User;

@Service
public class UserService {
	@Autowired
	UserMapper userMapper;

	public List<User> findAllUser() {
		List<User> list = userMapper.findAllUser();
		return list;
	}

	public int findExist(String name, String passwd) {
		int count = userMapper.isExist(name, passwd);
		return count;
	}
}
