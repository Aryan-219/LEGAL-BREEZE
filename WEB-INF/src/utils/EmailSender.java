package utils;

import javax.mail.Session;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Transport;
import javax.mail.PasswordAuthentication;
import javax.mail.internet.MimeMessage;
import javax.mail.MessagingException;
import javax.mail.Message;

public class EmailSender {
    
    static Properties props = new Properties();
    static {
        props.put("mail.transport.protocol","smtp");
        props.put("mail.smtp.host","smtp-mail.outlook.com");
        props.put("mail.smtp.port","587");
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.starttls.enable","true");
    }
    
    public static void  sendEmail(String toEmail, String subject, String body){
        Session session = Session.getInstance(props,new EmailAuthenticator());    
        MimeMessage mm = new MimeMessage(session);

        try {
            mm.setFrom(AppUtility.fromEmail);
            mm.setRecipients(Message.RecipientType.TO,toEmail);
            System.out.println(AppUtility.fromEmail);
            System.out.println(toEmail);
            mm.setSubject(subject);
            mm.setContent(body,"text/html");
            Transport.send(mm);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        System.out.println("Email has been sent successfully");
    }
    public static boolean sendAccountVerificationEmail(String email, String otp) {
        String verificationEmail = "<h1>Welcome to LEGAL-BREEZE</h1><p>Click on the following link to verify your account</p> <a href='http://localhost:8080/LEGAL-BREEZE/evf.do?email="
                + email + "&otp=" + otp + "'>Email Verification Link</a>";
                sendEmail(email, "Account Verification Email", verificationEmail);
        boolean flag = false;
        return flag;
    }
}
class EmailAuthenticator extends Authenticator{
    public PasswordAuthentication getPasswordAuthentication(){
        return new PasswordAuthentication(AppUtility.fromEmail, AppUtility.fromEmailPassword);
    } 
}
