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
      <!--All Bids -->
      <div
        class="border-2 w-full p-4 mb-4 bg-white border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700"
      >
        <div class="flex mb-4 justify-center">
          <div
            class="text-4xl font-bold leading-none text-gray-900 dark:text-white"
          >
            All Bids
          </div>
        </div>
        <div class="flow-root">
          <ul role="list" class="divide-gray-200 dark:divide-gray-700">
            <c:forEach var="bid" items="${allBids}" varStatus="n">
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
                        <div class="cust_tooltip">
                          <button
                            data-popover-target="loggedIn-popover-${n.count}-"
                            data-popover-trigger="click"
                            type="button"
                            class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
                          >
                            View Applicants
                          </button>

                          <div
                            data-popover
                            id="loggedIn-popover-${n.count}-"
                            role="tooltip"
                            class="absolute z-10 invisible inline-block w-64 text-sm text-gray-500 transition-opacity duration-300 bg-white border border-gray-200 rounded-lg shadow-sm opacity-0 dark:text-gray-400 dark:border-gray-600 dark:bg-gray-800"
                          >
                            <div
                              class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700"
                            >
                              <h3
                                class="font-semibold text-gray-900 dark:text-white"
                              >
                                <a href="dashboard.do"> Go to DashBoard </a>
                              </h3>
                            </div>
                            <div class="px-3 py-2">
                              <p>
                                Open <a href="dashboard.do"> Dashboard</a> to
                                view applicants to your bid
                              </p>
                            </div>
                            <div data-popper-arrow></div>
                          </div>
                        </div>
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
                            <a href="signin.jsp">
                              <div
                                class="px-3 py-2 bg-gray-100 border-b border-gray-200 rounded-t-lg dark:border-gray-600 dark:bg-gray-700"
                              >
                                <h3
                                  class="font-semibold text-gray-900 dark:text-white"
                                >
                                  Not logged in
                                </h3>
                              </div>
                            </a>
                            <div class="px-3 py-2">
                              <p>
                                You need to <a href="signin.jsp">login</a> to
                                access this feature
                              </p>
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
      <!--All Bids -->
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
