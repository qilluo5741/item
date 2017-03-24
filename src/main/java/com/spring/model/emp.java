package com.spring.model;

import java.io.Serializable;

public class emp implements Serializable{
	private static final long serialVersionUID = 1L;
	private double EMPNO;
	private String ENAME;
	private String JOB;
	private double MGR;
	private String	HIREDATE;
	private double SAL;
	private double COMM;
	private double DEPTNO;
	public double getEMPNO() {
		return EMPNO;
	}
	public void setEMPNO(double eMPNO) {
		EMPNO = eMPNO;
	}
	public String getENAME() {
		return ENAME;
	}
	public void setENAME(String eNAME) {
		ENAME = eNAME;
	}
	public String getJOB() {
		return JOB;
	}
	public void setJOB(String jOB) {
		JOB = jOB;
	}
	public double getMGR() {
		return MGR;
	}
	public void setMGR(double mGR) {
		MGR = mGR;
	}
	public String getHIREDATE() {
		return HIREDATE;
	}
	public void setHIREDATE(String hIREDATE) {
		HIREDATE = hIREDATE;
	}
	public double getSAL() {
		return SAL;
	}
	public void setSAL(double sAL) {
		SAL = sAL;
	}
	public double getCOMM() {
		return COMM;
	}
	public void setCOMM(double cOMM) {
		COMM = cOMM;
	}
	public double getDEPTNO() {
		return DEPTNO;
	}
	public void setDEPTNO(double dEPTNO) {
		DEPTNO = dEPTNO;
	}
}
