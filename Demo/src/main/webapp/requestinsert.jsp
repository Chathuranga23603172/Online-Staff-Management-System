<%@ include file="./partiels/header.jsp"%>

<main class="flex-grow flex items-center justify-center p-6 bg-gray-100">
  <div class="bg-blue-100 p-8 rounded-xl shadow-md w-full max-w-lg">
    <h2 class="text-2xl font-bold text-blue-900 mb-6 text-center">Leave Request Form</h2>
    <form action="leaveinsertServlet" method="post" class="space-y-4">
      <div>
        <label for="name" class="block font-medium text-blue-800">Name:</label>
        <input type="text" name="name" required class="w-full mt-1 p-2 border border-blue-300 rounded" />
      </div>

      <div>
        <label for="subject" class="block font-medium text-blue-800">Subject:</label>
        <input type="text" name="subject" required class="w-full mt-1 p-2 border border-blue-300 rounded" />
      </div>

      <div>
        <label for="phoneNo" class="block font-medium text-blue-800">Phone No:</label>
        <input type="tel" name="phoneNo" required class="w-full mt-1 p-2 border border-blue-300 rounded" />
      </div>

      <div>
        <label for="requests" class="block font-medium text-blue-800">Reason:</label>
        <textarea name="requests" required class="w-full mt-1 p-2 border border-blue-300 rounded"></textarea>
      </div>

      <div class="text-center">
        <input type="submit" value="Submit" class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded cursor-pointer" />
      </div>
    </form>
  </div>
</main>

<%@ include file="./partiels/footer.jsp"%>
