package com.liliang.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liliang.dao.BasisDAO;
import com.liliang.entry.Basis;
import com.liliang.entry.result.ResultDO;
import com.liliang.service.BasisService;
@Service(value="basisService")
public class BasisServiceImpl implements BasisService{
	@Autowired
	private BasisDAO basisDAO;

	public boolean login(String username, String password) {
		String passwd=this.basisDAO.getPassword(username);
		if(null==passwd){
			return false;
		}
		if(passwd.equals(password)){
			return true;
		}
		return false;
	}

	public ResultDO<Basis> getBasisById(String username) {
		ResultDO<Basis> result=new ResultDO<Basis>();
		Basis basis=this.basisDAO.getBasisById(username);
		if(basis!=null){
			result.setSuccess(true);
			result.setResult(basis);
		}
		return result;
	}

}
