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
      <div
        class="w-full p-4 mb-4 bg-white border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700"
      >
        <div class="flex mb-4 justify-center">
          <h5
            class="text-4xl font-bold leading-none text-gray-900 dark:text-white"
          >
            All Applicants
          </h5>
        </div>
        <div class="flow-root border-2 p-4 space-y-4">
          <div
            class="flex flex-col md:flex-row items-center bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700"
          >
            <div class="border-2">
              <img
                class="object-cover w-full rounded-t-lg h-96 md:h-auto md:w-48 md:rounded-none md:rounded-s-lg"
                src="static/media/images/download.jpg"
                alt=""
              />
            </div>

            <div
              class="flex flex-col w-full border-2 justify-between leading-normal space-x-2"
            >
              <div class="flex flex-row">
                <h5
                  class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                >
                  Name : &nbsp;
                </h5>
                <p
                  class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                >
                  Aryan Agrawal
                </p>
              </div>
              <div class="flex flex-row">
                <h5
                  class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                >
                  Name : &nbsp;
                </h5>
                <p
                  class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                >
                  Aryan Agrawal
                </p>
              </div>
              <div class="flex flex-row">
                <h5
                  class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                >
                  Name : &nbsp;
                </h5>
                <p
                  class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                >
                  Aryan Agrawal
                </p>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
