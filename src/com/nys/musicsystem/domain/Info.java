package com.nys.musicsystem.domain;

public class Info {
	private Object obj;
	private String Message;
	private boolean state;
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}

	
	public boolean getState() {
		return state;
	}
	public void setState(boolean state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Information [obj=" + obj + ", Message=" + Message + ", state=" + state + "]";
	}
	public Info(Object obj, String message, boolean state) {
		super();
		this.obj = obj;
		Message = message;
		this.state = state;
	}
	
	public Info() {
		super();
		// TODO Auto-generated constructor stub
	}
}
