package com.project.UsERP.serverce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.UsERP.persistence.SalesDAO;

@Service
public class SalesServiceImpl implements SalesService {

	@Autowired
	SalesDAO dao;

	

}
