<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
  <nav class="bg-gray-900 border-gray-200 dark:bg-gray-900">
    <div class="flex flex-wrap items-center justify-between mx-auto p-4">
      <a
        href="index.do"
        class="flex items-center space-x-3 rtl:space-x-reverse"
      >
        <img
          src="static/media/logos/legal-breeze-logo.png"
          class="h-8"
          alt="Flowbite Logo"
        />
      </a>
      <c:choose>
        <c:when test="${user!=null}"
          ><div class="flex md:order-2">
            <a href="profile.do">
              <img
                class="w-14 h-14 rounded-full ml-3"
                src="static/media/images/signup/user_default.png"
                alt="Default avatar"
                id="proico"
              />
            </a></div
        ></c:when>
        <c:otherwise>
          <div class="invisible flex md:order-2">
            <a href="#">
              <img
                class="w-14 h-14 rounded-full ml-3"
                src="static/media/images/signup/user_default.png"
                alt="Default avatar"
                id="proico"
              />
            </a>
          </div>
        </c:otherwise>
      </c:choose>

      <div
        class="items-center justify-between hidden w-full md:flex md:w-auto md:order-1"
        id="navbar-search"
      >
        <div class="relative mt-3 md:hidden">
          <div
            class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none"
          >
            <svg
              class="w-4 h-4 text-gray-500 dark:text-gray-400"
              aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 20 20"
            >
              <path
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
              />
            </svg>
          </div>
          <input
            type="text"
            id="search-navbar"
            class="block w-full p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
            placeholder="Search..."
          />
        </div>
        <ul
          class="flex flex-col p-4 md:p-0 mt-4 font-medium border border-gray-100 rounded-lg bg-gray-50 md:space-x-8 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700"
        >
          <li>
            <a
              href="index.do"
              class="block py-2 px-3 text-white bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 md:dark:text-blue-500"
              aria-current="page"
              >Home</a
            >
          </li>
          <li></li>
          <li>
            <c:choose>
              <c:when test="${user==null}">
                <a
                  href="signin.do"
                  class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
                  >Signin</a
                >
              </c:when>
              <c:otherwise>
                <li>
                  <a
                    href="logout.do"
                    class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
                    >Logout</a
                  >
                </li>
              </c:otherwise>
            </c:choose>
          </li>
          <li>
            <c:choose>
              <c:when test="${user!=null}">
                <a
                  href="dashboard.jsp"
                  class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 md:dark:hover:text-blue-500 dark:text-white dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
                  >Dashboard</a
                >
              </c:when>
              <c:otherwise>
                <li>
                  <a
                    href="signup.do"
                    class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:hover:text-blue-700 md:p-0 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent dark:border-gray-700"
                    >Signup</a
                  >
                </li>
              </c:otherwise>
            </c:choose>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<script>
  const proico = document.querySelector("#proico");
  proico.addEventListener("mouseover", () => {
    proico.classList.add("fa-beat");
  });
  proico.addEventListener("mouseout", () => {
    proico.classList.remove("fa-beat");
  });
</script>
;
