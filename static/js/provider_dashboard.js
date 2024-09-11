console.log("welcome to provider dashboard");
const buttons = document.querySelectorAll(".bidNowbtn");
const modalFormButton = document.querySelectorAll(".bidNowModalButton");
// const slider = document.querySelectorAll(".slider");

// console.log(buttons);
// console.log(modalFormButton);
// console.log(slider);
let checkHasApplied = async (bidId) => {
  let response = await fetch("check_has_applied.do?bid_id=" + bidId);
  let result = await response.text();
  return result;
};

let saveBidApplication = async (bidAmount, bidId) => {
  // console.log(bidAmount);
  // console.log(bidId);
  let response = await fetch(
    "save_bid_application.do?bid_id=" + bidId + "&bid_amount=" + bidAmount
  );
  let result = await response.text();
  return result;
};

buttons.forEach((button) => {
  // console.log(button);
  button.addEventListener("click", (e) => {
    //  console.log(e.target.id);
    let buttonId = e.target.id;
    console.log(buttonId);
    buttonId = buttonId.substring(8);
    console.log(buttonId);
    const modal = document.querySelector("#progress-modal-" + buttonId);
    //  console.log(modal);
    checkHasApplied(buttonId).then((data) => {
      console.log("value of has applied: " + data);
      if (data == "true") {
        alert("you have already applied to this bid");
        //e.target.innerText="You have already applied";
        //e.target.disabled = true;
        console.log(
          "the user has already applied to this bid. Make him edit the bidding amount which is currently: " +
            data
        );
        // window.location.reload();
        window.location.href = "provider_dashboard.do";
      } else {
        console.log("you have not applied to this bid");
        // alert("set the bid amount");
        // open modal
      }
    });
  });
});

// console.log(slider);
// console.log(modalFormButton);
for (var elm of modalFormButton) {
  elm.addEventListener("click", (e) => {
    e.preventDefault();
    // console.log("Hihihihihihihihhihih");
    let id = e.target.id;
    // console.log(e.target.id);
    // let sliderValue = slider[e.target.id - 1].value;
    let slider = document.getElementById("labels-range-input-" + id);
    // console.log(slider);
    // console.log("Slider value"+sliderValue);
    let bidId = e.target.id;
    // console.log(elm.parentElement)
    let sliderValue = slider.value;
    // console.log("Slider value"+sliderValue);
    saveBidApplication(sliderValue, bidId).then((data) => {
      if (data == "true") {
        alert("bidding amount set successfully");
      } else {
        alert("Bidding amount not set");
      }
    });
  });
}
