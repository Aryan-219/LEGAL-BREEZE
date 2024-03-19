console.log("Signup.js file is working");
// Getting the signup form
const signupForm = document.querySelector("#form1");


// Getting the input fields
const fullname = document.querySelector("#fullname");
const email = document.querySelector("#email");
const password = document.querySelector("#password");
const phone = document.querySelector("#phone");
const state = document.querySelector("#state");

// Getting the error paragraph tag with respect to their input field
const fullnameErr = document.querySelector("#fullname_err");
const emailErr = document.querySelector("#email_err");
const passwordErr = document.querySelector("#password_err");
const phoneErr = document.querySelector("#phone_err");

// The Regex Patterns
let fullNamePattern = /^[a-zA-Z ]*$/;
let emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
let phonePattern = /^[6-9][0-9]{9}$/;
let passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;

// Flag values for inidividual fields
let fullnameFlag = false;
let emailFlag = false;
let passwordFlag = false;
let phoneFlag = false;

let finalFlag = false;
signupForm.addEventListener("submit", (e) => {
  finalFlag = fullnameFlag && emailFlag && passwordFlag && phoneFlag; 
  if (!finalFlag) {
    e.preventDefault();
    console.log("Prevented the default behavior");
  }
});

fullname.addEventListener("blur", () => {
  if (
    !fullname.value.match(fullNamePattern) ||
    fullname.value == null ||
    fullname.value === ""
  ) {
    fullnameErr.style.display = "block";
    fullnameFlag = false;
  } else {
    fullnameErr.style.display = "none";
    fullnameFlag = true;
  }
});

// ----------------------------- Email start -------------------------------
// const email = document.querySelector("#email");
const checkEmailExists = async (email) => {
  const response = await fetch("check_email_exists.do?email=" + email);
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
        if (data == "true") {
          console.log("Duplicate exists");
          emailErr.innerText = "Duplicate email exists";
          emailErr.style.display = "block";
          emailFlag = false;
        } else {
          emailErr.style.display = "none";
          emailFlag = true;
          console.log("Duplicate does not exists");
        }
      })
      .catch((err) => {
        console.log(err);
      });
  }
});

// ----------------------------- Email end

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

// ----------------------------- Phone start -------------------------------
const checkPhoneExists = async (phone) => {
  console.log("Entered mobile number is: " + phone);
  const response = await fetch("check_phone_exists.do?phone=" + phone);
  const result = await response.text();
  console.log("Response recieved from server side: " + result);
  return result;
};
phone.addEventListener("blur", () => {
  if (phone.value == null || phone.value === "") {
    phoneErr.innerText = "Please enter a phone number";
    phoneErr.style.display = "block";
    phoneFlag = false;
  } else if (
    !phone.value.match(phonePattern) &&
    !(phone.value == null || phone.value === "")
  ) {
    phoneErr.innerText = "Please enter a valid phone number";
    phoneErr.style.display = "block";
    phoneFlag = false;
  } else {
    checkPhoneExists(phone.value)
      .then((data) => {
        if (data == "true") {
          console.log("Duplicate exists");
          phoneErr.innerText = "Duplicate phone exists";
          phoneErr.style.display = "block";
          phoneFlag = false;
        } else {
          phoneErr.style.display = "none";
          phoneFlag = true;
          console.log("Duplicate does not exists");
        }
      })
      .catch((err) => {
        console.log(err);
      });
  }
});
// ----------------------------- Phone end -------------------------------
// -------------------------------
/*
const inputFields = document.querySelectorAll(".input-fields");
const inputLabels = document.querySelectorAll(".input-labels");
const inputGroup = document.querySelectorAll(".input-group");
console.log(inputGroup);
console.log(inputFields);
console.log(inputLabels);

inputFields.forEach((el) => {
  el.addEventListener("focus", (e) => {
    e.target.classList.add('anima');
    console.log(e.target.parentElement.children[1]);
    e.target.parentElement.children[1].classList.add("anima");
  });
});

inputFields.forEach((el) => {
  el.addEventListener("blur", (e) => {
    e.target.classList.add('anima');
    console.log(e.target.parentElement.children[1]);
    if (e.target.value == "")
      e.target.parentElement.children[1].classList.remove("anima");
  });
});
*/
