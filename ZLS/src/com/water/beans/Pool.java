package com.water.beans;

	/**
	*	*@author yangsj
	*/

public class Pool{
	private int ID;
	private String PoolID;
	private int BuildingID;
	private double VMax;
	private String Location;

	public int getID(){
		return this.ID;
	}
	public void setID(int ID){
		this.ID=ID;
	}
	public String getPoolID(){
		return this.PoolID;
	}
	public void setPoolID(String PoolID){
		this.PoolID=PoolID;
	}
	public int getBuildingID(){
		return this.BuildingID;
	}
	public void setBuildingID(int BuildingID){
		this.BuildingID=BuildingID;
	}
	public double getVMax(){
		return this.VMax;
	}
	public void setVMax(double VMax){
		this.VMax=VMax;
	}
	public String getLocation(){
		return this.Location;
	}
	public void setLocation(String Location){
		this.Location=Location;
	}

}