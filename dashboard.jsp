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
  </head>

  <body class="bg-gray-900 md:px-24 px-0">
    <c:import url="/header.jsp" />

    <main>
      <!--  Providers cards start -->
      <div
        class="flex flex-col md:flex-row justify-around m-4 p-4 md:space-x-4 space-y-4"
      >
        <!-- Lawyers start -->
        <div
          class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700"
        >
          <a href="#">
            <img
              class="rounded-t-lg"
              src="./static/media/images/lawyer_clipart.png"
              alt=""
            />
          </a>
          <div class="p-5">
            <a href="#">
              <h5
                class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white text-center"
              >
                Lawyers
              </h5>
            </a>
            <p
              class="mb-3 font-normal text-gray-700 dark:text-gray-400 text-center"
            >
              Professionals qualified to offer advice about the law or represent
              someone in legal matters.A lawyer can also be called an attorney,
              a solicitor, a counselor, a barrister.
            </p>
            <div class="flex items-center justify-center">
              <a
                href="lawyer_types.do"
                class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
              >
                View Lawyers
                <svg
                  class="rtl:rotate-180 w-3.5 h-3.5 ms-2"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 14 10"
                >
                  <path
                    stroke="currentColor"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M1 5h12m0 0L9 1m4 4L9 9"
                  />
                </svg>
              </a>
            </div>
          </div>
        </div>
        <!-- Lawyers end -->

        <!-- Notaries start -->
        <div
          class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700"
        >
          <a href="#">
            <img
              class="rounded-t-lg"
              src="./static/media/images/notary_clipart.png"
              alt=""
            />
          </a>
          <div class="p-5">
            <a href="#">
              <h5
                class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white text-center"
              >
                Notaries
              </h5>
            </a>
            <p
              class="mb-3 font-normal text-gray-700 dark:text-gray-400 text-center"
            >
              Publicly commissioned official who serves as an impartial witness
              to the signing of a legal document.
            </p>
            <div class="flex items-center justify-center">
              <a
                href="notary_types.do"
                class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
              >
                View Notaries
                <svg
                  class="rtl:rotate-180 w-3.5 h-3.5 ms-2"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 14 10"
                >
                  <path
                    stroke="currentColor"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M1 5h12m0 0L9 1m4 4L9 9"
                  />
                </svg>
              </a>
            </div>
          </div>
        </div>
        <!-- Notaries end -->

        <!-- Doc Writers start -->
        <div
          class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700"
        >
          <a href="#">
            <img
              class="rounded-t-lg"
              src="./static/media/images/docwriter_clipart.png"
              alt=""
            />
          </a>
          <div class="p-5">
            <a href="#">
              <h5
                class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white text-center"
              >
                Document Writers
              </h5>
            </a>
            <p
              class="mb-3 font-normal text-gray-700 dark:text-gray-400 text-center"
            >
              Legal Writers specialized in conducting in-depth research on
              various legal matters and producing high-quality legal documents.
            </p>
            <div class="flex items-center justify-center">
              <a
                href="docwriter_types.do"
                class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
              >
                View Document Writers
                <svg
                  class="rtl:rotate-180 w-3.5 h-3.5 ms-2"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 14 10"
                >
                  <path
                    stroke="currentColor"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M1 5h12m0 0L9 1m4 4L9 9"
                  />
                </svg>
              </a>
            </div>
          </div>
        </div>
        <!-- Doc Writers end -->
      </div>
      <!-- Providers cards end ->

      <!-- Bidding -->
      <div
        class="bg-slate-600 rounded-3xl md:mt-16 mt-5 text-center basis-1/2 flex flex-col"
      >
        <!-- ############################ Start a bid modal start ############################## -->
        <div>
          <!-- Modal toggle -->
          <button
            data-modal-target="authentication-modal"
            data-modal-toggle="authentication-modal"
            class="text-white bg-blue-950 hover:bg-blue-950 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-center dark:bg-blue-950 dark:hover:bg-blue-900 dark:focus:ring-blue-800 m-3 pb-3"
            type="button"
          >
            <p class="font-mono ... text-4xl text-gray-200">
              !!! Start a Bid !!!
            </p>
          </button>

          <!-- Main modal -->
          <div
            id="authentication-modal"
            tabindex="-1"
            aria-hidden="true"
            class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full"
          >
            <div class="relative p-4 w-full max-w-md max-h-full">
              <!-- Modal content -->
              <div class="relative bg-white rounded-lg shadow dark:bg-cyan-900">
                <!-- Modal header -->
                <div
                  class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600"
                >
                  <div class="">
                    <h3
                      class="text-xl font-semibold text-gray-900 dark:text-white"
                    >
                      Enter Bid Details
                    </h3>
                  </div>

                  <button
                    type="button"
                    class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                    data-modal-hide="authentication-modal"
                  >
                    <svg
                      class="w-3 h-3"
                      aria-hidden="true"
                      xmlns="http://www.w3.org/2000/svg"
                      fill="none"
                      viewBox="0 0 14 14"
                    >
                      <path
                        stroke="currentColor"
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"
                      />
                    </svg>
                    <span class="sr-only">Close modal</span>
                  </button>
                </div>
                <!-- Modal body -->
                <div class="p-4 md:p-5">
                  <form
                    class="space-y-4"
                    action="save_bid_details.do"
                    method="post"
                  >
                    <div>
                      <label
                        for="issue"
                        class="text-start ps-2 block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Issue</label
                      >
                      <input
                        type="text"
                        name="issue"
                        id="issue"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        placeholder="Case for retaliating"
                        required
                      />
                    </div>
                    <div>
                      <label
                        for="description"
                        class="text-start ps-2 block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Description</label
                      >
                      <input
                        type="textarea"
                        name="description"
                        id="description"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        placeholder="lorem ipsum dolor sit amet consectetur and consectetur adipiscing el elementum  "
                        required
                      />
                    </div>
                    <div>
                      <label
                        for="budget"
                        class="text-start ps-2 block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Budget</label
                      >
                      <input
                        type="number"
                        name="budget"
                        id="budget"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        placeholder="100000"
                        required
                      />
                    </div>
                    <div>
                      <label
                        for="deadline"
                        class="text-start ps-2 block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Deadline</label
                      >
                      <input
                        type="date"
                        name="deadline"
                        id="deadline"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        placeholder=""
                      />
                    </div>

                    <button
                      type="submit"
                      class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                    >
                      Submit Bid
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- ############################ Start a bid modal end ############################## -->

        <!-- ############################ Open Bids -s ############################## -->
        <div
          class="border-2 w-full p-4 mb-4 bg-white border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700"
        >
          <div class="flex mb-4 justify-center">
            <div
              class="text-4xl font-bold leading-none text-gray-900 dark:text-white"
            >
              Your Bids(Open)
            </div>
          </div>
          <div class="flow-root">
            <ul role="list" class="divide-gray-200 dark:divide-gray-700">
              <c:forEach var="bid" items="${openBids}" varStatus="n">
                <li class="py-3 sm:py-4">
                  <div
                    class="flex flex-col h-auto items-center bg-white border border-gray-200 rounded-lg shadow md:w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700 space-y-2 p-5"
                  >
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Deadline : &nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        ${bid.deadline}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Issue : &nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        ${bid.issue}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Description : &nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        ${bid.description}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        No. of applicants : &nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        ${bid.noOfApplicants}
                      </p>
                    </div>
                    <div class="flex items-center justify-center">
                      <c:choose>
                        <c:when test="${user!=null}">
                          <a
                            href="all_applicants.do?bid_id=${bid.bidId}"
                            class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                          >
                            View Applicants
                            <svg
                              class="rtl:rotate-180 w-3.5 h-3.5 ms-2"
                              aria-hidden="true"
                              xmlns="http://www.w3.org/2000/svg"
                              fill="none"
                              viewBox="0 0 14 10"
                            >
                              <path
                                stroke="currentColor"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M1 5h12m0 0L9 1m4 4L9 9"
                              />
                            </svg>
                          </a>
                        </c:when>
                        <c:otherwise>
                          <div class="cust_tooltip">
                            <button
                              data-popover-target="popover-click-${n.count}"
                              data-popover-trigger="click"
                              type="button"
                              class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
                            >
                              View Applicants
                            </button>

                            <div
                              data-popover
                              id="popover-click-${n.count}"
                              role="tooltip"
                              class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:border-gray-600 dark:bg-gray-800"
                            >
                              <div
                                class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700"
                              >
                                <h3
                                  class="font-semibold text-gray-900 dark:text-white"
                                >
                                  Not logged in
                                </h3>
                              </div>
                              <div class="px-3 py-2">
                                <p>You need to login to access this feature</p>
                              </div>
                              <div data-popper-arrow></div>
                            </div>
                          </div>
                        </c:otherwise>
                      </c:choose>
                    </div>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
        </div>
        <!-- ############################ Open Bids -e ############################## -->

        <!-- ############################  Resolved-s ############################## -->
        <div
          class="border-2 w-full p-4 mb-4 bg-white border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700"
        >
          <div class="flex mb-4 justify-center">
            <div
              class="text-4xl font-bold leading-none text-gray-900 dark:text-white"
            >
              Your Bids(Approved)
            </div>
          </div>
          <div class="flow-root">
            <ul role="list" class="divide-gray-200 dark:divide-gray-700">
              <c:forEach var="bid" items="${pendingBids}" varStatus="n">
                <li class="py-3 sm:py-4">
                  <div
                    class="flex flex-col h-auto items-center bg-white border border-gray-200 rounded-lg shadow md:w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700 space-y-2 p-5"
                  >
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Deadline : &nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        ${bid.deadline}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Issue : &nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        ${bid.issue}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5
                        class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                      >
                        Description : &nbsp;
                      </h5>
                      <p
                        class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                      >
                        ${bid.description}
                      </p>
                    </div>
                    <%--
                    <div class="flex items-center justify-center">
                      <c:choose>
                        <c:when test="${user!=null}">
                          <a
                            href="all_applicants.do?bid_id=${bid.bidId}"
                            class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                          >
                            View Applicants
                            <svg
                              class="rtl:rotate-180 w-3.5 h-3.5 ms-2"
                              aria-hidden="true"
                              xmlns="http://www.w3.org/2000/svg"
                              fill="none"
                              viewBox="0 0 14 10"
                            >
                              <path
                                stroke="currentColor"
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                stroke-width="2"
                                d="M1 5h12m0 0L9 1m4 4L9 9"
                              />
                            </svg>
                          </a>
                        </c:when>
                        <c:otherwise>
                          <div class="cust_tooltip">
                            <button
                              data-popover-target="popover-click-${n.count}"
                              data-popover-trigger="click"
                              type="button"
                              class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
                            >
                              View Applicants
                            </button>

                            <div
                              data-popover
                              id="popover-click-${n.count}"
                              role="tooltip"
                              class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:border-gray-600 dark:bg-gray-800"
                            >
                              <div
                                class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700"
                              >
                                <h3
                                  class="font-semibold text-gray-900 dark:text-white"
                                >
                                  Not logged in
                                </h3>
                              </div>
                              <div class="px-3 py-2">
                                <p>You need to login to access this feature</p>
                              </div>
                              <div data-popper-arrow></div>
                            </div>
                          </div>
                        </c:otherwise>
                      </c:choose>
                    </div>
                    --%>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
        </div>
        <!-- ############################ Resolved -e ############################## -->
      </div>
      <!-- Bidding -->

      <!-- Third div -->
      <!-- <div class="bg-slate-600 rounded-3xl mt-16 p-8 basis-1/4 h-full">
        <h1>Chat Section</h1>
      </div> -->
      <!-- Third div -->

      <!-- Fourth div - Cases start -->
      <div
        class="w-full p-4 my-4 bg-white border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700"
      >
        <div class="flex mb-4 justify-center">
          <h5
            class="text-4xl font-bold leading-none text-gray-900 dark:text-white"
          >
            Your Cases
          </h5>
        </div>
        <div class="flow-root">
          <ul role="list" class="divide-gray-200 dark:divide-gray-700">
            <c:forEach var="inc" items="${cases}">
              <li class="m-4">
                <div
                  class="border rounded-md p-4 flex flex-col justify-center items-center space-y-4"
                >
                  <div class="flex md:flex-row flex-col leading-normal">
                    <h5
                      class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                    >
                      Issue :
                    </h5>
                    <p
                      class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                    >
                      ${inc.issue}
                    </p>
                  </div>
                  <div class="flex md:flex-row flex-col leading-normal">
                    <h5
                      class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                    >
                      Description :
                    </h5>
                    <p
                      class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                    >
                      ${inc.description}
                    </p>
                  </div>
                  <div class="flex md:flex-row flex-col leading-normal">
                    <h5
                      class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                    >
                      Status :
                    </h5>
                    <p
                      class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                    >
                      <c:forEach var="st" items="${status}">
                        <c:if test="${st.statusId==inc.status.statusId}">
                          <c:out value="${st.name}" />
                        </c:if>
                      </c:forEach>
                    </p>
                  </div>
                  <!-- <div>
                    <a href="all_applicants.do">
                      <button
                        type="button"
                        class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
                      >
                        Show Applicants
                      </button>
                    </a>
                  </div> -->
                </div>
              </li>
            </c:forEach>
          </ul>
        </div>
      </div>
      <!-- Fourth div - Cases end -->
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
