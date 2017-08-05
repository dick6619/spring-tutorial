package com.iii.emp.model;

import java.lang.reflect.Field;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;

import org.json.JSONException;
import org.json.JSONObject;

import com.iii.dept.model.DeptVO;
import com.iii.emp.model.validator.Sal;

import net.bytebuddy.description.field.FieldDescription;

@Entity
@Table(name = "emp2")
public class EmpVO {
	//
	public EmpVO() {
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer empno;
	private String ename;
	private String job;
	// @Temporal(TemporalType.DATE) sql.Date, Timestamp 可不用． sql.Util一定要加
	private Date hiredate;
	// 自訂驗證
	// @Sal(message = "金額錯誤")
	private Double sal;

	private Double comm;
	@ManyToOne
	@JoinColumn(name = "deptno")
	private DeptVO deptVO;

	public Integer getEmpno() {
		return empno;
	}

	public void setEmpno(Integer empno) {
		this.empno = empno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public Double getSal() {
		return sal;
	}

	public void setSal(Double sal) {
		this.sal = sal;
	}

	public Double getComm() {
		return comm;
	}

	public void setComm(Double comm) {
		this.comm = comm;
	}

	public DeptVO getDeptVO() {
		return deptVO;
	}

	public void setDeptVO(DeptVO deptVO) {
		this.deptVO = deptVO;
	}

	/**
	 * 將VO轉為JSON
	 * */
	public JSONObject toJSON() throws Exception {
		//
		JSONObject json = new JSONObject();
		for (Field field :  EmpVO.class.getDeclaredFields()) {
			json.put(field.getName(), field.get(this));
		}
		return json;
	}
}
