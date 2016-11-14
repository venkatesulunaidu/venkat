package com.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.model.bat;

@Repository
public interface batdao {
List<bat> getAllbat();
	
	bat getbatbysid(int sid);

	void deletebat(int sid);

	void addbat(bat bat);
	
	void editbat(bat bat);
}
