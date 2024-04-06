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
      <div class="flex flex-row space-x-6">
        <!-- First div -->
        <div
          class="bg-cyan-900 rounded-3xl md:mt-16 basis-1/4 flex-auto flex-col border-2 h-[100%]"
        >
          <!-- Lawyer Dropdown -->
          <div class="text-center pt-4 mt-2">
            <button
              id="dropdownSearchButton"
              data-dropdown-toggle="dropdownSearch1"
              data-dropdown-placement="bottom"
              class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
              type="button"
            >
              Lawyers
              <svg
                class="w-2.5 h-2.5 ms-3"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 10 6"
              >
                <path
                  stroke="currentColor"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="m1 1 4 4 4-4"
                />
              </svg>
            </button>

            <!-- Dropdown menu -->
            <div
              id="dropdownSearch1"
              class="z-10 hidden bg-white rounded-lg shadow w-60 dark:bg-gray-700"
            >
              <div class="p-3">
                <label for="input-group-search" class="sr-only">Search</label>
                <div class="relative">
                  <div
                    class="absolute inset-y-0 rtl:inset-r-0 start-0 flex items-center ps-3 pointer-events-none"
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
                    id="input-group-search"
                    class="block w-full p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    placeholder="Search Lawyer types"
                  />
                </div>
              </div>
              <ul
                class="px-3 pb-3 overflow-y-auto text-sm text-gray-700 dark:text-gray-200"
                aria-labelledby="dropdownSearchButton"
              >
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item1" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item1"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      ><a href="lawyers.do"> Criminal Lawyers</a></label
                    >
                  </div>
                </li>
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item 2" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item 2"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >Revenue Lawyers</label
                    >
                  </div>
                </li>
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item 3" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item 3"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >Civil Lawyers</label
                    >
                  </div>
                </li>
              </ul>
            </div>
          </div>

          <!-- Notary Dropdown -->
          <div class="text-center pt-4 mt-2">
            <button
              id="dropdownSearchButton"
              data-dropdown-toggle="dropdownSearch2"
              data-dropdown-placement="bottom"
              class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
              type="button"
            >
              Notaries
              <svg
                class="w-2.5 h-2.5 ms-3"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 10 6"
              >
                <path
                  stroke="currentColor"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="m1 1 4 4 4-4"
                />
              </svg>
            </button>

            <!-- Dropdown menu -->
            <div
              id="dropdownSearch2"
              class="z-10 hidden bg-white rounded-lg shadow w-60 dark:bg-gray-700"
            >
              <div class="p-3">
                <label for="input-group-search" class="sr-only">Search</label>
                <div class="relative">
                  <div
                    class="absolute inset-y-0 rtl:inset-r-0 start-0 flex items-center ps-3 pointer-events-none"
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
                    id="input-group-search"
                    class="block w-full p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    placeholder="Search Lawyer types"
                  />
                </div>
              </div>
              <ul
                class="px-3 pb-3 overflow-y-auto text-sm text-gray-700 dark:text-gray-200"
                aria-labelledby="dropdownSearchButton"
              >
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item1" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item1"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >Acknowledgement</label
                    >
                  </div>
                </li>
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item 2" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item 2"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >Jurats</label
                    >
                  </div>
                </li>
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item 3" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item 3"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >Copy Certification</label
                    >
                  </div>
                </li>
              </ul>
            </div>
          </div>

          <!-- Doc Writer Dropdown -->
          <div class="text-center pt-4 mt-2">
            <button
              id="dropdownSearchButton"
              data-dropdown-toggle="dropdownSearch3"
              data-dropdown-placement="bottom"
              class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
              type="button"
            >
              Doc Writers
              <svg
                class="w-2.5 h-2.5 ms-3"
                aria-hidden="true"
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 10 6"
              >
                <path
                  stroke="currentColor"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="m1 1 4 4 4-4"
                />
              </svg>
            </button>

            <!-- Dropdown menu -->
            <div
              id="dropdownSearch3"
              class="z-10 hidden bg-white rounded-lg shadow w-60 dark:bg-gray-700"
            >
              <div class="p-3">
                <label for="input-group-search" class="sr-only">Search</label>
                <div class="relative">
                  <div
                    class="absolute inset-y-0 rtl:inset-r-0 start-0 flex items-center ps-3 pointer-events-none"
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
                    id="input-group-search"
                    class="block w-full p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                    placeholder="Search Lawyer types"
                  />
                </div>
              </div>
              <ul
                class="px-3 pb-3 overflow-y-auto text-sm text-gray-700 dark:text-gray-200"
                aria-labelledby="dropdownSearchButton"
              >
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item1" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item1"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >Process Writers</label
                    >
                  </div>
                </li>
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item 2" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item 2"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >IT Writers</label
                    >
                  </div>
                </li>
                <li>
                  <div
                    class="flex items-center ps-2 rounded hover:bg-gray-100 dark:hover:bg-gray-600"
                  >
                    <input id="item 3" type="radio" value="" class="w-4 h-4" />
                    <label
                      for="item 3"
                      class="w-full py-2 ms-2 text-sm font-medium text-gray-900 rounded dark:text-gray-300"
                      >Training Writers</label
                    >
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <!-- Second div -->
        <div
          class="bg-cyan-900 rounded-3xl md:mt-16 mt-5 text-center basis-1/2 border-2 flex flex-col"
        >
          <!-- ############################ Modal -s ############################## -->
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
                <div
                  class="relative bg-white rounded-lg shadow dark:bg-cyan-900"
                >
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
                    <form class="space-y-4" action="save_bid_details.do" method="post">
                      <!-- <div>
                        <label
                          for="name"
                          class="text-start ps-2 block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                          >Name</label
                        >
                        <input
                          type="text"
                          name="name"
                          id="name"
                          class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                          placeholder="Sunil Kumar Batre"
                          required
                        />
                      </div> -->
                      <!-- <div>
                        <label
                          for="email"
                          class="text-start ps-2 block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                          >Email</label
                        >
                        <input
                          type="email"
                          name="email"
                          id="email"
                          class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"
                          placeholder="name@company.com"
                          required
                        />
                      </div> -->
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
          <!-- ############################ Modal -e ############################## -->

          <!-- ############################ Bidding -s ############################## -->

          <div
            class="mx-6 mb-3 p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700"
          >
            <a href="#">
              <h5
                class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white"
              >
                "Smith v. Jones: Case No. 12345 - In the Circuit Court of
                Example County, State of Fictionland"
              </h5>
            </a>
            <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">
              In the matter of Smith v. Jones, plaintiff John Smith alleges that
              defendant Sarah Jones breached a contract for the sale of a
              vintage automobile. Mr. Smith contends that Ms. Jones failed to
              deliver the vehicle within the agreed-upon timeframe and seeks
              damages for breach of contract and associated costs incurred. Ms.
              Jones disputes these claims, asserting that unforeseen
              circumstances beyond her control delayed the delivery and that Mr.
              Smith's demands are unreasonable.
            </p>
            <a
              href="all_applicants.do"
              class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            >
              Show Applicants
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
          <div class="text-end p-4">
            <a
              href="bids.do"
              class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            >
              View all bids
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
          <!-- ############################ Bidding -e ############################## -->
        </div>

        <!-- Third div -->
        <div
          class="bg-cyan-900 rounded-3xl mt-16 p-8 basis-1/4 h-full border-2"
        >
          <h1>Chat Section</h1>
        </div>
      </div>
    </main>

    <c:import url="/footer.jsp" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
  </body>
</html>
