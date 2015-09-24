package com.water.beans;

import java.sql.Date;

public class DataAnalysis {
	private long ID;		//编号
	private String PoolID;		//水池编号
	private Date t;		//时间
	private double InV;		//来水量
	private double OutV;		//出水量
	private double LCOutV;		//洗滤池用水
	private double TCOutV;		//洗活性炭池用水
	private double JJOutV;		//机加池排水
	private double HXOutV;		//洗虹吸滤池水
	private double Storage;		//蓄水量
	private double HLInV;		//蓄水量回流水
	private double PreH;		//预测水位
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

