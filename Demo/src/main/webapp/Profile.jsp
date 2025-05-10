<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BlueHorizon - Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gradient-to-br from-blue-100 to-blue-300 min-h-screen py-10">

    <div class="max-w-2xl mx-auto bg-white rounded-xl shadow-xl p-8">
        <h2 class="text-3xl font-bold text-blue-700 text-center mb-8 flex items-center justify-center gap-2">
            <i class="fas fa-user text-blue-500"></i>
            Your Profile
        </h2>

        <div class="space-y-5 text-lg">
            <div class="flex justify-between border-b pb-2">
                <span class="font-semibold text-gray-600">ID:</span>
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
                <span class="font-semibold text-gray-600">Password:</span>
                <span class="text-gray-800">${user.password}</span>
            </div>

            <div class="flex justify-between border-b pb-2">
                <span class="font-semibold text-gray-600">Phone-Number:</span>
                <span class="text-gray-800">${user.phone}</span>
            </div>
        </div>

        <div class="mt-10 flex flex-wrap justify-center gap-4">
            <a href="UpdateProfile.jsp?id=${user.id}&name=${user.name}&gmail=${user.gmail}&password=${user.password}&phone=${user.phone}" 
               class="px-6 py-2 bg-yellow-500 text-white font-medium rounded-full shadow hover:bg-yellow-600 transition duration-300 flex items-center">
                <i class="fas fa-edit mr-2"></i>Edit
            </a>

            <form action="DeleteServlet" method="post">
                <input type="hidden" name="id" value="${user.id}" />
                <button  
                        class="px-6 py-2 bg-red-400 text-white font-medium rounded-full shadow hover:bg-red-500 transition duration-300 flex items-center">
                    <i class="fas fa-trash-alt mr-2"></i>Delete
                </button>
            </form>

            <a href="LogoutServlet" 
               class="px-6 py-2 bg-blue-600 text-white font-medium rounded-full shadow hover:bg-blue-700 transition duration-300 flex items-center">
                <i class="fas fa-sign-out-alt mr-2"></i>Logout
            </a>
        </div>
    </div>
</body>
</html>
