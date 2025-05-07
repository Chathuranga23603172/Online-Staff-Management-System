<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
       String id = request.getParameter("id");
       String fullname = request.getParameter("fullname");
       String address = request.getParameter("address");
       String email = request.getParameter("email");
       String age = request.getParameter("age");
       String username = request.getParameter("username");

%>

<div class="w-full max-w-xl bg-white p-8 rounded-2xl shadow-2xl">
        <h2 class="text-3xl font-bold text-center text-blue-700 mb-6">
            <i class="fas fa-user-plus mr-2"></i>Update Staff
        </h2>

        <form action="UpdateServlet" method="post" class="space-y-5">
        
            <div>
                <label class="block text-gray-700 font-semibold mb-1">
                    <i class="fas fa-user mr-2 text-blue-600"></i>ID
                </label>
                <input type="text" name="id" value="<%=id%>" readonly
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <!-- Full Name -->
            <div>
                <label class="block text-gray-700 font-semibold mb-1">
                    <i class="fas fa-user mr-2 text-blue-600"></i>Full Name
                </label>
                <input type="text" name="fullname" value="<%=fullname%>"required
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Address -->
            <div>
                <label class="block text-gray-700 font-semibold mb-1">
                    <i class="fas fa-map-marker-alt mr-2 text-blue-600"></i>Address
                </label>
                <input type="text" name="address" value="<%=address%>" required
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Email -->
            <div>
                <label class="block text-gray-700 font-semibold mb-1">
                    <i class="fas fa-envelope mr-2 text-blue-600"></i>Email
                </label>
                <input type="email" name="email" value="<%=email%>" required
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Age -->
            <div>
                <label class="block text-gray-700 font-semibold mb-1">
                    <i class="fas fa-birthday-cake mr-2 text-blue-600"></i>Age
                </label>
                <input type="text" name="age"  value="<%=age%>" required 
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Username -->
            <div>
                <label class="block text-gray-700 font-semibold mb-1">
                    <i class="fas fa-user-tag mr-2 text-blue-600"></i>Username
                </label>
                <input type="text" name="username" value="<%=username%>" required 
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <button type="submit"
                    class="bg-blue-600 hover:bg-blue-700 text-white font-semibold px-6 py-2 rounded-lg shadow-md transition-all duration-300 ease-in-out">
                    <i class="fas fa-save mr-2"></i>Save Staff
                </button>
            </div>
        </form>
    </div>
</body>
</html>