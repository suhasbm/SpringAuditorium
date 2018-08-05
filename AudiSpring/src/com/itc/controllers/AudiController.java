package com.itc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itc.beans.Audi;
import com.itc.dao.AudiDAO;

@Controller
public class AudiController {
	
	@Autowired
	AudiDAO dao;
	
	@RequestMapping("/viewemp")
	public ModelAndView viewemp(){
		
		List<Audi> list=dao.getAllEvents();
		return new ModelAndView("viewAll","list",list);	
	}
	
	@RequestMapping("/buy")
	public ModelAndView buy(){
		
		List<Audi> list=dao.getAllEvents();
		return new ModelAndView("viewAll","list",list);	
	}
}
