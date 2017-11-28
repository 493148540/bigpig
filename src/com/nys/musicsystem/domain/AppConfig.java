package com.nys.musicsystem.domain;


public class AppConfig {
	private static Long CodeTime;		//验证码生效时间
	private static Long TokenOverdueTime;   //token生效时间
	private static int ISToExamine;
	
	private static String serverName;
	public static int getISToExamine() {
		return ISToExamine;
	}
	public static void setISToExamine(int ISToExamine) {
		AppConfig.ISToExamine = ISToExamine;
	}
	public static Long getCodeTime() {
		return CodeTime;
	}
	public static void setCodeTime(Long codeTime) {
		CodeTime = codeTime;
	}
	public static Long getTokenOverdueTime() {
		return TokenOverdueTime;
	}
	public static void setTokenOverdueTime(Long tokenOverdueTime) {
		TokenOverdueTime = tokenOverdueTime;
	}
	
	public static String getServerName() {
		return serverName;
	}
	public static void setServerName(String serverName) {
		AppConfig.serverName = serverName;
	}
	@Override
	public String toString() {
		return "AppConfig []";
	}
	public AppConfig() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
