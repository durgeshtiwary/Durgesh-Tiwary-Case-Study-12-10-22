package com.gl.crudApplication.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.gl.crudApplication.bean.Company;
import com.gl.crudApplication.service.CompanyService;

@RestController
public class CompanyController {
	@Autowired
	private CompanyService service;
	
	@GetMapping("/index")
	public ModelAndView showIndexPage() {
		ModelAndView mv= new ModelAndView("index");
		List<Company> companyList=service.findAll();
		mv.addObject("companyList",companyList);
		return mv;
	}
	@GetMapping("/company-entry")
	public ModelAndView showCourseEntryPage() {
		Company company=new Company();
		ModelAndView mv=new ModelAndView("companyEntryPage");
		mv.addObject("companyRecord",company);
		return mv;
	}
	
	@PostMapping("/company")
	public ModelAndView saveNewCourse(@ModelAttribute("companyRecord") Company company) {
		long id=service.generateCompanyId();
		company.setCompanyId(id);
		service.save(company);
		return new ModelAndView("redirect:/index");
	}
	@GetMapping("/display-company/{id}")
	public ModelAndView showACourses(@PathVariable long id) {
		Company company=service.findById(id);
		ModelAndView mv=new ModelAndView("companyReportPage");
		mv.addObject("company",company);
		return mv;
	}
	
	@GetMapping("/delete-company/{id}")
	public ModelAndView deleteACourses(@PathVariable long id) {
		service.delete(id);
		return new ModelAndView("redirect:/index");
	}
	
	@GetMapping("/edit-company/{id}")
	public ModelAndView showCourseEditPage(@PathVariable long id) {
		Company company=service.findById(id);
		ModelAndView mv=new ModelAndView("companyEditPage");
		mv.addObject("companyRecord",company);
		return mv;
	}
	@PostMapping("/edit-company/company-edit")
	public ModelAndView editCourse(@ModelAttribute("courseRecord") Company company) {
		service.save(company);
		return new ModelAndView("redirect:/index");
	}
}
