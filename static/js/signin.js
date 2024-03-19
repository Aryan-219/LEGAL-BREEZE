const inputFields = document.querySelectorAll(".input-fields");
const inputLabels = document.querySelectorAll(".input-labels");
const inputGroup = document.querySelectorAll(".input-group");

inputFields.forEach((el) => {
  el.addEventListener("focus", (e) => {
    // e.target.classList.add('anima');
    // console.log(e.target.parentElement.children[1]);
    e.target.parentElement.children[1].classList.add("anima");
  });
});

inputFields.forEach((el) => {
  el.addEventListener("blur", (e) => {
    // e.target.classList.add('anima');
    // console.log(e.target.parentElement.children[1]);
    if (e.target.value == "")
      e.target.parentElement.children[1].classList.remove("anima");
  });
});

let email = document.querySelector("#email");
const emailErr = document.querySelector("#email_err");
let emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
let emailFlag = false;

let passwordGroup = document.querySelector("#pwgrp");
let password = document.querySelector("#password");
let passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
let passwordFlag = false;
const passwordErr = document.querySelector("#password_err");

let emllbl = document.querySelector("#emllbl");
const checkEmailExists = async (email) => {
  const response = await fetch("check_email.do?email=" + email);
  const result = await response.text();
  return result;
};

email.addEventListener("blur", () => {
  if (email.value == null || email.value === "") {
    emailErr.innerText = "Please enter an email";
    emailErr.style.display = "block";
    emailFlag = false;
  } else if (
    !email.value.match(emailPattern) &&
    !(email.value == null || email.value === "")
  ) {
    emailErr.innerText = "Please enter a valid email";
    emailErr.style.display = "block";
    emailFlag = false;
  } else {
    checkEmailExists(email.value)
      .then((data) => {
        if (data == 0) {
          console.log("Not found functionality");
          emailErr.innerText = "No such account exists";
          emailErr.style.display = "block";
          emailFlag = false;
        } else if (data == 1) {
          console.log("Email verified functionality");
          passwordGroup.classList.remove("hidden");
          emailErr.style.display = "none";
          emailFlag = true;

        } else if (data == 2) {
          console.log("Email not verified functionality");
          emailErr.innerText = "Kindly verify your account";
          emailErr.style.display = "block";
          emailFlag = false;
        }
      })
      .catch((error) => {
        console.log(error);
      });
  }
});
password.addEventListener("blur", () => {
  if (
    !password.value.match(passwordPattern) ||
    password.value == null ||
    password.value === ""
  ) {
    passwordErr.style.display = "block";
    passwordFlag = false;
  } else {
    passwordErr.style.display = "none";
    passwordFlag = true;
  }
});
const signinForm = document.querySelector("#signin_form");
let finalFlag = false;
signinForm.addEventListener("submit", (e) => {
  finalFlag =  emailFlag && passwordFlag; 

  if (!finalFlag) {
    e.preventDefault();
    console.log("Prevented the default behavior");
  }
});