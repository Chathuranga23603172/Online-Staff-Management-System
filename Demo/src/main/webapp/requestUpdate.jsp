<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Leave Request - BlueHorizon College</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100 text-gray-800 min-h-screen flex flex-col">

<!-- Header -->
  <header class="bg-white shadow-lg bg-opacity-90">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
      <div class="flex items-center gap-3">
        <i class="fas fa-graduation-cap text-blue-600 text-3xl"></i>
        <span class="text-2xl font-bold text-blue-800 tracking-wide">BlueHorizon College</span>
      </div>
      <nav class="space-x-6 text-gray-700 font-semibold text-base">
        <a href="AdminDashboard.jsp" class="hover:text-blue-600 transition"><i class="fas fa-gauge-high mr-1"></i>Dashboard</a>
        <a href="UserGetAll" class="hover:text-blue-600 transition"><i class="fas fa-user-group mr-1"></i>Staff</a>
        <a href="DepartmentGetAll" class="hover:text-blue-600 transition"><i class="fas fa-building mr-1"></i>Departments</a>
        <a href="leaveGetAllServlet" class="hover:text-blue-600 transition"><i class="fa-solid fa-calendar-check mr-1"></i>Leave Requests</a>
        <a href="BranchGetAll" class="hover:text-blue-600 transition"><i class="fa-solid fa-envelope-open-text mr-1"></i>Branches</a>
        <a href="AdminLogoutServlet" class="text-red-500 hover:text-red-600 transition"><i class="fas fa-right-from-bracket mr-1"></i>Logout</a>
      </nav>
    </div>
  </header>
<%
  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String subject = request.getParameter("subject");
  String phoneNo = request.getParameter("phoneNo");
  String requests = request.getParameter("requests");
%>

<!-- Form Container -->
<main class="flex-grow flex items-center justify-center py-10">
  <div class="bg-white p-8 rounded-xl shadow-md w-full max-w-xl border border-blue-200">
    <h2 class="text-3xl font-bold text-blue-700 mb-6 text-center"><i class="fa-solid fa-pen-to-square mr-2"></i>Update Leave Request</h2>

    <form action="leaveUpdateServlet" method="post" class="space-y-5">
      <div>
        <label class="block font-medium text-blue-800">ID:</label>
        <input type="text" name="id" value="<%=id%>" readonly
               class="w-full mt-1 p-3 border border-gray-300 rounded bg-gray-100 cursor-not-allowed" />
      </div>

      <div>
        <label class="block font-medium text-blue-800">Name:</label>
        <input type="text" name="name" value="<%=name%>" required
               class="w-full mt-1 p-3 border border-gray-300 rounded" />
      </div>

      <div>
        <label class="block font-medium text-blue-800">Subject:</label>
        <input type="text" name="subject" value="<%=subject%>" required
               class="w-full mt-1 p-3 border border-gray-300 rounded" />
      </div>

      <div>
        <label class="block font-medium text-blue-800">Phone No:</label>
        <input type="tel" name="phoneNo" value="<%=phoneNo%>" required
               class="w-full mt-1 p-3 border border-gray-300 rounded" />
      </div>

      <div>
        <label class="block font-medium text-blue-800">Request:</label>
        <input type="text" name="requests" value="<%=requests%>" required
               class="w-full mt-1 p-3 border border-gray-300 rounded" />
      </div>

      <div class="text-center">
        <button type="submit"
                class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded transition">
          <i class="fas fa-paper-plane mr-1"></i>Submit
        </button>
      </div>
    </form>
  </div>
</main>

<!-- Footer -->
<footer class="bg-white border-t">
  <div class="max-w-7xl mx-auto px-6 py-8 flex flex-col md:flex-row justify-between items-center text-sm text-gray-500">
    <div class="flex items-center gap-2 mb-4 md:mb-0">
      <i class="fas fa-shield-halved text-blue-600 text-lg"></i>
      <span>&copy; 2025 BlueHorizon College. All rights reserved.</span>
    </div>
    <div class="flex space-x-4">
      <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-circle-info mr-1"></i>About</a>
      <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-lock-keyhole mr-1"></i>Privacy Policy</a>
      <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-envelope-open-text mr-1"></i>Contact</a>
    </div>
  </div>
</footer>

</body>
</html>
