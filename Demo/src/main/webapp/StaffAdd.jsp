<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
  <!-- Navigation Bar -->
  <header class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
      <div class="flex items-center gap-3">
        <i class="fas fa-school text-blue-600 text-3xl"></i>
        <span class="text-2xl font-bold text-blue-800 tracking-wide">BlueHorizon College</span>
      </div>
      <nav class="space-x-6 text-gray-700 font-semibold text-base">
        <a href="AdminDashboard.jsp" class="hover:text-blue-600 transition"><i class="fas fa-tachometer-alt mr-1"></i>Dashboard</a>
        <a href="UserGetAll" class="hover:text-blue-600 transition"><i class="fas fa-users mr-1"></i>Staff</a>
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-user-shield mr-1"></i>Admin</a>
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-cogs mr-1"></i>Settings</a>
        <a href="logout.jsp" class="text-red-500 hover:text-red-600 transition"><i class="fas fa-sign-out-alt mr-1"></i>Logout</a>
      </nav>
    </div>
  </header>
<section class="max-w-7xl mx-auto px-4 py-10">
  <div class="bg-white shadow-lg rounded-xl p-6">
    <div class="flex items-center justify-between mb-6">
      <h2 class="text-2xl font-bold text-blue-700 flex items-center gap-2">
        <i class="fas fa-users"></i> Staff Management
      </h2>
      <a href="Register.jsp" 
         class="bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded-full shadow flex items-center gap-2">
        <i class="fas fa-user-plus"></i> Add Staff
      </a>
    </div>

    <div class="overflow-x-auto">
      <table class="w-full text-left text-gray-700">
        <thead class="bg-blue-100 text-blue-800 text-sm uppercase">
          <tr>
            <th class="px-4 py-3">ID</th>
            <th class="px-4 py-3">Full Name</th>
            <th class="px-4 py-3">Email</th>
            <th class="px-4 py-3">Password</th>
            <th class="px-4 py-3">Phone-Number</th>
            <th class="px-4 py-3">Actions</th>
          </tr>
        </thead>
        <tbody class="text-sm divide-y">
      <c:forEach var="user" items="${allUsers}">
          <tr class="hover:bg-blue-50">
            <td class="px-4 py-3 font-medium">${user.id}</td>
            <td class="px-4 py-3">${user.name}</td>
            <td class="px-4 py-3">${user.gmail}</td>
            <td class="px-4 py-3">${user.password}</td>
            <td class="px-4 py-3">${user.phone}</td>
            
            <td class="px-4 py-3 flex gap-2">
              <a href="AdminUpdateProfile.jsp?id=${user.id}&name=${user.name}&gmail=${user.gmail}&password=${user.password}&phone=${user.phone}" 
                 class="text-yellow-500 hover:text-yellow-600">
                <i class="fas fa-edit"></i>
              </a>
              <form action="AdminUserDeleteServlet" method="post" onsubmit="return confirm('Are you sure?')">
                <input type="hidden" name="id"  value="${user.id}">
                <button type="submit" class="text-red-500 hover:text-red-600">
                  <i class="fas fa-trash-alt"></i>
                </button>
              </form>
            </td>
          </tr>
     </c:forEach>
          <!-- Add more rows dynamically with JSTL or backend -->
        </tbody>
      </table>
    </div>
  </div>
</section>
</body>
</html>