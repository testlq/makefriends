package com.yc.util;

import java.util.Date;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {
	//public static String Ynum=null;
	public static void send(String Iemail,String Uemail,String msg) throws AddressException, MessagingException{
		Properties prop = new Properties();
        prop.setProperty("mail.smtp.auth", "true");
        prop.setProperty("mail.transport.protocol", "smtp");
        prop.setProperty("mail.smtp.host", "smtp.qq.com");
        Session session = Session.getInstance(prop);
        session.setDebug(true);
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(Iemail));
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(Uemail));
        message.setSubject("来自好友"+Iemail+"的邮件");
        
        //Ynum=num();
        message.setContent(msg, "text/html;charset=UTF-8");
        message.setSentDate(new Date());
        Transport tran = session.getTransport();
        tran.connect(Iemail,"bwxyahhhjbbpiece");
        tran.sendMessage(message, new Address[]{new InternetAddress(Uemail)});
        tran.close();
	}
	
	/*public static String num(){
		String a="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		String b="";
		for(int i=0;i<6;i++){
			int index=(int) Math.floor(Math.random()*62);
			b+=a.charAt(index);
		}
		return b;
	}*/
	
	/*public static void main(String[] args) throws Exception {
		SendEmail.send("1685520561@qq.com", "1685520561@qq.com", "哈哈哈哈哈");
	}*/
}
