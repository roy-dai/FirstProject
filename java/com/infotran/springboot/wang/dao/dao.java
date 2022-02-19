package com.infotran.springboot.wang.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

@Repository
public interface dao {

	Model get(Model m,int a);
	
	Model get1(Model m,int a);

	Model add (HttpServletRequest request,Model m,String a);
	
	boolean DELTE (int key);

	Model Inquire (Model m,int key);

	boolean mergeimpl (Model m,HttpServletRequest request,String a);
}
