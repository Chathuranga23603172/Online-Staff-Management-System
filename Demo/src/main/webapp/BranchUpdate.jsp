<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Branch - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gradient-to-br from-blue-50 to-blue-100 text-gray-800 min-h-screen flex flex-col">

<%
    String id = request.getParameter("id");
    String location = request.getParameter("location");
    String manager = request.getParameter("manager");
    String contact = request.getParameter("contact");
%>

<!-- Header -->
<header class="bg-white shadow-md sticky top-0 z-50">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
        <div class="flex items-center gap-3">
            <i class="fa-solid fa-graduation-cap text-blue-600 text-3xl animate-pulse"></i>
            <span class="text-2xl font-bold text-blue-800">BlueHorizon College</span>
        </div>
        <nav class="space-x-6 text-gray-700 font-medium">
            <a href="AdminDashboard.jsp" class="hover:text-blue-600 transition"><i class="fas fa-gauge-high mr-1"></i>Dashboard</a>
            <a href="UserGetAll" class="hover:text-blue-600 transition"><i class="fa-solid fa-users mr-1"></i>Staff</a>
            <a href="DepartmentGetAll" class="hover:text-blue-600 transition"><i class="fa-solid fa-building-columns mr-1"></i>Departments</a>
            <a href="BranchGetAll" class="text-blue-600 font-semibold"><i class="fa-solid fa-code-branch mr-1"></i>Branches</a>
            <a href="leaveGetAllServlet" class="hover:text-blue-600 transition"><i class="fa-solid fa-calendar-check mr-1"></i>Leave Requests</a>
            <a href="DepLogout" class="text-red-500 hover:text-red-600 transition"><i class="fa-solid fa-arrow-right-from-bracket mr-1"></i>Logout</a>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="flex-grow max-w-5xl mx-auto px-6 py-14">
    <div class="bg-white shadow-2xl rounded-3xl p-14 transition duration-300 hover:shadow-blue-200">
        <h2 class="text-4xl font-bold mb-12 text-blue-800 flex items-center">
            <i class="fa-solid fa-pen-to-square mr-3"></i>Update Branch
        </h2>
        <form action="BranchUpdateServlet" method="post" class="grid grid-cols-1 md:grid-cols-2 gap-10">

            <div class="col-span-1">
                <label class="block mb-2 text-lg font-semibold text-gray-700"><i class="fa-solid fa-id-badge mr-1"></i>ID</label>
                <input type="text" name="id" value="<%=id%>" readonly
                       class="w-full px-5 py-4 border border-gray-300 rounded-xl bg-gray-100 text-gray-700 shadow-sm focus:outline-none" />
            </div>

            <div class="col-span-1">
                <label class="block mb-2 text-lg font-semibold text-gray-700"><i class="fa-solid fa-location-dot mr-1"></i>Location</label>
                <input type="text" name="location" value="<%=location%>" required
                       class="w-full px-5 py-4 border border-blue-300 rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-400 shadow-md" />
            </div>

            <div class="col-span-1">
                <label class="block mb-2 text-lg font-semibold text-gray-700"><i class="fa-solid fa-user-tie mr-1"></i>Manager</label>
                <input type="text" name="manager" value="<%=manager%>" required
                       class="w-full px-5 py-4 border border-blue-300 rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-400 shadow-md" />
            </div>

            <div class="col-span-1">
                <label class="block mb-2 text-lg font-semibold text-gray-700"><i class="fa-solid fa-phone mr-1"></i>Contact</label>
                <input type="text" name="contact" value="<%=contact%>" required
                       pattern="^07[0-9]{8}$" maxlength="10"
                       title="Contact number must start with 07 and be 10 digits long"
                       class="w-full px-5 py-4 border border-blue-300 rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-400 shadow-md" />
            </div>

            <!-- Buttons Row -->
            <div class="md:col-span-2 flex justify-between items-center pt-6">
                <a href="BranchGetAll" class="text-gray-600 hover:text-blue-600 font-medium text-lg transition duration-200">
                    <i class="fa-solid fa-arrow-left mr-1"></i>Back to List
                </a>
                <button type="submit"
                        class="bg-blue-600 text-white px-10 py-4 rounded-xl hover:bg-blue-700 transition duration-200 font-semibold text-lg shadow-md hover:shadow-lg">
                    <i class="fa-solid fa-check mr-2"></i>Update Branch
                </button>
            </div>

        </form>
    </div>
</main>

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
