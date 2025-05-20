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
<body class="bg-gray-100">
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
                <a href="#" class="hover:text-blue-500">Home</a>
                <a href="requestinsert.jsp" class="hover:text-blue-500">Leave Request</a>
                <a href="DisplayDepartment" class="hover:text-blue-500">Department</a>
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