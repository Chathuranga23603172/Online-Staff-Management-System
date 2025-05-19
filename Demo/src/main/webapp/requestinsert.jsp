<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<head>
<body class="bg-gray-100 min-h-screen flex flex-col">
  <!-- Centered and styled Leave Request Form -->
  <main class="flex-grow flex items-center justify-center p-6">
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
</body>
</html>