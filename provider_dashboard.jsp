<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="a" uri="lbdb" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Document</title>

      <script src="https://cdn.tailwindcss.com"></script>
      <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />
      <script src="https://kit.fontawesome.com/c52493ba6c.js" crossorigin="anonymous"></script>
    </head>

    <body class="bg-gray-900 md:px-24 px-0">
      <c:import url="/header.jsp" />

      <main>
        <!-- Alert cases start-->
        <c:if test="${user.status.statusId==7}">
          <c:forEach var="hhhh" items="${cases}" varStatus="n">
            <c:choose>
              <c:when test="${hhhh.status.statusId==3}">
                <div id="alert-additional-content-${n.count}"
                  class="p-4 mb-4 text-green-800 border border-green-300 rounded-lg bg-green-50 dark:bg-gray-800 dark:text-green-400 dark:border-green-800"
                  role="alert">
                  <div class="flex items-center">
                    <svg class="flex-shrink-0 w-4 h-4 me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                      fill="currentColor" viewBox="0 0 20 20">
                      <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z" />
                    </svg>
                    <span class="sr-only">Info</span>
                    <h3 class="text-lg font-medium">New Case alert</h3>
                  </div>
                  <div class="mt-2 mb-4 text-sm">Issue: ${hhhh.issue}</div>
                  <div class="mt-2 mb-4 text-sm">
                    Description: ${hhhh.description}
                  </div>
                  <div class="mt-2 mb-4 text-sm">
                    Court: ${hhhh.court.courtId}
                  </div>
                  <div class="mt-2 mb-4 text-sm">Budget: ${hhhh.budget}</div>
                  <div class="flex">
                    <a href="accept_case.do?case_id=${hhhh.caseId}" type="button"
                      class="text-white bg-green-800 hover:bg-green-900 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-xs px-3 py-1.5 me-2 text-center inline-flex items-center dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800">
                      <svg class="me-2 h-3 w-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                        fill="currentColor" viewBox="0 0 20 14">
                        <path
                          d="M10 0C4.612 0 0 5.336 0 7c0 1.742 3.546 7 10 7 6.454 0 10-5.258 10-7 0-1.664-4.612-7-10-7Zm0 10a3 3 0 1 1 0-6 3 3 0 0 1 0 6Z" />
                      </svg>
                      Accept
                    </a>
                    <a href="reject_case.do?case_id=${hhhh.caseId}" type="button"
                      class="text-green-800 bg-transparent border border-green-800 hover:bg-green-900 hover:text-white focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-xs px-3 py-1.5 text-center dark:hover:bg-green-600 dark:border-green-600 dark:text-green-400 dark:hover:text-white dark:focus:ring-green-800"
                      data-dismiss-target="#alert-additional-content-${n.count}" aria-label="Close">
                      Reject
                    </a>
                  </div>
                </div>
              </c:when>
              <c:when test="${hhhh.status.statusId==8}">
                <div id="alert-additional-content-${n.count}"
                  class="p-4 mb-4 text-red-800 border border-red-300 rounded-lg bg-red-50 dark:bg-gray-800 dark:text-red-400 dark:border-red-800"
                  role="alert">
                  <div class="flex items-center">
                    <svg class="flex-shrink-0 w-4 h-4 me-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                      fill="currentColor" viewBox="0 0 20 20">
                      <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z" />
                    </svg>
                    <span class="sr-only">Info</span>
                    <h3 class="text-lg font-medium">Rejected Case</h3>
                  </div>
                  <div class="mt-2 mb-4 text-sm">${hhhh.issue}</div>
                  <div class="mt-2 mb-4 text-sm">${hhhh.description}</div>
                  <div class="mt-2 mb-4 text-sm">${hhhh.budget}</div>
                  <div class="flex">
                    <button type="button"
                      class="text-red-800 bg-transparent border border-red-800 hover:bg-red-900 hover:text-white focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-xs px-3 py-1.5 text-center dark:hover:bg-red-600 dark:border-red-600 dark:text-red-500 dark:hover:text-white dark:focus:ring-red-800"
                      data-dismiss-target="#alert-additional-content-${n.count}" aria-label="Close">
                      Dismiss
                    </button>
                  </div>
                </div>
              </c:when>
              <c:otherwise>
                <div id="alert-additional-content-${n.count}"
                  class="p-4 mb-4 border border-gray-300 rounded-lg bg-gray-50 dark:border-gray-600 dark:bg-gray-800"
                  role="alert">
                  <div class="flex items-center">
                    <svg class="flex-shrink-0 w-4 h-4 me-2 dark:text-gray-300" aria-hidden="true"
                      xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z" />
                    </svg>
                    <span class="sr-only">Info</span>
                    <h3 class="text-lg font-medium text-gray-800 dark:text-gray-300">
                      Accepted Case
                    </h3>
                  </div>
                  <div class="mt-2 mb-4 text-sm text-gray-800 dark:text-gray-300">
                    ${hhhh.issue}
                  </div>
                  <div class="flex">
                    <button type="button"
                      class="text-white bg-gray-700 hover:bg-gray-800 focus:ring-4 focus:outline-none focus:ring-gray-300 font-medium rounded-lg text-xs px-3 py-1.5 me-2 text-center inline-flex items-center dark:bg-gray-600 dark:hover:bg-gray-500 dark:focus:ring-gray-800">
                      <svg class="me-2 h-3 w-3 dark:text-gray-300" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                        fill="currentColor" viewBox="0 0 20 14">
                        <path
                          d="M10 0C4.612 0 0 5.336 0 7c0 1.742 3.546 7 10 7 6.454 0 10-5.258 10-7 0-1.664-4.612-7-10-7Zm0 10a3 3 0 1 1 0-6 3 3 0 0 1 0 6Z" />
                      </svg>
                      View more
                    </button>
                    <button type="button"
                      class="text-gray-800 bg-transparent border border-gray-700 hover:bg-gray-800 hover:text-white focus:ring-4 focus:outline-none focus:ring-gray-300 font-medium rounded-lg text-xs px-3 py-1.5 text-center dark:border-gray-600 dark:hover:bg-gray-600 dark:focus:ring-gray-800 dark:text-gray-300 dark:hover:text-white"
                      data-dismiss-target="#alert-additional-content-${n.count}" aria-label="Close">
                      Dismiss
                    </button>
                  </div>
                </div>
              </c:otherwise>
            </c:choose>
          </c:forEach>
        </c:if>
        <!-- Alert cases end-->

        <!-- open bids -s -->
        <div
          class="w-full p-4 mb-4 bg-white border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700">
          <div class="flex mb-4 justify-center">
            <h5 class="text-4xl font-bold leading-none text-gray-900 dark:text-white">
              Open Bids
            </h5>
          </div>
          <div class="flow-root">
            <ul role="list" class="divide-gray-200 dark:divide-gray-700">
              <c:forEach var="bid" items="${a:compare(allBids, appliedBids)}" varStatus="n">
                <li class="m-4">
                  <div class="border rounded-md p-4 flex flex-col justify-center items-center space-y-4">
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Bid Id :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${bid.bidId}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        User Id :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${bid.user.userId}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Issue :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${bid.issue}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Description :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${bid.description}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Budget :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${bid.budget}
                      </p>
                    </div>
                    <div>
                      <!-- <a href="all_applicants.do"> -->
                      <a href="all_applicants.do?bid_id=${bid.bidId}">
                        <button type="button"
                          class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                          Show Applicants
                        </button>
                      </a>


                      <!-- Modal toggle -->
                      <button data-modal-target="progress-modal-${bid.bidId}"
                        data-modal-toggle="progress-modal-${bid.bidId}" id="bid_now_${bid.bidId}"
                        class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 bidNowbtn"
                        type="button">
                        Bid Now
                      </button>

                      <!-- Main modal -->
                      <div id="progress-modal-${bid.bidId}" tabindex="-1" aria-hidden="true"
                        class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                        <div class="relative p-4 w-full max-w-md max-h-full">
                          <!-- Modal content -->

                          <div class="relative bg-white rounded-lg shadow dark:bg-gray-800">
                            <button type="button"
                              class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                              data-modal-hide="progress-modal-${bid.bidId}">
                              <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                                viewBox="0 0 14 14">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                  stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                              </svg>
                              <span class="sr-only">Close modal</span>
                            </button>
                            <div class="p-4 md:p-5">
                              <svg class="w-10 h-10 text-gray-400 dark:text-gray-500 mb-4" aria-hidden="true"
                                xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 20">
                                <path
                                  d="M8 5.625c4.418 0 8-1.063 8-2.375S12.418.875 8 .875 0 1.938 0 3.25s3.582 2.375 8 2.375Zm0 13.5c4.963 0 8-1.538 8-2.375v-4.019c-.052.029-.112.054-.165.082a8.08 8.08 0 0 1-.745.353c-.193.081-.394.158-.6.231l-.189.067c-2.04.628-4.165.936-6.3.911a20.601 20.601 0 0 1-6.3-.911l-.189-.067a10.719 10.719 0 0 1-.852-.34 8.08 8.08 0 0 1-.493-.244c-.053-.028-.113-.053-.165-.082v4.019C0 17.587 3.037 19.125 8 19.125Zm7.09-12.709c-.193.081-.394.158-.6.231l-.189.067a20.6 20.6 0 0 1-6.3.911 20.6 20.6 0 0 1-6.3-.911l-.189-.067a10.719 10.719 0 0 1-.852-.34 8.08 8.08 0 0 1-.493-.244C.112 6.035.052 6.01 0 5.981V10c0 .837 3.037 2.375 8 2.375s8-1.538 8-2.375V5.981c-.052.029-.112.054-.165.082a8.08 8.08 0 0 1-.745.353Z" />
                              </svg>
                              <h3 class="mb-1 text-xl font-bold text-gray-900 dark:text-white">Choose your bidding
                                amount
                              </h3>
                              <p class="text-gray-500 dark:text-gray-400 mb-6">Choosing the lowest amount possible will
                                increase chances of bid acceptance.
                              <p>

                              <form>
                                <div class="relative mb-10">
                                  <input hidden name="bid_id" value="${bid.bidId}" id="bid_id">
                                  <label for="labels-range-input-${bid.bidId}" class="sr-only">Labels range</label>
                                  <input id="labels-range-input-${bid.bidId}" type="range" min="0" max="${bid.budget}"
                                    class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer dark:bg-gray-700 slider"
                                    name="bid_amount">
                                  <span class="text-sm text-gray-500 dark:text-gray-400 absolute start-0 -bottom-6">Min
                                    0</span>

                                  <span class="text-sm text-gray-500 dark:text-gray-400 absolute end-0 -bottom-6">Max
                                    ${bid.budget}</span>
                                </div>

                                <!-- Modal footer -->
                                <div class="flex items-center mt-6 space-x-4 rtl:space-x-reverse">
                                  <button data-modal-hide="progress-modal-${bid.bidId}" type="button" id="${bid.bidId}"
                                    class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 bidNowModalButton">Submit
                                    bid</button>


                                  <button data-modal-hide="progress-modal-${bid.bidId}" type="button"
                                    class="py-2.5 px-5 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-100 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700">Cancel</button>

                                </div>
                              </form>
                            </div>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
        </div>
        <!-- open bids -e -->

        
        <!-- approved Bids -s -->
        <div
          class="w-full p-4 mb-4 bg-white border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700">
          <div class="flex mb-4 justify-center">
            <h5 class="text-4xl font-bold leading-none text-gray-900 dark:text-white">
              Approved Bids
            </h5>
          </div>
          <div class="flow-root">
            <ul role="list" class="divide-gray-200 dark:divide-gray-700">
              <c:forEach var="approvedBids" items="${approvedBids}" varStatus="n">
                
                <li class="m-4">
                  <div class="border rounded-md p-4 flex flex-col justify-center items-center space-y-4">
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Bid Id :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${approvedBids.bidId}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        User Id :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${approvedBids.user.userId}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Issue :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${approvedBids.issue}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Description :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${approvedBids.description}
                      </p>
                    </div>
                    
                    <div>
                      <a href="#">
                        <button type="button"
                          class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                          Contact client
                        </button>
                      </a>
                    </div>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
        </div>
        <!-- approved Bids -e -->

        <!-- applied bids -s -->
        <div
          class="w-full p-4 mb-4 bg-white border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700">
          <div class="flex mb-4 justify-center">
            <h5 class="text-4xl font-bold leading-none text-gray-900 dark:text-white">
              Applied Bids
            </h5>
          </div>
          <div class="flow-root">
            <ul role="list" class="divide-gray-200 dark:divide-gray-700">
              <c:forEach var="appliedBid" items="${appliedBids}" varStatus="n">
                <li class="m-4">
                  <div class="border rounded-md p-4 flex flex-col justify-center items-center space-y-4">
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Bid Id :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${appliedBid.bidId}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        User Id :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${appliedBid.user.userId}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Issue :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${appliedBid.issue}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Description :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${appliedBid.description}
                      </p>
                    </div>
                    <div class="flex md:flex-row flex-col leading-normal">
                      <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                        Budget :
                      </h5>
                      <p class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400">
                        ${appliedBid.budget}
                      </p>
                    </div>
                    <div>
                      <a href="all_applicants.do?bid_id=${appliedBid.bidId}">
                        <button type="button"
                          class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                          Show Applicants
                        </button>
                      </a>
                    </div>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
        </div>
        <!-- applied bids -e -->

      </main>

      <c:import url="/footer.jsp" />

      <script src="static/js/provider_dashboard.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
    </body>

    </html>