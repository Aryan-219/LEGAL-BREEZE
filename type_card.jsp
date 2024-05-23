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
      <div class="flow-root">
        <ul role="list" class="divide-gray-200 dark:divide-gray-700">
          <li class="py-3 sm:py-4">
            <a
              href="#"
              class="flex md:flex-row flex-col h-[225px] items-center bg-white border border-gray-200 rounded-lg shadow md:w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700"
            >
              <img
                class="object-cover w-full rounded-t-lg h-96 md:h-full md:w-[300px] md:rounded-none md:rounded-s-lg"
                src="static/media/images/download.jpg"
                alt="Lawyer Image"
              />
              <div class="flex flex-col justify-center w-[50%] items-center">
                <div class="space-y-2">
                  <div class="flex flex-row leading-normal">
                    <h5
                      class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                    >
                      Name :
                    </h5>
                    <p
                      class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                    >
                      <c:out value="${lawyer.name}" />
                    </p>
                  </div>
      
                  <div class="flex flex-row leading-normal">
                    <h5
                      class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                    >
                      Experience :&nbsp;
                    </h5>
                    <p class="text-2xl font-normal text-gray-700 dark:text-gray-400">
                      <c:out value="${lawyer.experience}" /> years
                    </p>
                  </div>
      
                  <div class="flex flex-row leading-normal">
                    <h5
                      class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                    >
                      Phone :
                    </h5>
                    <p
                      class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                    >
                      <c:out value="${lawyer.phone}" />
                    </p>
                  </div>
                  <div class="flex flex-row leading-normal">
                    <button
                      type="button"
                      class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
                    >
                      HIRE
                    </button>
                  </div>
                </div>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>


