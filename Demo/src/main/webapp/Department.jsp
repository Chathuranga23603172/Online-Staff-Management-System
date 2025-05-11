<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Departments</title>
<script src="https://cdn.tailwindcss.com"></script>
<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="flex flex-col min-h-screen bg-gray-100 text-gray-800">
  <header class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
      <div class="flex items-center gap-3">
        <i class="fas fa-graduation-cap text-blue-600 text-3xl"></i>
        <span class="text-2xl font-bold text-blue-800 tracking-wide">BlueHorizon College</span>
      </div>
      <nav class="space-x-6 text-gray-700 font-semibold text-base">
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-gauge-high mr-1"></i>Dashboard</a>
        <a href="UserGetAll" class="hover:text-blue-600 transition"><i class="fas fa-user-group mr-1"></i>Staff</a>
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-user-lock mr-1"></i>Admin</a>
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-gears mr-1"></i>Settings</a>
        <a href="AdminLogoutServlet" class="text-red-500 hover:text-red-600 transition"><i class="fas fa-right-from-bracket mr-1"></i>Logout</a>
      </nav>
    </div>
  </header>

  <section class="w-full px-8 py-10">
    <div class="bg-white shadow-xl rounded-2xl p-8">
      <div class="flex items-center justify-between mb-8">
        <h2 class="text-2xl font-bold text-blue-800 flex items-center gap-2">
          <i class="fas fa-landmark text-blue-600"></i> Departments
        </h2>
        <a href="AddDepartment.jsp" 
           class="bg-green-600 hover:bg-green-700 text-white px-6 py-2 rounded-full shadow-md flex items-center gap-2 transition">
          <i class="fas fa-circle-plus"></i> Add Department
        </a>
      </div>

      <div class="overflow-x-auto">
        <table class="w-full table-auto divide-y divide-gray-200 text-sm">
          <thead class="bg-green-100 text-green-800 uppercase text-xs">
            <tr>
              <th class="px-6 py-4 text-left w-1/6">Department ID</th>
              <th class="px-6 py-4 text-left w-1/3">Contact No<th>
              <th class="px-6 py-4 text-left w-1/3">Department Name</th>
              <th class="px-6 py-4 text-left w-1/3">Head Of Department</th>
              <th class="px-6 py-4 text-left w-1/6">Actions</th>
            </tr>
          </thead>
          <tbody class="bg-white divide-y divide-gray-100">
            <tr class="hover:bg-green-50 transition">
              <td class="px-6 py-4 font-medium">${faculty.id}</td>
              <td class="px-6 py-4">${faculty.subject}</td>
              <td class="px-6 py-4">${faculty.facultyname}</td>
              <td class="px-6 py-4">${faculty.name}</td>
              
              <td class="px-6 py-4 flex gap-4">
                <a href="DepartmentUpdate.jsp?id=${faculty.id}&name=${faculty.subject}&subject=${faculty.facultyname}&facultyname=${faculty.name}" class="text-yellow-500 hover:text-yellow-600 transition">
                  <i class="fas fa-pen-to-square"></i>
                </a>
                <form action="DepartmentDeleteServlet" method="post" onsubmit="return confirm('Are you sure?')">
                  <input type="hidden" name="id" value="${faculty.id}"/>
                  <button type="submit" class="text-red-500 hover:text-red-600 transition">
                    <i class="fas fa-trash-can"></i>
                  </button>
                </form>
              </td>
            </tr>
            <!-- Repeat more rows as needed -->
          </tbody>
        </table>
      </div>
    </div>
  </section>

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