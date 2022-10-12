package com.gl.crudApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.gl.crudApplication.bean.Company;

@Repository

public interface CompanyRepository extends JpaRepository<Company, Long> {
	@Query("select max(companyId) from Company")
	public Long findMaxCompanyId();

}
