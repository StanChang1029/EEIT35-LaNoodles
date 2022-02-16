package tw.fooddemo.service;

import java.util.List;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.fooddemo.model.Menu;
import tw.fooddemo.model.MenuRepository;


@Service
@Transactional
public class MenuService {
	@Autowired
    private MenuRepository mResp;
    
	public Menu insert(Menu menu) {
		return mResp.save(menu);
	}
	
	public Menu update(Menu menu) {
		return mResp.save(menu);
	}
	
	public void deleteById(Integer id) {
		mResp.deleteById(id);
	}
	
	
	
	public Menu findById(Integer id) {
		//一個型別
		Optional<Menu> optinal = mResp.findById(id);
		
		//確認是否有找到，有就回傳
		if(optinal.isPresent()) {
			return optinal.get();
		}
		
		return null;
	}
	
	public List<Menu> findByItemLike(String item) {	
		
		List<Menu> listm = mResp.findByItemLike(item);	
		return listm;				
	}
	
	public List<Menu> findByPriceBetween(Integer menuPrice1, Integer menuPrice2) {
		
		List<Menu> listp = mResp.findByPriceBetween(menuPrice1, menuPrice2);	
		return listp;	
	}
	
	public Page<Menu> findAllByPage(Pageable pageable){
		return mResp.findAll(pageable);
	}

	public boolean delete(Menu menu) {
		mResp.delete(menu);
		return false;
	}

	
	public void sendFromGMail(String from, String pass, String[] to,String subject, String body) {
		
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
	
	public Menu findByName(String name) {
		Optional<Menu> op1 = mResp.findByName(name);
		
		if(op1.isPresent()) {
			return op1.get();
		}
		
		return null;
	}
	
}
