package com.spring.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.EmpMapper;
import com.spring.model.emp;
import com.spring.service.EmpService;
@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	public EmpMapper mapper;
	
	@Override
	public List<emp> getselectAll() {
		return mapper.getselectAll();
	}
}
