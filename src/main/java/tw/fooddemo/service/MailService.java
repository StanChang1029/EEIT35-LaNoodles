package tw.fooddemo.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

@Service
public class MailService {

	public void sendMail(String memberEmail, String newPassword) {
		String mailFrom = "eeit35teamno4@gmail.com";
		String mailFromPassword = "ilovecoding@1024";
		String[] to = { memberEmail }; // list of recipient email addresses
		String subject = "LaNoodles - 忘記密碼";
		String body = 
						"親愛的顧客您好!\n"+
						"您的新密碼為:"+newPassword+"\n";

		sendFromGMail(mailFrom, mailFromPassword, to, subject, body);
	}
	
	
	public  void sendFromGMail(String mailFrom, String mailFromPassword, String[] to,
			String subject, String body) {
		
		Properties props = System.getProperties();
		String host = "smtp.gmail.com";
		// 下面設定是根據GMail官方文件所寫的，開啟TLS以及SMTP AUTH
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.user", mailFrom);
		props.put("mail.smtp.password", mailFromPassword);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");

		javax.mail.Session session = javax.mail.Session.getDefaultInstance(props);
		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(mailFrom));
			InternetAddress[] toAddress = new InternetAddress[to.length];

			// To get the array of addresses
			for (int i = 0; i < to.length; i++) {
				toAddress[i] = new InternetAddress(to[i]);
			}

			for (int i = 0; i < toAddress.length; i++) {
				message.addRecipient(Message.RecipientType.TO, toAddress[i]);
			}

			message.setSubject(subject);
			message.setText(body);
			Transport transport = session.getTransport("smtp");
			transport.connect(host, mailFrom, mailFromPassword);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
			System.out.println("mail send");
			
		} catch (AddressException ae) {
			ae.printStackTrace();
		} catch (MessagingException me) {
			me.printStackTrace();
		}
	}
}
