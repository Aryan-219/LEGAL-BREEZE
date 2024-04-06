<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>


    <script
      src="https://kit.fontawesome.com/c52493ba6c.js"
      crossorigin="anonymous"
    ></script>

    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <link rel="stylesheet" href="static/css/style.css" />
  </head>

  <body>
    <main>
      <div class="login-wrapper">
        <form action="signin.do" class="form" method="post" id="signin_form">
          <a href="index.do"
            ><i class="fa-solid fa-arrow-left" style="color: #ffffff"></i
          ></a>
          <img src="static/img/download.jpg" alt="ricky-morty-image" />
          <h2>SIGNIN</h2>

          <div class="input-group">
            <input
              class="input-fields"
              type="text"
              name="email"
              id="email"
              required
            />
            <label class="input-labels" for="email" id="emllbl">Email</label>
            
            <p
              class="hidden -mt-5 mb-3 text-sm text-red-600 dark:text-red-500"
              id="email_err"
            >
              Please enter an email 
            </p>
          </div>
          <div class="input-group  hidden" id="pwgrp">
            <input
              class="input-fields"
              type="password"
              name="password"
              id="password"
              required
             
            />
            <label class="input-labels" for="password">Password</label>
            <p
              class="hidden -mt-5 mb-3 text-sm text-red-600 dark:text-red-500"
              id="password_err"
            >
              Enter a <span class="font-medium">valid </span> password!
            </p>
          </div>

          <div class="input-group">
            <div
              class="g-recaptcha"
              data-sitekey="6Lc5sSopAAAAAEoDTF_P9Pu1h3vt1IwrONV73YSm"
            ></div>
          </div>
          <input type="submit" value="Signin" class="submit-btn" />
        </form>
      </div>
    </main>
    <script src="static/js/signin.js"></script>
    
  </body>
</html>
