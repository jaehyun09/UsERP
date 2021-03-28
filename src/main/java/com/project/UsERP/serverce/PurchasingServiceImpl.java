package com.project.UsERP.serverce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.UsERP.persistence.PurchasingDAO;

@Service
public class PurchasingServiceImpl implements PurchasingService {

	@Autowired
	PurchasingDAO dao;

	

}
