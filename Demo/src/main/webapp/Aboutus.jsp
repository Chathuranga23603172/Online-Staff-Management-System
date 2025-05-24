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

<!-- Main Content -->
<main class="flex-grow px-6 py-12">
  <div class="max-w-5xl mx-auto bg-white p-10 rounded-2xl shadow-lg">
    <h1 class="text-4xl font-bold text-blue-800 mb-6"><i class="fas fa-circle-info mr-2"></i>About BlueHorizon</h1>

    <p class="text-lg leading-relaxed mb-6">
      <strong>BlueHorizon Staff Management System</strong> is a modern web-based solution designed to efficiently manage academic and non-academic staff at BlueHorizon College. The system provides seamless functionality for handling staff data, department structures, branches, leave requests, and more.
    </p>

    <p class="text-lg leading-relaxed mb-6">
      Our platform empowers administrators with tools for streamlined registration, profile management, attendance tracking, and automated leave workflows. By centralizing these processes, we ensure better data accuracy, improved communication, and enhanced productivity across the institution.
    </p>

    <h2 class="text-2xl font-semibold text-blue-700 mt-10 mb-4">Our Mission</h2>
    <p class="text-lg mb-6">
      To simplify and digitize college staff operations, ensuring a smart, secure, and scalable system that supports administrative excellence and employee satisfaction.
    </p>

    <h2 class="text-2xl font-semibold text-blue-700 mb-4"> Developed By</h2>
    <p class="text-lg">
      This system was designed and developed by <strong>Nimal Chathuranga</strong> as part of a university project to demonstrate full-stack web application capabilities using JSP, Servlets, MySQL, and Tailwind CSS.
    </p>
  </div>
</main>
  <%@ include file="./partiels/footer.jsp"%> 
