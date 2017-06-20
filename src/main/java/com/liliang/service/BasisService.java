package com.liliang.service;

import com.liliang.entry.Basis;
import com.liliang.entry.result.ResultDO;

public interface BasisService {

	boolean login(String username, String password);

	ResultDO<Basis> getBasisById(String username);

}
