package cn.gz.xchao.first.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.gz.xchao.first.entity.User;
import cn.gz.xchao.first.service.UserService;

@Controller // @Controller和@ResponseBody的组合
public class HelloController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHello(ModelMap map) {
		List<User> users = userService.findAllUser();
		map.put("users", users);
		return "hello";
	}
}
