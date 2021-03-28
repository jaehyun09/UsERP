package com.project.UsERP.serverce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.UsERP.persistence.AbsenteeismDAO;

@Service
public class AbsenteeismServiceImpl implements AbsenteeismService {

	@Autowired
	AbsenteeismDAO dao;

	

}
