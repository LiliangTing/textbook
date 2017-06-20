package com.liliang.dao;

import org.apache.ibatis.annotations.Param;

import com.liliang.entry.Basis;

/**
 * Created by lilia on 2017/5/10.
 */
public interface BasisDAO {

	String getPassword(String id);

	Basis getBasisById(String id);

	int updateBasis(Basis basis);

	int updatePassword(@Param(value = "id") String id, @Param(value = "password") String password);

	int delectBasisById(String id);

	int insertBasis(Basis basis);

}
