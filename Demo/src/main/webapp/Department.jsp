<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Departments - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-100 text-gray-800">

    <!-- Header -->
    <header class="bg-white shadow sticky top-0 z-50">
        <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
            <h1 class="text-2xl font-bold text-blue-700 flex items-center gap-2">
                <i class="fas fa-university"></i> BlueHorizon College
            </h1>
            <nav class="space-x-6 text-gray-700">
                <a href="dashboard.jsp" class="hover:text-blue-600">Dashboard</a>
                <a href="displayDepartment.jsp" class="text-blue-600 font-semibold">Departments</a>
                <a href="logout.jsp" class="hover:text-red-500"><i class="fas fa-sign-out-alt"></i> Logout</a>
            </nav>
        </div>
    </header>

    <!-- Main Content -->
    <main class="max-w-7xl mx-auto px-6 py-8">
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-3xl font-bold text-gray-800">Department List</h2>
            <a href="AddDepartment.jsp" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 shadow">
                <i class="fas fa-plus mr-2"></i>Add Department
            </a>
        </div>

        <!-- Table -->
        <div class="bg-white shadow overflow-hidden rounded-lg">
            <table class="min-w-full text-sm text-left">
                <thead class="bg-blue-600 text-white uppercase text-xs">
                    <tr>
                        <th class="px-6 py-4">ID</th>
                        <th class="px-6 py-4">Department Name</th>
                        <th class="px-6 py-4">Contact Number</th>
                        <th class="px-6 py-4">Head of Department</th>
                        <th class="px-6 py-4">Actions</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200"> 
                    <c:forEach var="faculty" items="${allfaculty}">
                        <tr class="hover:bg-gray-50 transition">
                            <td class="px-6 py-4 font-medium">${faculty.id}</td>
                            <td class="px-6 py-4">${faculty.name}</td>
                            <td class="px-6 py-4">${faculty.contact}</td>
                            <td class="px-6 py-4">${faculty.facultyname}</td>
                            <td class="px-6 py-4 space-x-3">
                                <a href="UpdateDepartment.jsp?id=${faculty.id}" class="text-green-600 hover:underline">
                                    <i class="fas fa-edit"></i> Edit
                                </a>
                                <a href="DepartmentDeleteServlet?id=${faculty.id}" class="text-red-600 hover:underline" onclick="return confirm('Are you sure?')">
                                    <i class="fas fa-trash"></i> Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white mt-10 py-4 shadow-inner">
        <div class="max-w-7xl mx-auto px-6 text-center text-sm text-gray-500">
            © 2025 BlueHorizon College. Designed for university project by <span class="text-blue-600 font-semibold">Your Name</span>.
        </div>
    </footer>

</body>
</html>
