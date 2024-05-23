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
      <div class="flex my-4 justify-center">
        <h5
          class="text-4xl font-bold leading-none text-gray-900 dark:text-white"
        >
          All Lawyers
        </h5>
      </div>

      <div class="mb-4 border-b border-gray-200 dark:border-gray-700">
        <ul
          class="flex flex-wrap -mb-px text-sm font-medium text-center"
          id="default-styled-tab"
          data-tabs-toggle="#default-styled-tab-content"
          data-tabs-active-classes="text-purple-600 hover:text-purple-600 dark:text-purple-500 dark:hover:text-purple-500 border-purple-600 dark:border-purple-500"
          data-tabs-inactive-classes="dark:border-transparent text-gray-500 hover:text-gray-600 dark:text-gray-400 border-gray-100 hover:border-gray-300 dark:border-gray-700 dark:hover:text-gray-300"
          role="tablist"
        >
        <c:forEach var="lawyer" items="${lawyerTypes}">
          <li class="me-2" role="presentation">
            <button
              class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300"
              id="${lawyer.typeName}-styled-tab"
              data-tabs-target="#styled-${lawyer.typeName}"
              type="button"
              role="tab"
              aria-controls="${lawyer.typeName}"
              aria-selected="false"
            >
            ${lawyer.typeName}
            </button>
          </li>
          </c:forEach>
        </ul>
      </div>
      <div id="default-styled-tab-content">
        <c:forEach var="lawyer" items="${lawyerTypes}">
        <div
          class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800"
          id="styled-${lawyer.typeName}"
          role="tabpanel"
          aria-labelledby="${lawyer.typeName}-tab"
        >
          <p class="text-sm text-gray-500 dark:text-gray-400">
            
            <strong class="font-medium text-gray-800 dark:text-white"
              >${lawyer.typeName}</strong
            >. 
          </p>
        </div>
    </c:forEach>
      </div>
</main>

    <!-- <c:import url="/footer.jsp" /> -->

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
