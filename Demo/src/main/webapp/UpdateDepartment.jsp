<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Department</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="flex flex-col min-h-screen bg-gray-100 text-gray-800">

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String facultyname = request.getParameter("facultyname");
%>

  <!-- Header -->
  <header class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
      <div class="flex items-center gap-3">
        <i class="fas fa-graduation-cap text-blue-600 text-3xl"></i>
        <span class="text-2xl font-bold text-blue-800 tracking-wide">BlueHorizon College</span>
      </div>
      <nav class="space-x-6 text-gray-700 font-semibold text-base">
        <a href="AdminDashboard.jsp" class="hover:text-blue-600 transition"><i class="fas fa-gauge-high mr-1"></i>Dashboard</a>
        <a href="UserGetAll" class="hover:text-blue-600 transition"><i class="fas fa-user-group mr-1"></i>Staff</a>
        <a href="DepartmentGetAll" class="hover:text-blue-600 transition"><i class="fas fa-building mr-1"></i>Departments</a>
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-gears mr-1"></i>Settings</a>
        <a href="logout.jsp" class="text-red-500 hover:text-red-600 transition"><i class="fas fa-right-from-bracket mr-1"></i>Logout</a>
      </nav>
    </div>
  </header>

  <!-- Main Content -->
  <section class="w-full max-w-5xl mx-auto px-6 py-10">
    <div class="bg-white shadow-lg rounded-xl p-8">
      <h2 class="text-2xl font-bold text-blue-700 mb-6 flex items-center gap-2">
        <i class="fas fa-pen-to-square"></i> Update Department
      </h2>

      <form action="DepartmentUpdateServlet" method="post" class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <!-- Hidden ID -->
        <input type="hidden" name="id" value="<%=id%>" readonly/>

        
        <div>
          <label class="block text-sm font-medium text-gray-700">Head of Department</label>
          <input type="tel" name="name" value="<%=name%>" required
                 class="w-full mt-1 rounded-md border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500"
                 value="${faculty.name}">
        </div>

        
        <div>
          <label class="block text-sm font-medium text-gray-700">Contact-Number</label>
          <input type="text" name="subject" value="<%=subject%>" required
                 class="w-full mt-1 rounded-md border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500"
                 value="${faculty.subject}">
        </div>

        
        <div class="md:col-span-2">
          <label class="block text-sm font-medium text-gray-700">Department Name</label>
          <input type="text" name="facultyname" value="<%=facultyname%>" required
                 class="w-full mt-1 rounded-md border-gray-300 shadow-sm focus:ring-blue-500 focus:border-blue-500"
                 value="${faculty.facultyname}">
        </div>

        <div class="md:col-span-2 flex justify-end">
          <button type="submit"
                  class="bg-yellow-500 hover:bg-yellow-600 text-white px-6 py-2 rounded-full shadow">
            <i class="fas fa-check-circle mr-2"></i> Update Department
          </button>
        </div>
      </form>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-white border-t mt-auto">
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
