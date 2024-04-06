package utils;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

public class SMSSender {
    public static String AUTH_TOKEN = "97f6a0106a9aa5f2514dc6ea56c22123";
    public static String ACCOUNT_SID = "AC9bb7ff9cf5faf0e638c5ee6f8ab761b8";

    public static void sendSMS(String phone, String otp) {
        System.out.println("Generated one:" + otp);

        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message message = Message.creator(
                new com.twilio.type.PhoneNumber("+91" + phone),
                new com.twilio.type.PhoneNumber("+12055491987"),
                "Hello and welcome to TDF. Your otp for verification is:" + otp).create();

        System.out.println(message.getBody());
        System.out.println("OTP has been sent.");

    }
}