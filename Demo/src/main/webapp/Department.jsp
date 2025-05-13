<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Departments - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100 text-gray-800 min-h-screen flex flex-col">

<!-- Header -->
<header class="bg-white shadow">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
        <div class="flex items-center gap-3">
            <i class="fas fa-school text-blue-600 text-3xl"></i>
            <span class="text-2xl font-bold text-blue-800 tracking-wide">BlueHorizon College</span>
        </div>
        <nav class="space-x-6 text-gray-700 font-semibold text-base">
            <a href="AdminDashboard.jsp" class="hover:text-blue-600 transition">
                <i class="fas fa-chart-line mr-1"></i>Dashboard
            </a>
            <a href="UserGetAll" class="hover:text-blue-600 transition">
                <i class="fas fa-users mr-1"></i>Staff
            </a>
            <a href="#" class="text-blue-600 font-bold">
                <i class="fas fa-building-columns mr-1"></i>Departments
            </a>
            <a href="#" class="hover:text-blue-600 transition">
                <i class="fas fa-sliders mr-1"></i>Settings
            </a>
            <a href="logout.jsp" class="text-red-500 hover:text-red-600 transition">
                <i class="fas fa-right-from-bracket mr-1"></i>Logout
            </a>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="flex-grow max-w-7xl mx-auto px-6 py-10">
    <div class="flex justify-between items-center mb-6">
        <h2 class="text-3xl font-bold text-gray-800">
            <i class="fas fa-building-columns mr-2 text-blue-600"></i>Department List
        </h2>
        <a href="AddDepartment.jsp"
           class="bg-blue-600 text-white px-5 py-2 rounded-full hover:bg-blue-700 shadow-md transition inline-flex items-center">
            <i class="fas fa-plus mr-2"></i>Add Department
        </a>
    </div>

    <!-- Table -->
    <div class="bg-white shadow-lg rounded-xl overflow-x-auto">
        <table class="min-w-full text-sm text-left table-auto">
            <thead class="bg-blue-600 text-white uppercase text-xs">
            <tr>
                <th class="px-6 py-4"><i class="fas fa-hashtag mr-1"></i>ID</th>
                <th class="px-6 py-4"><i class="fas fa-building mr-1"></i>Department</th>
                <th class="px-6 py-4"><i class="fas fa-phone mr-1"></i>Contact</th>
                <th class="px-6 py-4"><i class="fas fa-user-tie mr-1"></i>Head</th>
                <th class="px-6 py-4 text-center"><i class="fas fa-wrench mr-1"></i>Actions</th>
            </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
            <c:forEach var="faculty" items="${allfaculty}">
                <tr class="hover:bg-gray-50 transition">
                    <td class="px-6 py-4 font-medium">${faculty.id}</td>
                    <td class="px-6 py-4">${faculty.name}</td>
                    <td class="px-6 py-4">${faculty.contact}</td>
                    <td class="px-6 py-4">${faculty.facultyname}</td>
                    <td class="px-6 py-4 text-center">
                        <div class="flex items-center justify-center space-x-4">
                            <a href="UpdateDepartment.jsp?id=${faculty.id}&name=${faculty.name}&contact=${faculty.contact}&facultyname=${faculty.facultyname}"
                               class="inline-flex items-center text-green-600 hover:text-green-800 font-medium transition">
                                <i class="fas fa-edit mr-1"></i>Edit
                            </a>
                            <form action="DepartmentDeleteServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this department?')">
                                <input type="hidden" name="id" value="${faculty.id}" />
                                <button type="submit"
                                        class="inline-flex items-center bg-red-500 text-white px-4 py-1 rounded-full hover:bg-red-600 transition font-medium">
                                    <i class="fas fa-trash-alt mr-1"></i>Delete
                                </button>
                            </form>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</main>

<!-- Footer -->
<footer class="bg-white border-t shadow-inner mt-10">
    <div class="max-w-7xl mx-auto px-6 py-6 text-center text-sm text-gray-500">
        © 2025 BlueHorizon College. Designed for university project by <span class="text-blue-600 font-semibold">Your Name</span>.
    </div>
</footer>

</body>
</html>
