<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
  <meta charset="UTF-8">
  <title>Add Department</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<head>
    <meta charset="UTF-8">
    <title>Departments - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100 text-gray-800 min-h-screen flex flex-col">

<!-- Header -->
<header class="bg-white shadow-md">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
        <div class="flex items-center gap-3">
            <i class="fa-solid fa-graduation-cap text-blue-600 text-3xl"></i>
            <span class="text-2xl font-bold text-blue-800">BlueHorizon College</span>
        </div>
        <nav class="space-x-6 text-gray-700 font-medium">
            <a href="AdminDashboard.jsp" class="hover:text-blue-600 transition">
                <i class="fas fa-gauge-high mr-1"></i>Dashboard
            </a>
            <a href="UserGetAll" class="hover:text-blue-600 transition">
                <i class="fa-solid fa-users mr-1"></i>Staff
            </a>
            <a href="DepartmentGetAll" class="text-blue-600 font-semibold">
                <i class="fa-solid fa-building-columns mr-1"></i>Departments
            </a>
           <a href="leaveGetAllServlet" class="hover:text-blue-600 transition">
    <i class="fa-solid fa-calendar-check mr-1"></i>Leave Requests
         </a>

           
            <a href="DepLogout" class="text-red-500 hover:text-red-600 transition">
                <i class="fa-solid fa-arrow-right-from-bracket mr-1"></i>Logout
            </a>
        </nav>
    </div>
</header>
<head>
  <meta charset="UTF-8">
  <title>Request Details</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">

  <!-- Main content area -->
  <main class="flex-grow flex items-center justify-center p-6">
    <div class="w-full max-w-6xl bg-blue-100 p-6 rounded-xl shadow-md">
      <h2 class="text-2xl font-bold text-blue-900 mb-6 text-center">Information Table</h2>

      <table class="min-w-full border border-blue-300 bg-white rounded-md overflow-hidden text-sm">
        <thead class="bg-blue-200 text-blue-900">
          <tr>
            <th class="px-4 py-2 border border-blue-300">ID</th>
            <th class="px-4 py-2 border border-blue-300">Name</th>
            <th class="px-4 py-2 border border-blue-300">Subject</th>
            <th class="px-4 py-2 border border-blue-300">Phone No</th>
            <th class="px-4 py-2 border border-blue-300">Requests</th>
            <th class="px-4 py-2 border border-blue-300">Action</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="requestss" items="${allrequests}">
            <tr class="hover:bg-blue-50">
              <td class="px-4 py-2 border border-blue-200">${requestss.id}</td>
              <td class="px-4 py-2 border border-blue-200">${requestss.name}</td>
              <td class="px-4 py-2 border border-blue-200">${requestss.subject}</td>
              <td class="px-4 py-2 border border-blue-200">${requestss.phoneNo}</td>
              <td class="px-4 py-2 border border-blue-200">${requestss.requests}</td>
              <td class="px-4 py-2 border border-blue-200 flex flex-col md:flex-row gap-2">
                <a href="requestUpdate.jsp?id=${requestss.id}&name=${requestss.name}&subject=${requestss.subject}&phoneNo=${requestss.phoneNo}&requests=${requestss.requests}">
                  <button class="bg-yellow-400 hover:bg-yellow-500 text-white px-3 py-1 rounded">Update</button>
                </a>
                <form action="leaveDeleteServlet" method="post">
                  <input type="hidden" name="id" value="${requestss.id}" />
                  <button type="submit" class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded">Delete</button>
                </form>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </main>

</body>

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
</html>