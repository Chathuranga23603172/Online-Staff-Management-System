<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Department</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<head>
    <meta charset="UTF-8">
    <title>Departments - BlueHorizon College</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100 text-gray-800 min-h-screen flex flex-col">

 <header class="bg-white shadow-md">
        <div class="container mx-auto px-6 py-4 flex items-center justify-between">
            
            <!-- Logo -->
           <h2 class="text-xl font-bold text-blue flex items-center gap-2">
        <i class="fas fa-graduation-cap text-blue-500"></i> BlueHorizon College
      </h2>

            <!-- Search Bar -->
            <div class="hidden md:flex items-center border rounded-lg overflow-hidden w-1/3">
                <input type="text" class="w-full px-4 py-2 outline-none" placeholder="Search">
                <button class="bg-blue-500 px-4 py-2 text-white">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <!-- Navigation Links -->
            <nav class="hidden md:flex space-x-6 text-gray-700">
                <a href="HomePage.jsp" class="hover:text-blue-500">Home</a>
                <a href="requestinsert.jsp" class="hover:text-blue-500">Leave Request</a>
                <a href="#" class="hover:text-blue-500">Department</a>
                <a href="#" class="hover:text-blue-500">Contact</a>
                <a href="#" class="hover:text-blue-500">About</a>
            </nav>

            <!-- User & Cart Icons -->
            <div class="flex items-center space-x-4">
                <a href="ProfileServlet" class="text-gray-700 hover:text-blue-500">
                    <i class="far fa-user text-xl"></i>
                </a>

            </div>

        </div>
    </header>

<head>
<body class="bg-gray-100 min-h-screen flex flex-col">
  <!-- Centered and styled Leave Request Form -->
  <main class="flex-grow flex items-center justify-center p-6">
    <div class="bg-blue-100 p-8 rounded-xl shadow-md w-full max-w-lg">
      <h2 class="text-2xl font-bold text-blue-900 mb-6 text-center">Leave Request Form</h2>
      <form action="leaveinsertServlet" method="post" class="space-y-4">
        
        <div>
          <label for="name" class="block font-medium text-blue-800">Name:</label>
          <input type="text" name="name" required class="w-full mt-1 p-2 border border-blue-300 rounded" />
        </div>

        <div>
          <label for="subject" class="block font-medium text-blue-800">Subject:</label>
          <input type="text" name="subject" required class="w-full mt-1 p-2 border border-blue-300 rounded" />
        </div>

        <div>
          <label for="phoneNo" class="block font-medium text-blue-800">Phone No:</label>
          <input type="tel" name="phoneNo" required class="w-full mt-1 p-2 border border-blue-300 rounded" />
        </div>

        <div>
          <label for="requests" class="block font-medium text-blue-800">Reason:</label>
          <textarea name="requests" required class="w-full mt-1 p-2 border border-blue-300 rounded"></textarea>
        </div>

        <div class="text-center">
          <input type="submit" value="Submit" class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-2 rounded cursor-pointer" />
        </div>
      </form>
    </div>
  </main>
</body>




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