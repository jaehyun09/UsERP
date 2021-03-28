package com.project.UsERP.serverce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.UsERP.persistence.PersonnelDAO;

@Service
public class PersonnelServiceImpl implements PersonnelService {

	@Autowired
	PersonnelDAO dao;

	

}
