package tw.fooddemo.service;

import java.util.List;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.FoodBean;
import tw.fooddemo.model.FoodRepository;



@Service
@Transactional
public class FoodService {
	@Autowired
    private FoodRepository fResp;
    
	public FoodBean insert(FoodBean food) {
		return fResp.save(food);
	}
	
	
	public FoodBean update(FoodBean food) {
		return fResp.save(food);
	}
	
	public void deleteById(String id) {
		fResp.deleteById(Integer.valueOf(id));		
	}
	
	public List findByDateBetween(String date1,String date2) {
		return fResp.findByDateBetween(date1,date2);
	}
	
	
	public List SumQuantity(String date,String time) {
		
		System.out.println(date);
		System.out.println(time);
		return fResp.SumQuantity(date, time);
//		return fResp.SumQuantity();
	}
	
	public List<FoodBean> getAllFoodDate() {
		return fResp.findAll();
	}
	
	public List<FoodBean> getfoodquerytdq() {
		return fResp.findtdq();
	}
	
	
	public  void sendFromGMail(String from, String pass, String[] to,
			String subject, String body) {
		
		Properties props = System.getProperties();
		String host = "smtp.gmail.com";
		// 下面設定是根據GMail官方文件所寫的，開啟TLS以及SMTP AUTH
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.password", pass);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");

		javax.mail.Session session = javax.mail.Session.getDefaultInstance(props);
		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(from));
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
			transport.connect(host, from, pass);
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
