package kr.co.green.email.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailSender {
	public static void sendNewPassword(String toEmail, String newPassword) throws MessagingException {
		// 이메일 송신 계정 정보
		String fromEmail = "a01027735977@gmail.com"; // 발신자 이메일 주소
		String password = "xoyb vkcg fsbh gbav"; // 발신자 이메일 비밀번호

		// SMTP 서버 설정 (Gmail 예시)
		String host = "smtp.gmail.com";
		int port = 465;

		// 메일 송신을 위한 속성 설정
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.ssl.protocols", "TLSv1.3");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.ssl.trust", host);

		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromEmail, password);
			}
		};
		Session session = Session.getInstance(properties, auth);
		System.out.println(toEmail);
		// 메시지 생성
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(fromEmail));
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
		message.setSubject("임시 비밀번호 안내");
		message.setText("안녕하세요,\n\n새로운 임시 비밀번호는 " + newPassword + "입니다.");

		// 메시지 전송
		Transport.send(message);
	}
}
