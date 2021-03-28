package com.project.UsERP.serverce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.UsERP.persistence.LogisticsDAO;

@Service
public class LogisticsServiceImpl implements LogisticsService {

	@Autowired
	LogisticsDAO dao;

	

}
