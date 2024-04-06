package utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;


import javax.json.Json;
import javax.servlet.ServletContext;

public class AppUtility {
    public static ServletContext appContext;
    public static String fromEmail;
    public static String fromEmailPassword;
    public static String generateOTP() {
        return Integer.toString(new Random().nextInt(8889) + 1111);
    }
    public static boolean checkGoogleRecaptchaResponse(String recaptchaURL, String responseToken, String secretKey) throws IOException{
        boolean flag=true;
        String url = recaptchaURL+ "?secret=" + secretKey + "&response=" + responseToken;
        InputStream is = ThirdPartyServer.sendThirdPartyRequest(url);

        flag = Json.createReader(is).readObject().getBoolean("success");
        return flag;
    }
    public static Timestamp getTodayDateTime(){
        return new java.sql.Timestamp(new Date().getTime());
    }
}
