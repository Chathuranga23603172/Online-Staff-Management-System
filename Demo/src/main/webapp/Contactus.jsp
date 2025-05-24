<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlueHorizon</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>
<body class="flex flex-col min-h-screen bg-gray-100">
    <!-- Header Navigation Bar -->
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
                 <a href="Contactus.jsp" class="hover:text-blue-500">Contact</a>
                <a href="Aboutus.jsp" class="hover:text-blue-500">About</a>
                <a href="MainSignup.jsp" class="hover:text-blue-500">Sign Up</a>
                <a href="MainLoginPage.jsp" class="hover:text-blue-500">Login</a>

                
             

            </nav>

           

        </div>
    </header>

<section>
<main class="flex-grow px-6 py-12">
  <div class="max-w-4xl mx-auto bg-white p-10 rounded-2xl shadow-xl">
    <h2 class="text-3xl font-bold text-blue-700 mb-6 text-center">Contact Us</h2>
    
    <form action="ContactServlet" method="post" class="space-y-6">
      <div>
        <label class="block text-gray-700 font-semibold mb-1"><i class="fa-solid fa-user mr-1"></i>Full Name</label>
        <input type="text" name="name" required placeholder="Your name"
               class="w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400">
      </div>

      <div>
        <label class="block text-gray-700 font-semibold mb-1"><i class="fa-solid fa-envelope mr-1"></i>Email</label>
        <input type="email" name="email" required placeholder="Your email"
               class="w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400">
      </div>

      <div>
        <label class="block text-gray-700 font-semibold mb-1"><i class="fa-solid fa-tag mr-1"></i>Subject</label>
        <input type="text" name="subject" required placeholder="Subject"
               class="w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400">
      </div>

      <div>
        <label class="block text-gray-700 font-semibold mb-1"><i class="fa-solid fa-message mr-1"></i>Message</label>
        <textarea name="message" rows="5" required placeholder="Write your message here..."
                  class="w-full p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400"></textarea>
      </div>

      <div class="text-center">
        <button type="submit"
                class="bg-blue-600 hover:bg-blue-700 text-white px-6 py-3 rounded-md font-semibold shadow-md">
          <i class="fa-solid fa-paper-plane mr-2"></i>Send Message
        </button>
      </div>
    </form>
  </div>
</main>
</section>
<%@ include file="./partiels/footer.jsp"%>
