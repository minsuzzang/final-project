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

import org.springframework.beans.factory.annotation.Value;

import kr.co.green.API.EmailAPI;

public class EmailSender {

	@Value("${password}")
	private static String password;

	private static final String EMAIL_USERNAME = "a01027735977@gmail.com";

	public static void sendEmail(String toEmail, String subject, String content) throws MessagingException {
		// SMTP server settings (Gmail example)
		String host = "smtp.gmail.com";
		int port = 587; // Gmail SMTP port

		// Email sending properties
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true"); // STARTTLS
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.ssl.protocols", "TLSv1.2"); // TLS v1.2

		// Set up the authenticator
		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication(EMAIL_USERNAME, EmailAPI.getEmailPassword());
			}
		};

		// Create the mail session
		Session session = Session.getInstance(properties, auth);

		// Create the message and set the necessary details
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(EMAIL_USERNAME));
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
		message.setSubject(subject);
		message.setText(content);

		// Send the message
		Transport.send(message);
	}

	public static void sendNewPassword(String toEmail, String newPassword, int idx) {
		try {
			String subject = "새로운 비밀번호 안내";
			String content = "안녕하세요, 현대카드입니다.\n\n회원님의 새로운 비밀번호를 안내해드립니다: " + newPassword + " 입니다.\n\n";
			content += "http://localhost/member/emailForm.do?idx=" + idx;

			// Send the email for password reset
			sendEmail(toEmail, subject, content);

			System.out.println("새로운 비밀번호가 성공적으로 전송되었습니다.");
		} catch (MessagingException e) {
			e.printStackTrace();
			System.err.println("새로운 비밀번호 이메일 전송에 실패했습니다.");
		}
	}

	public static void main(String[] args) {
		try {
			// Example: sending a test email
			sendEmail("recipient@example.com", "테스트 이메일", "안녕하세요,\n\n이메일 테스트입니다.");
			System.out.println("이메일이 성공적으로 전송되었습니다.");
		} catch (MessagingException e) {
			e.printStackTrace();
			System.err.println("이메일 전송에 실패했습니다.");
		}
	}
}
