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

  <body class="bg-gray-900 text-white">
    <c:import url="/header.jsp" />

    <div class="container mx-auto p-6">
      <div class="max-w-lg mx-auto bg-gray-800 rounded-lg shadow-lg p-5">
        <h2 class="text-2xl font-bold mb-4">Profile</h2>
        <div class="flex items-center mb-6">
          <img 
            src="static/media/images/signup/user_default.png"
            alt="Profile Picture"
            class="h-16 w-16 rounded-full border-2 border-gray-700"
          />
          <div class="ml-4">
            <h3 class="text-xl font-semibold">${user.name}</h3>
            <p class="text-gray-400">${user.email}</p>
          </div>
        </div>
        <div class="mb-4">
          <h4 class="font-bold">Joined On</h4>
          <c:choose >
            <c:when test="${user!= null}">
              ${user.joinedOn}
            </c:when>
            <c:otherwise>
              No data available
            </c:otherwise>
          </c:choose>
          <!-- <p class="text-gray-400">
            Web developer with a passion for creating beautiful and functional
            user experiences.
          </p> -->
        </div>
        <div class="mb-4">
          <h4 class="font-bold">Contact Information</h4>
          <p class="text-gray-400">Email: ${user.email}</p>
          <p class="text-gray-400">Phone: ${user.phone}</p>
        </div>
        <div class="mb-4">
          <h4 class="font-bold">Social Links</h4>
          <div class="flex space-x-4">
            <a href='${user.twitter}' class="text-blue-400 hover:text-blue-300">Twitter</a>
            <a href="${user.linkedin}" class="text-blue-600 hover:text-blue-500">LinkedIn</a>
            <a href="${user.github}" class="text-red-600 hover:text-red-500">GitHub</a>
          </div>
        </div>
        <div>
          <!-- <button
            class="bg-blue-600 hover:bg-blue-500 text-white font-bold py-2 px-4 rounded"
          >
            Edit Profile
          </button> -->

          <!-- Modal toggle -->
          <button
            data-modal-target="authentication-modal"
            data-modal-toggle="authentication-modal"
            class="bg-blue-600 hover:bg-blue-500 text-white font-bold py-2 px-4 rounded"
            type="button"
          >
            Edit links
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
              <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                <!-- Modal header -->
                <div
                  class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600"
                >
                  <h3
                    class="text-xl font-semibold text-gray-900 dark:text-white"
                  >
                    Enter link details
                  </h3>
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
                  <form class="space-y-4" action="save_link_details.do">
                    <!-- <div>
                      <label
                        for="bio"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Bio</label
                      >
                      <input
                        type="text"
                        name="bio"
                        id="bio"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        placeholder="Hello everyone! My name is Aryan agrawal"
                        required
                      />
                    </div> -->
                    <div>
                      <label
                        for="twitter"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your twitter</label
                      >
                      <input
                        type="text"
                        name="twitter"
                        id="twitter"
                        placeholder="http://twitter.com"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        
                      />
                    </div>
                    <div>
                      <label
                        for="linkedin"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your linkedin</label
                      >
                      <input
                        type="text"
                        name="linkedin"
                        id="linkedin"
                        placeholder="http://linkedin.com"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        
                      />
                    </div>
                    <div>
                      <label
                        for="github"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your github</label
                      >
                      <input
                        type="text"
                        name="github"
                        id="github"
                        placeholder="http://github.com"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                        
                      />
                    </div>
                    <!-- <div class="flex justify-between">
                      <div class="flex items-start">
                        <div class="flex items-center h-5">
                          <input
                            id="remember"
                            type="checkbox"
                            value=""
                            class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-600 dark:border-gray-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800"
                            required
                          />
                        </div>
                        <label
                          for="remember"
                          class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300"
                          >Remember me</label
                        >
                      </div>
                      <a
                        href="#"
                        class="text-sm text-blue-700 hover:underline dark:text-blue-500"
                        >Lost Password?</a
                      >
                    </div> -->
                    <button
                      type="submit"
                      class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                    >
                      Save details
                    </button>
                    <!-- <div
                      class="text-sm font-medium text-gray-500 dark:text-gray-300"
                    >
                      Not registered?
                      <a
                        href="#"
                        class="text-blue-700 hover:underline dark:text-blue-500"
                        >Create account</a
                      >
                    </div> -->
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
