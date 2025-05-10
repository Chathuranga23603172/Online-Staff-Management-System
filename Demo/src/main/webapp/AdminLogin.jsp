<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gradient-to-br from-blue-200 to-blue-500 min-h-screen flex items-center justify-center">

    <div class="bg-white shadow-2xl rounded-xl w-full max-w-md p-8 space-y-6">
        <div class="text-center">
            <h1 class="text-3xl font-bold text-blue-700 mb-2 flex items-center justify-center gap-2">
                <i class="fas fa-user-shield text-blue-500"></i> Admin Login
            </h1>
            <p class="text-sm text-gray-600">Access BlueHorizon College Admin Panel</p>
        </div>

        <form action="AdminLoginServlet" method="post" class="space-y-4">
            <div>
                <label class="block text-gray-700 font-medium mb-1">Username</label>
                <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
                    <i class="fas fa-user text-gray-500 mr-2"></i>
                    <input type="text" name="username" required class="w-full bg-transparent focus:outline-none">
                </div>
            </div>

            <div>
                <label class="block text-gray-700 font-medium mb-1">Password</label>
                <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
                    <i class="fas fa-lock text-gray-500 mr-2"></i>
                    <input type="password" name="password" required class="w-full bg-transparent focus:outline-none">
                </div>
            </div>

            <button type="submit"
                    class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 rounded-full transition duration-300 shadow">
                <i class="fas fa-sign-in-alt mr-2"></i> Login
            </button>
        </form>

        <p class="text-center text-sm text-gray-500 mt-4">
            © 2025 BlueHorizon College. All rights reserved.
        </p>
    </div>

</body>
</html>
