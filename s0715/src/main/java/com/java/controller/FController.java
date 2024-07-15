package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;
import com.java.service.BService;
import com.java.service.BServiceImpl;

@Controller
public class FController {
	// iv
	// Autowired는 객체 생성 안해도 사용 가능하게 해줌 : DI 라고 함
	// 스프링은 내가 객체를 생성하지 않아도 스프링이 해줌
	@Autowired
	BoardDto bdto;
	
	//BServiceImpl bservice1 = new BServiceImpl();
	//BServiceImpl2 bservice2 = new BServiceImpl2();
	@Autowired
	BService bservice;
	
	@RequestMapping("/index")
	public String index() {
		bdto.setBno(1);
		System.out.println(bdto.getBno());
		//System.out.println(bservice1.add());
		//System.out.println(bservice2.add());
		System.out.println(bservice.add());
		return "index";
	}
	
	
}
