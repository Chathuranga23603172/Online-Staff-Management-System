<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Staff List | BlueHorizon College</title>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-blue-100 to-blue-300 min-h-screen py-10 px-4">

    <div class="max-w-6xl mx-auto bg-white rounded-2xl shadow-xl p-8">
        <h2 class="text-3xl font-bold text-blue-700 text-center mb-8">
            <i class="fas fa-users mr-2"></i>Staff Members
        </h2>

        <div class="overflow-x-auto">
            <table class="min-w-full table-auto border border-gray-200 text-sm text-left text-gray-700">
                <thead class="bg-blue-600 text-white uppercase text-sm">
                    <tr>
                        <th class="px-4 py-3">#</th>
                        <th class="px-4 py-3">Full Name</th>
                        <th class="px-4 py-3">Address</th>
                        <th class="px-4 py-3">Email</th>
                        <th class="px-4 py-3">Age</th>
                        <th class="px-4 py-3">Username</th>
                        <th class="px-4 py-3">Action</th>
                    </tr>
                </thead>
               
            <tbody class="bg-white divide-y divide-gray-200">
    <c:forEach var="book" items="${allStaffs}">
        <tr class="hover:bg-blue-50 transition duration-200">
            <td class="px-4 py-3 font-medium text-gray-700">${book.id}</td>
            <td class="px-4 py-3 text-gray-600">${book.fullname}</td>
            <td class="px-4 py-3 text-gray-600">${book.address}</td>
            <td class="px-4 py-3 text-gray-600">${book.email}</td>
            <td class="px-4 py-3 text-gray-600">${book.age}</td>
            <td class="px-4 py-3 text-gray-600">${book.username}</td>
            <td class="px-4 py-3 flex space-x-2">
                <!-- Update Button -->
                <a href="UpdateStaff.jsp?id=${book.id}&fullname=${book.fullname}&address=${book.address}&email=${book.email}&age=${book.age}&username=${book.username}"
                   class="inline-block">
                    <button type="button"
                        class="px-3 py-1 bg-blue-600 text-white rounded hover:bg-blue-700 transition duration-200">
                        Update
                    </button>
                </a>

                <!-- Delete Button -->
                <form action="DeleteStaffServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this staff?');">
                    <input type="hidden" name="id" value="${book.id}" />
                    <button type="submit"
                        class="px-3 py-1 bg-red-600 text-white rounded hover:bg-red-700 transition duration-200">
                        Delete
                    </button>
                </form>
            </td>
        </tr>
    </c:forEach>
</tbody>

                  
                    <!-- Add more static rows or dynamically generate with JSP -->
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
