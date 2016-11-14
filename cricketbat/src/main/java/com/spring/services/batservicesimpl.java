package com.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.dao.*;
import com.spring.model.bat;
@Service
public class batservicesimpl implements batservices{
	@Autowired(required=true)
	private batdao batdao;

	public batdao getBatdao() {
		return batdao;
	}

	public void setBatdao(batdao batdao) {
		this.batdao = batdao;
	}

	
	public List<bat> getAllbat() {
		return batdao.getAllbat();
	}

	
	public bat getbatbysid(int sid) {
		return batdao.getbatbysid(sid);
	}

	
	public void deletebat(int sid) {
		batdao.deletebat(sid);
		
	}

	
	public void addbat(bat bat) {
		batdao.addbat(bat);
		
	}

	
	public void editbat(bat bat) {
		batdao.editbat(bat);
		
	}

}
