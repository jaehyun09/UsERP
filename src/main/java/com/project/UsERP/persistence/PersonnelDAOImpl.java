package com.project.UsERP.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PersonnelDAOImpl implements PersonnelDAO {

	@Autowired
	SqlSession sqlSession;

	

}
