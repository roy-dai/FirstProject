package com.infotran.springboot.wang.service.impl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.infotran.springboot.ccc.bean.introductionbean;
import com.infotran.springboot.wang.dao.dao;
import com.infotran.springboot.wang.service.wangservice;

@Transactional
@Service
public class wangserviceimpl implements wangservice {
	@Autowired
	dao dao;

	@Override
	public Model get(Model m,int a) {
		return dao.get(m,a);
	}
	
	@Override
	public Model get1(Model m,int a) {
		return dao.get1(m,a);
	}
	@Override
	public Model add (HttpServletRequest request,Model m,String a) {
		return dao.add(request,m,a);
	}
	@Override
	public boolean DELTE (int key) {
		return dao.DELTE(key);
	}
	@Override
	public Model Inquire (Model m,int key) {
		return dao. Inquire(m,key);
	}

	@Override
	public boolean mergeimpl (Model m,HttpServletRequest request,String a) {
		return dao. mergeimpl(m,request,a);

	}

}	
