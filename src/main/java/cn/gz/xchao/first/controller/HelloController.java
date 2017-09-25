package cn.gz.xchao.first.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // @Controller和@ResponseBody的组合
public class HelloController {
	@RequestMapping(value = "/")
	public String getHello() {
		return "index";
	}
}
