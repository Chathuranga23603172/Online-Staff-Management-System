<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Registration - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gradient-to-tr from-blue-100 to-blue-400 min-h-screen flex items-center justify-center">

    <div class="bg-white p-8 rounded-xl shadow-xl w-full max-w-lg">
        <h2 class="text-3xl font-bold text-blue-700 text-center mb-6 flex items-center justify-center gap-2">
            <i class="fas fa-user-plus text-blue-500"></i> Admin Registration
        </h2>

        <form action="AdminInsertServlet" method="post" class="space-y-5">

            <!-- Full Name -->
            <div>
                <label class="block text-gray-700 font-medium mb-1">Full Name</label>
                <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
                    <i class="fas fa-user text-gray-500 mr-2"></i>
                    <input type="text" name="fullname" required class="w-full bg-transparent focus:outline-none">
                </div>
            </div>

            <!-- University -->
            <div>
                <label class="block text-gray-700 font-medium mb-1">University</label>
                <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
                    <i class="fas fa-university text-gray-500 mr-2"></i>
                    <input type="text" name="university" required class="w-full bg-transparent focus:outline-none">
                </div>
            </div>

            <!-- Degree and Field -->
            <div>
                <label class="block text-gray-700 font-medium mb-1">Degree (with Field)</label>
                <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
                    <i class="fas fa-graduation-cap text-gray-500 mr-2"></i>
                    <input type="text" name="degree" placeholder="e.g., BSc in Computer Science" required class="w-full bg-transparent focus:outline-none">
                </div>
            </div>

            <!-- Username -->
            <div>
                <label class="block text-gray-700 font-medium mb-1">Username</label>
                <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
                    <i class="fas fa-user-circle text-gray-500 mr-2"></i>
                    <input type="text" name="username" required class="w-full bg-transparent focus:outline-none">
                </div>
            </div>

            <!-- Password -->
            <div>
                <label class="block text-gray-700 font-medium mb-1">Password</label>
                <div class="flex items-center border border-gray-300 rounded-lg px-3 py-2 bg-gray-50">
                    <i class="fas fa-lock text-gray-500 mr-2"></i>
                    <input type="password" name="password" required class="w-full bg-transparent focus:outline-none">
                </div>
            </div>

            <!-- Submit -->
            <button type="submit" class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 rounded-full shadow transition duration-300">
                <i class="fas fa-paper-plane mr-2"></i> Register Admin
            </button>
        </form>

        <p class="text-center text-sm text-gray-500 mt-6">
            Already have an account? <a href="adminLogin.jsp" class="text-blue-600 hover:underline">Login</a>
        </p>
    </div>

</body>
</html>
