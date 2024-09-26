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
          All Document Writers
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
          <c:forEach var="docwriterType" items="${docwriterTypes}">
            <li class="me-2" role="presentation">
              <button
                class="inline-block p-4 border-b-2 rounded-t-lg hover:text-gray-600 hover:border-gray-300 dark:hover:text-gray-300"
                id="${docwriterType.typeName}-styled-tab"
                data-tabs-target="#styled-${docwriterType.typeName}"
                type="button"
                role="tab"
                aria-controls="${docwriterType.typeName}"
                aria-selected="false"
              >
                ${docwriterType.typeName}
              </button>
            </li>
          </c:forEach>
        </ul>
      </div>
      <div id="default-styled-tab-content">
        <c:forEach var="docwriterType" items="${docwriterTypes}">
          <div
            class="hidden p-4 rounded-lg bg-gray-50 dark:bg-gray-800"
            id="styled-${docwriterType.typeName}"
            role="tabpanel"
            aria-labelledby="${docwriterType.typeName}-tab"
          >
            <p class="text-sm text-gray-500 dark:text-gray-400">
              <div class="flow-root">
                <ul role="list" class="divide-gray-200 dark:divide-gray-700">
                  <c:forEach var="docwriter" items="${allDocwriters}">
                    <c:if
                      test="${docwriter.providerType.providerTypeId==docwriterType.providerTypeId}"
                    >
                      <li class="py-3 sm:py-4">
                        <a
                          href="#"
                          class="flex md:flex-row flex-col h-[225px] items-center bg-white border border-gray-200 rounded-lg shadow md:w-full hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:hover:bg-gray-700"
                        >
                        <c:choose>
                          <c:when test="${docwriter.profilePic==null}">
                            
                            <img
                              class="object-cover w-full rounded-t-lg h-96 md:h-full md:w-[300px] md:rounded-none md:rounded-s-lg"
                              src="static/media/images/signup/user_default.png" alt="Lawyer Image" />
                          </c:when>
                          <c:otherwise>

                            <img
                              class="object-cover w-full rounded-t-lg h-96 md:h-full md:w-[300px] md:rounded-none md:rounded-s-lg"
                              src="get_profile_pic.do?email=${docwriter.email}&profile_pic=${docwriter.profilePic}" alt="docwriter Image" />
                          </c:otherwise>
                        </c:choose>
                          
                          <div
                            class="flex flex-col justify-center w-[50%] items-center"
                          >
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
                                  <c:out value="${docwriter.name}" />
                                </p>
                              </div>

                              <div class="flex flex-row leading-normal">
                                <h5
                                  class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                                >
                                  Phone :&nbsp;
                                </h5>
                                <p
                                  class="text-2xl font-normal text-gray-700 dark:text-gray-400"
                                >
                                  <c:out value="${docwriter.phone}" />
                                </p>
                              </div>

                              <div class="flex flex-row leading-normal">
                                <h5
                                  class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
                                >
                                  Email :
                                </h5>
                                <p
                                  class="ps-4 text-2xl font-normal text-gray-700 dark:text-gray-400"
                                >
                                  <c:out value="${docwriter.email}" />
                                </p>
                              </div>
                              <div class="flex flex-row leading-normal">
                                <button data-modal-target="crud-modal-${n.count}"
                                data-modal-toggle="crud-modal-${n.count}"
                                class="text-white bg-gradient-to-r from-purple-500 via-purple-600 to-purple-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-purple-300 dark:focus:ring-purple-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
                                type="button">
                                Hire now
                              </button>
                              <!-- Main modal -->
                              <div id="crud-modal-${n.count}" tabindex="-1" aria-hidden="true"
                                class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                <div class="relative p-4 w-full max-w-md max-h-full">
                                  <!-- Modal content -->
                                  <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                    <!-- Modal header -->
                                    <div
                                      class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                                      <h3 class="text-lg font-semibold text-gray-900 dark:text-white">
                                        Enter Case Details
                                      </h3>
                                      <button type="button"
                                        class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                        data-modal-toggle="crud-modal-${n.count}">
                                        <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
                                          fill="none" viewBox="0 0 14 14">
                                          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                        </svg>
                                        <span class="sr-only">Close modal</span>
                                      </button>
                                    </div>
                                    <!-- Modal body -->
                                    <form class="p-4 md:p-5" action="save_case.do">
                                      <div class="grid gap-4 mb-4 grid-cols-2">
                                        <div class="col-span-2">
                                          <label for="issue"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Issue</label>
                                          <input type="text" name="issue" id="issue"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                            placeholder="Subject of the case" required>
                                        </div>
                                        <div class="col-span-2 sm:col-span-1">
                                          <label for="budget"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">budget</label>
                                          <input type="number" name="budget" id="budget"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                            placeholder="$2999" required>
                                        </div>
                                        <div class="col-span-2 sm:col-span-1">
                                          <label for="court"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Court</label>
                                          <select id="court" name="court"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500">
                                            <option selected="" disabled>Select court</option>
                                            <option value="3">District Court</option>
                                            <option value="2">High Court</option>
                                            <option value="1">Supreme Court</option>
                                            <option value="4">Lok Adalat</option>
                                          </select>
                                        </div>
                                        <div class="col-span-2">
                                          <label for="description"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Case
                                            Description</label>
                                          <textarea id="description" rows="4" name="description"
                                            class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                            placeholder="Write case description here"></textarea>
                                        </div>
                                        <div class="hidden">
                                          <input type="number" name="provider_id" value="${docwriter.userId}">
                                        </div>
                                        <div class="col-span-2 sm:col-span-1">
                                          <label for="deadline"
                                            class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">deadline</label>
                                          <input type="date" name="deadline" id="deadline"
                                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                                            placeholder="$2999" required>
                                        </div>
                                      </div>
                                      <button type="submit"
                                        class="text-white inline-flex items-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                        <!-- <svg class="me-1 -ms-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z" clip-rule="evenodd"></path></svg> -->
                                        Hire Lawyer
                                      </button>
                                    </form>
                                  </div>
                                </div>
                              </div>
                              </div>
                            </div>
                          </div>
                        </a>
                      </li>
                    </c:if>
                  </c:forEach>
                </ul>
              </div>
            </p>
          </div>
        </c:forEach>
      </div>
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
