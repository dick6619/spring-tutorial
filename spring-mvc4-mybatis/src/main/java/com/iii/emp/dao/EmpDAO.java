package com.iii.emp.dao;

import java.util.*;

import com.iii.emp.domain.EmpVO;

public interface EmpDAO {

	/**
	 * Create new employee
	 * 
	 * @param EmpVO
	 * @return int
	 */
	int insert(EmpVO eParam);

	/**
	 * Reed selected employee
	 * 
	 * @param EmpVO
	 * @return EmpVO
	 */
	EmpVO getEmp(EmpVO eParam);

	/**
	 * Read all employee
	 * 
	 * @return List<EmpVO>
	 */
	List<EmpVO> getEmps();

	/**
	 * Update selected employee
	 * 
	 * @param EmpVO
	 * @return int
	 */
	int update(EmpVO eParam);

	/**
	 * Delete selected employee
	 * 
	 * @param EmpVO
	 * @return int
	 */
	int delete(EmpVO eParam);

	/**
	 * Reed employees by like SQL
	 * 
	 * @param EmpVO
	 * @return List<EmpVO>
	 */
	List<EmpVO> getEmpBySqlLike(EmpVO eParam);

}
