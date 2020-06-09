package com.gurada.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gurada.infa.ManagerDAO;
import com.gurada.infa.ManagerService;
@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerDAO mDao;
	
	public List getSaleCost() {
		return mDao.getSaleCost();
	}

}
