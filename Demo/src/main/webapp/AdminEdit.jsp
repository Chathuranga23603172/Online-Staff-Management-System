<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Admin Profile</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center px-4 py-10">
<%
       String id = request.getParameter("id");
       String fullname = request.getParameter("fullname");
       String university = request.getParameter("university");
       String degree = request.getParameter("degree");
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       

%>
  <div class="bg-white shadow-2xl rounded-2xl p-8 max-w-lg w-full">
    <h2 class="text-2xl font-bold text-blue-800 mb-6 flex items-center gap-2">
      <i class="fas fa-user-edit text-blue-600"></i> Edit Admin Profile
    </h2>

    <form action="AdminEditeServlet" method="post" class="space-y-5">

      
      <div>
        <label for="id" class="block text-gray-700 font-semibold mb-1">ID</label>
        <input type="text" name="id" id="id" value="<%=id%>" readonly
               class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:outline-none">
      </div>
      <div>
        <label for="fullname" class="block text-gray-700 font-semibold mb-1">Full Name</label>
        <input type="text" name="fullname" id="fullname" value="<%=fullname%>" required
               class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:outline-none">
      </div>

      <div>
        <label for="university" class="block text-gray-700 font-semibold mb-1">University</label>
        <input type="text" name="university" id="university" value="<%=university%>" required
               class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:outline-none">
      </div>

      <div>
        <label for="degree" class="block text-gray-700 font-semibold mb-1">Degree</label>
        <input type="text" name="degree" id="degree" value="<%=degree%>" required
               class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:outline-none">
      </div>

      <div>
        <label for="username" class="block text-gray-700 font-semibold mb-1">Username</label>
        <input type="text" name="username" id="username" value="<%=username%>" required
               class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:outline-none">
      </div>
      <div>
        <label for="password" class="block text-gray-700 font-semibold mb-1">Password</label>
        <input type="password" name="password" id="password" value="<%=password%>" required
               class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:ring-2 focus:ring-blue-500 focus:outline-none">
      </div>

      <div class="flex justify-between items-center mt-6">
        <a href="AdminDashboard.jsp" class="text-gray-600 hover:text-blue-600 transition text-sm">
          <i class="fas fa-arrow-left"></i> Cancel
        </a>
        <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded-lg font-semibold transition">
          <i class="fas fa-save mr-1"></i> Save Changes
        </button>
      </div>

    </form>
  </div>

</body>
</html>
