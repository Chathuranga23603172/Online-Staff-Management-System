<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlueHorizon</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">
    <!-- Header Navigation Bar -->
    <header class="bg-white shadow-md">
        <div class="container mx-auto px-6 py-4 flex items-center justify-between">
            <!-- Logo -->
            <h2 class="text-xl font-bold text-blue flex items-center gap-2">
                <i class="fas fa-graduation-cap text-blue-500"></i> BlueHorizon College
            </h2>

            <!-- Search Bar -->
            <div class="hidden md:flex items-center border rounded-lg overflow-hidden w-1/3">
                <input type="text" class="w-full px-4 py-2 outline-none" placeholder="Search">
                <button class="bg-blue-500 px-4 py-2 text-white">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <!-- Navigation Links -->
            <nav class="hidden md:flex space-x-6 text-gray-700">
                <a href="#" class="hover:text-blue-500">Home</a>
                <a href="requestinsert.jsp" class="hover:text-blue-500">Leave Request</a>
                <a href="DepartmentDisplay.jsp" class="hover:text-blue-500">Department</a>
                <a href="#" class="hover:text-blue-500">Contact</a>
                <a href="#" class="hover:text-blue-500">About</a>
            </nav>

            <!-- User Icon -->
            <div class="flex items-center space-x-4">
                <a href="ProfileServlet" class="text-gray-700 hover:text-blue-500">
                    <i class="far fa-user text-xl"></i>
                </a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main class="flex-grow max-w-7xl mx-auto px-6 py-10">
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-3xl font-bold text-gray-800 flex items-center">
                <i class="fa-solid fa-building-columns mr-2 text-blue-600"></i>Department List
            </h2>
        </div>

        <!-- Table -->
        <div class="bg-white shadow-md rounded-xl overflow-x-auto">
            <table class="min-w-[1200px] text-sm text-left table-auto w-full">
                <thead class="bg-blue-600 text-white uppercase text-xs">
                    <tr>
                        <th class="px-6 py-4"><i class="fa-solid fa-id-badge mr-1"></i>ID</th>
                        <th class="px-6 py-4"><i class="fa-solid fa-building mr-1"></i>Department Name</th>
                        <th class="px-6 py-4"><i class="fa-solid fa-phone mr-1"></i>Contact</th>
                        <th class="px-6 py-4"><i class="fa-solid fa-user-tie mr-1"></i>Head</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    <c:forEach var="faculty" items="${allfaculty}">
                        <tr class="hover:bg-gray-50 transition">
                            <td class="px-6 py-4 font-medium">${faculty.id}</td>
                            <td class="px-6 py-4">${faculty.facultyname}</td>
                            <td class="px-6 py-4">${faculty.contact}</td>
                            <td class="px-6 py-4">${faculty.name}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>

    <!-- Footer -->
   <footer class="bg-gray-900 text-gray-300 pt-10 pb-6">
  <div class="max-w-7xl mx-auto px-6 md:px-12 grid grid-cols-1 md:grid-cols-4 gap-8">

    <!-- Branding -->
    <div>
      <h2 class="text-xl font-bold text-white flex items-center gap-2">
        <i class="fas fa-graduation-cap text-blue-500"></i> BlueHorizon College
      </h2>
      <p class="mt-2 text-sm text-gray-400">Efficiently managing academic and non-academic staff with smart tools.</p>
    </div>

    <!-- About -->
    <div>
      <h3 class="text-white font-semibold mb-3">About</h3>
      <ul class="space-y-2 text-sm">
        <li><a href="#" class="hover:text-white">Our Mission</a></li>
        <li><a href="#" class="hover:text-white">Principal's Message</a></li>
        <li><a href="#" class="hover:text-white">College History</a></li>
        <li><a href="#" class="hover:text-white">Contact Us</a></li>
      </ul>
    </div>

    <!-- Staff Services -->
    <div>
      <h3 class="text-white font-semibold mb-3">Staff Portal</h3>
      <ul class="space-y-2 text-sm">
        <li><a href="#" class="hover:text-white">Login</a></li>
        <li><a href="#" class="hover:text-white">Staff Directory</a></li>
        <li><a href="#" class="hover:text-white">Leave Requests</a></li>
        <li><a href="#" class="hover:text-white">Payroll Info</a></li>
      </ul>
    </div>

    <!-- Social & Credits -->
    <div>
      <h3 class="text-white font-semibold mb-3">Connect</h3>
      <div class="flex gap-4 text-lg">
        <a href="#" class="hover:text-blue-500"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="hover:text-blue-400"><i class="fab fa-twitter"></i></a>
        <a href="#" class="hover:text-pink-500"><i class="fab fa-instagram"></i></a>
        <a href="#" class="hover:text-red-500"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
  </div>

  <!-- Bottom -->
  <div class="border-t border-gray-700 mt-8 pt-4 text-center text-sm text-gray-500">
    © 2025 BlueHorizon College. All rights reserved. Designed & Developed by <a href="#" class="text-blue-400 hover:underline">Nirmal Chathuranga</a>
  </div>
</footer>