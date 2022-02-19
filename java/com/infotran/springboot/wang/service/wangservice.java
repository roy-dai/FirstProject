package com.infotran.springboot.wang.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface wangservice {
	Model get(Model m,int a);
	
	Model get1(Model m,int a);
	
	Model add (HttpServletRequest request,Model m,String a);

	boolean DELTE (int key);
	
	Model Inquire (Model m,int key);
	
	boolean mergeimpl (Model m,HttpServletRequest request,String a);
}