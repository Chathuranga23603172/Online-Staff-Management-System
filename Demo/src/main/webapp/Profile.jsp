<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BlueHorizon - Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-br from-blue-100 to-blue-300 min-h-screen py-10">

    <div class="max-w-2xl mx-auto bg-white rounded-xl shadow-md p-8">
        <h2 class="text-3xl font-bold text-blue-700 text-center mb-8">
            <i class="fas fa-user mr-2"></i>Your Profile
        </h2>

        <div class="space-y-4 text-lg">
            <div class="flex justify-between border-b pb-2">
                <span class="font-semibold text-gray-600"> ID:</span>
                <span class="text-gray-800">${user.id}</span>
            </div>

            <div class="flex justify-between border-b pb-2">
                <span class="font-semibold text-gray-600">Name:</span>
                <span class="text-gray-800">${user.name}</span>
            </div>

            <div class="flex justify-between border-b pb-2">
                <span class="font-semibold text-gray-600">G-mail:</span>
                <span class="text-gray-800">${user.gmail}</span>
            </div>

            <div class="flex justify-between border-b pb-2">
                <span class="font-semibold text-gray-600">Phone Number:</span>
                <span class="text-gray-800">${user.phone}</span>
            </div>
        </div>

        <div class="mt-8 flex justify-center gap-4">
            <a href="editProfile.jsp" class="px-6 py-2 bg-yellow-500 text-white rounded hover:bg-yellow-600 transition">Edit</a>
            <a href="logout.jsp" class="px-6 py-2 bg-red-500 text-white rounded hover:bg-red-600 transition">Logout</a>
        </div>
    </div>
</body>
</html>