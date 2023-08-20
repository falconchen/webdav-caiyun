package com.vgearen.webdavcaiyundrive.config;

public class Cookie {

    private static String token;

    private static String account;

    private static String encrypt;

    private static String tel;

    public static String getCookie() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("authorization=").append(token).append(";");
        return stringBuffer.toString();
    }


    public static void setToken(String token) {
        Cookie.token = token;
    }

    public static void setAccount(String account) {
        Cookie.account = account;
    }

    public static void setEncrypt(String encrypt) {
        Cookie.encrypt = encrypt;
    }

    public static String getTel() {
        return tel;
    }

    public static void setTel(String tel) {
        Cookie.tel = tel;
    }
}
