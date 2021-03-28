package com.project.UsERP.serverce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.UsERP.persistence.AccountDAO;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountDAO dao;

	

}
