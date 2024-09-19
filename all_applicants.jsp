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
      <c:choose>
        <c:when test="${applicants.isEmpty()}">
          <!-- <h1>No applicants found.</h1> -->
          <h1 class="text-center text-gray-400 text-5xl m-4 p-4">Sorry but, you don't have any applicants yet ... </h1>
        </c:when>
        <c:otherwise>
          <c:forEach var="applicant" items="${applicants}" varStatus="n">
            <div class="py-3 sm:py-4">
              <div
                class="flex flex-col h-auto items-center bg-white border border-gray-200 rounded-lg shadow md:w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700 space-y-2 p-5"
              >
                <div class="flex md:flex-row flex-col leading-normal">
                  <h5
                    class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                  >
                    Name : &nbsp;
                  </h5>
                  <p
                    class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                  >
                    ${applicant.user.name}
                  </p>
                </div>
                <div class="flex md:flex-row flex-col leading-normal">
                  <h5
                    class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                  >
                    Bidding amount : &nbsp;
                  </h5>
                  <p
                    class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                  >
                    ${applicant.bidAmount}
                  </p>
                </div>

                <div class="flex items-center justify-center">
                  <a
                    href="select_bid_applicant.do?applicant_id=${applicant.user.userId}&bid_id=${bid_id}"
                    class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                  >
                    Hire
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
          </c:forEach>
        </c:otherwise>
      </c:choose>
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
