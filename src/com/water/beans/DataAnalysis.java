package com.water.beans;

import java.util.Date;

public class DataAnalysis {
	private long ID;		//���
	private String PoolID;		//ˮ�ر��
	private Date t;		//ʱ��
	private double InV;		//��ˮ��
	private double OutV;		//��ˮ��
	private double LCOutV;		//ϴ�˳���ˮ
	private double TCOutV;		//ϴ����̿����ˮ
	private double JJOutV;		//��ӳ���ˮ
	private double HXOutV;		//ϴ�����˳�ˮ
	private double Storage;		//��ˮ��
	private double HLInV;		//��ˮ������ˮ
	private double PreH;		//Ԥ��ˮλ
	public long getID() {
		return ID;
	}
	public void setID(long iD) {
		ID = iD;
	}
	public String getPoolID() {
		return PoolID;
	}
	public void setPoolID(String poolID) {
		PoolID = poolID;
	}
	
	
	public Date getT() {
		return t;
	}
	public void setT(Date t) {
		this.t = t;
	}
	public double getInV() {
		return InV;
	}
	public void setInV(double inV) {
		InV = inV;
	}
	public double getOutV() {
		return OutV;
	}
	public void setOutV(double outV) {
		OutV = outV;
	}
	public double getLCOutV() {
		return LCOutV;
	}
	public void setLCOutV(double lCOutV) {
		LCOutV = lCOutV;
	}
	public double getTCOutV() {
		return TCOutV;
	}
	public void setTCOutV(double tCOutV) {
		TCOutV = tCOutV;
	}
	public double getJJOutV() {
		return JJOutV;
	}
	public void setJJOutV(double jJOutV) {
		JJOutV = jJOutV;
	}
	public double getHXOutV() {
		return HXOutV;
	}
	public void setHXOutV(double hXOutV) {
		HXOutV = hXOutV;
	}
	public double getStorage() {
		return Storage;
	}
	public void setStorage(double storage) {
//		Storage =  this.InV+this.HLInV
//				  -this.OutV-this.HXOutV
//				  -this.JJOutV-this.TCOutV
//				  -this.LCOutV;
	Storage=storage;
	}
	public double getHLInV() {
		return HLInV;
	}
	public void setHLInV(double hLInV) {
		HLInV = hLInV;
	}
	public double getPreH() {
		return PreH;
	}
	public void setPreH(double preH) {
//		PreH= (double)(Math.round(this.Storage/32*100)/100.0);

		PreH=preH;
	}
	
	
}

