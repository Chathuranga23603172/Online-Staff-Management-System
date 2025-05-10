<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-blue-100 to-blue-300 min-h-screen py-10">

<%
       String id = request.getParameter("id");
       String name = request.getParameter("name");
       String gmail = request.getParameter("gmail"); 
       String password = request.getParameter("password");
       String phone = request.getParameter("phone");
       

%>

    <div class="max-w-xl mx-auto bg-white rounded-xl shadow-lg p-8">
        <h2 class="text-3xl font-bold text-blue-700 text-center mb-8">Edit Profile</h2>

        <form action="AdminUpdateUser" method="post" class="space-y-6">
        <div>
                <label class="block text-gray-700 font-semibold mb-2">ID</label>
                <input type="text" name="id" value="<%=id%>" readonly
                    class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
            <div>
                <label class="block text-gray-700 font-semibold mb-2">Full Name</label>
                <input type="text" name="name" value="<%=name%>" required
                    class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <div>
                <label class="block text-gray-700 font-semibold mb-2">Gmail</label>
                <input type="email" name="gmail" value="<%=gmail%>" required
                    class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>
      <div>
                <label class="block text-gray-700 font-semibold mb-2">Password</label>
                <input type="password" name="password" value="<%=password%>" required
                    class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>


            <div>
                <label class="block text-gray-700 font-semibold mb-2">Phone</label>
                <input type="text" name="phone" value="<%=phone%>" required
                    class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <div class="flex justify-between">
                <button type="submit"
                    class="bg-green-500 text-white px-6 py-2 rounded-md hover:bg-green-600 transition">Update</button>
                <a href="UserGetAll"
                    class="bg-gray-400 text-white px-6 py-2 rounded-md hover:bg-gray-500 transition">Cancel</a>
            </div>
        </form>
    </div>

</body>
</html>