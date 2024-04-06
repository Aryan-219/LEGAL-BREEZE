<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <script src="https://cdn.tailwindcss.com"></script>
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css"
      rel="stylesheet"
    />

    <script
      src="https://kit.fontawesome.com/c52493ba6c.js"
      crossorigin="anonymous"
    ></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  </head>

  <body>
    <main>
      <div
        class="w-full p-4 bg-white border border-x-gray-800 shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700"
      >
        <form
          class="max-w-sm mx-auto"
          action="signup.do"
          method="post"
          id="form1"
        >
          <div class="grid grid-cols-3">
            <a href="index.do" class=""
              ><i class="fa-solid fa-arrow-left" style="color: #ffffff"></i
            ></a>
            <span
              class="text-3xl font-bold leading-none text-gray-900 dark:text-white mb-4"
            >
              Sign up
            </span>
          </div>

          <div class="mb-5">
            <label
              for="fullname"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >Your name</label
            >
            <input
              type="text"
              id="fullname"
              name="name"
              class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
            />

            <p
              class="hidden -mb-2 mt-1 text-sm text-red-600 dark:text-red-500"
              id="fullname_err"
            >
              Please enter a <span class="font-medium">valid </span>name
            </p>
          </div>

          <div class="mb-5">
            <label
              for="email"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >Your email</label
            >
            <input
              type="email"
              id="email"
              name="email"
              class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
              placeholder="name@flowbite.com"
            />
            <p
              class="hidden -mb-2 mt-1 text-sm text-red-600 dark:text-red-500"
              id="email_err"
            >
              Email Already Exists
            </p>
          </div>
          <div class="mb-5">
            <label
              for="password"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >password</label
            >
            <input
              type="password"
              id="password"
              name="password"
              class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
            />
            <p
              class="hidden -mb-2 mt-1 text-sm text-red-600 dark:text-red-500"
              id="password_err"
            >
              Enter a <span class="font-medium">valid </span> password!
            </p>
          </div>
          <div class="mb-5">
            <label
              for="phone"
              class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
              >Phone</label
            >
            <input
              type="number"
              id="phone"
              name="phone"
              class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light"
            />
            <p
              class="hidden -mb-2 mt-1 text-sm text-red-600 dark:text-red-500"
              id="phone_err"
            >
              Phone no. <span class="font-medium">already </span> exists!
            </p>
            <button
              type="button"
              id="send_otp_btn"
              hidden
              class="py-2.5 mt-3 px-5 me-2 mb-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700"
            >
              Send Otp
            </button>

            <div class="otpbox" hidden>
              <label
                for="otpfield"
                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                >Enter otp sent to your mobile</label
              >
              <input
                type="number"
                id="otpfield"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="7569"
              />

              <button
                type="button"
                id="checkotpbutton"
                value="Check OTP"
                class="py-2.5 mt-3 px-5 me-2 mb-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700"
              >
                Check OTP
              </button>
            </div>
          </div>

          <label
            for="state"
            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
            >Select state</label
          >
          <select
            id="state"
            name="state"
            class="mb-3 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
          >
            <c:forEach var="state" items="${states}">
              <option value="${state.stateId}">${state.name}</option>
            </c:forEach>
          </select>

          <fieldset>
            <legend class="text-gray-200 mb-2">Choose your type</legend>

            <div class="flex items-center mb-4">
              <input
                id="radio-1"
                type="radio"
                name="user_type_id"
                value="2"
                class="w-4 h-4 border-gray-300 focus:ring-2 focus:ring-blue-300 dark:focus:ring-blue-600 dark:focus:bg-blue-600 dark:bg-gray-700 dark:border-gray-600"
                checked
              />
              <label
                for="radio-1"
                class="block ms-2 text-sm font-medium text-gray-900 dark:text-gray-300"
              >
                I am a service provider
              </label>
            </div>

            <div class="flex items-center mb-4">
              <input
                id="radio-2"
                type="radio"
                name="user_type_id"
                value="1"
                class="w-4 h-4 border-gray-300 focus:ring-2 focus:ring-blue-300 dark:focus:ring-blue-600 dark:focus:bg-blue-600 dark:bg-gray-700 dark:border-gray-600"
              />
              <label
                for="radio-2"
                class="block ms-2 text-sm font-medium text-gray-900 dark:text-gray-300"
              >
                I am a service Seeker
              </label>
            </div>
          </fieldset>
          <div
            class="g-recaptcha mb-2"
            data-sitekey="6Lc5sSopAAAAAEoDTF_P9Pu1h3vt1IwrONV73YSm"
          ></div>

          <button
            type="submit"
            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
          >
            Register new account
          </button>
        </form>
      </div>
    </main>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
    <script src="static/js/signup.js"></script>
  </body>
</html>
