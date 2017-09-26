package cn.gz.xchao.first.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.gz.xchao.first.service.UserService;

@Controller
public class LoginController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request
	/*
	 * @RequestParam(value = "name", defaultValue = "") String name,
	 * 
	 * @RequestParam(value = "passwd", defaultValue = "") String passwd
	 */) {
		String name = (String) request.getParameter("name");// 表单提交，getAttribute不行
		String passwd = (String) request.getParameter("passwd");
		int count = userService.findExist(name, passwd);
		if (count > 0) {
			return "login";
		}
		return "index";
	}
}