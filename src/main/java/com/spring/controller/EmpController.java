package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.model.emp;
import com.spring.service.EmpService;
import com.spring.util.Result;

@Controller
@RequestMapping("/Auth")
public class EmpController {
	@Autowired
	private EmpService service;
	/**
	 * Auth/getselectAll
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getselectAll",method=RequestMethod.POST)
	private Result getselectAll(){
		List<emp> list=service.getselectAll();
		if(list!=null){
			return new Result(200,"³É¹¦",list);
		}
		return new Result(2001,"Ê§°Ü");
	}
}
