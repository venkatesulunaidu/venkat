package com.spring.services;

import java.util.List;

import com.spring.model.bat;

public interface batservices {
	List<bat> getAllbat();

	bat getbatbysid(int sid);

	void deletebat(int sid);

	void addbat(bat bat);
	
	void editbat(bat bat);

}
