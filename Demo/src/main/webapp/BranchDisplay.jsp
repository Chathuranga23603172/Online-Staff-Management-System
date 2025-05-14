<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Branches - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100 text-gray-800 min-h-screen flex flex-col">

<!-- Header -->
<header class="bg-white shadow-md">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
        <div class="flex items-center gap-3">
            <i class="fa-solid fa-graduation-cap text-blue-600 text-3xl"></i>
            <span class="text-2xl font-bold text-blue-800">BlueHorizon College</span>
        </div>
        <nav class="space-x-6 text-gray-700 font-medium">
            <a href="AdminDashboard.jsp" class="hover:text-blue-600 transition">
                <i class="fas fa-gauge-high mr-1"></i>Dashboard
            </a>
            <a href="UserGetAll" class="hover:text-blue-600 transition">
                <i class="fa-solid fa-users mr-1"></i>Staff
            </a>
            <a href="DepartmentGetAll" class="hover:text-blue-600 transition">
                <i class="fa-solid fa-building-columns mr-1"></i>Departments
            </a>
            <a href="BranchGetAll" class="text-blue-600 font-semibold">
                <i class="fa-solid fa-code-branch mr-1"></i>Branches
            </a>
            <a href="leaveGetAllServlet" class="hover:text-blue-600 transition">
                <i class="fa-solid fa-calendar-check mr-1"></i>Leave Requests
            </a>
            <a href="DepLogout" class="text-red-500 hover:text-red-600 transition">
                <i class="fa-solid fa-arrow-right-from-bracket mr-1"></i>Logout
            </a>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="flex-grow max-w-7xl mx-auto px-6 py-10">
    <div class="flex justify-between items-center mb-6">
        <h2 class="text-3xl font-bold text-gray-800 flex items-center">
            <i class="fa-solid fa-code-branch mr-2 text-blue-600"></i>Branch List
        </h2>
        <a href="BranchInsert.jsp" class="bg-blue-600 text-white px-5 py-2 rounded-full hover:bg-blue-700 shadow-md transition flex items-center">
            <i class="fa-solid fa-plus mr-2"></i>Add Branch
        </a>
    </div>

    <!-- Table -->
    <div class="bg-white shadow-md rounded-xl overflow-x-auto">
        <table class="min-w-[1200px] text-sm text-left table-auto w-full">
            <thead class="bg-blue-600 text-white uppercase text-xs">
                <tr>
                    <th class="px-6 py-4"><i class="fa-solid fa-id-badge mr-1"></i>ID</th>
                    <th class="px-6 py-4"><i class="fa-solid fa-location-dot mr-1"></i>Location</th>
                    <th class="px-6 py-4"><i class="fa-solid fa-user-tie mr-1"></i>Manager</th>
                    <th class="px-6 py-4"><i class="fa-solid fa-phone mr-1"></i>Contact</th>
                    <th class="px-6 py-4 text-center"><i class="fa-solid fa-wrench mr-1"></i>Actions</th>
                </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
                <c:forEach var="branch" items="${allbranch}">
                    <tr class="hover:bg-gray-50 transition">
                        <td class="px-6 py-4 font-medium">${branch.id}</td>
                        <td class="px-6 py-4">${branch.location}</td>
                        <td class="px-6 py-4">${branch.manager}</td>
                        <td class="px-6 py-4">${branch.contact}</td>
                        <td class="px-6 py-4 text-center flex justify-center space-x-4">
                            <a href="BranchUpdate.jsp?id=${branch.id}&location=${branch.location}&manager=${branch.manager}&contact=${branch.contact}"
                               class="inline-flex items-center text-green-600 hover:text-green-800 transition font-semibold">
                                <i class="fa-solid fa-pen-to-square mr-1"></i>Edit
                            </a>
                            <form action="BranchDeleteServlet" method="post" class="inline">
                                <input type="hidden" name="id" value="${branch.id}" />
                                <button class="inline-flex items-center px-4 py-2 bg-red-500 text-white rounded-full hover:bg-red-600 transition">
                                    <i class="fa-solid fa-trash mr-2"></i>Delete
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
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
