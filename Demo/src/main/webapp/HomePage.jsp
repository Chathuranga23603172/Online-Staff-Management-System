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
<!-- Hero Section (Image Slider with Auto Change) -->
    <section x-data="{ activeSlide: 1, slides: 3, interval: null }"
    x-init="interval = setInterval(() => { activeSlide = activeSlide === slides ? 1 : activeSlide + 1 }, 5000)"
    class="relative w-full h-[800px] overflow-hidden">

    <!-- Slides -->
    <template x-for="slide in slides" :key="slide">
        <div class="absolute inset-0 transition-opacity duration-1000"
            x-show="activeSlide === slide"
            x-transition:enter="opacity-0"
            x-transition:enter-start="opacity-0"
            x-transition:enter-end="opacity-100">
            <img :src="[
                './assets/banner-2.jpg',
                './assets/banner-1.jpg',
                './assets/banner-3.jpg'
            ][slide - 1]" alt="Slide" class="w-full h-full object-cover">
            <div class="absolute top-0 left-0 w-full h-full bg-black bg-opacity-40 flex items-center">
                <div class="container mx-auto px-6 text-white">
                    <h2 class="text-4xl font-bold" x-text="[
                        'Welcome to BlueHorizon College',
                        'Efficient Staff Management',
                        'Organized. Professional. Simple.'
                    ][slide - 1]"></h2>
                    <p class="mt-2 text-lg" x-text="[
                        'Empowering Staff. Inspiring Students.',
                        'Smart tools for streamlined operations',
                        'Manage staff and departments with ease.'
                    ][slide - 1]"></p>
                    <a href="#" class="mt-4 inline-block bg-blue-500 text-white px-6 py-2 rounded-lg hover:bg-blue-600 transition">show</a>
                </div>
            </div>
        </div>
    </template>

    <!-- Navigation Arrows -->
    <button @click="activeSlide = activeSlide === 1 ? slides : activeSlide - 1"
        class="absolute left-5 top-1/2 transform -translate-y-1/2 text-white text-2xl bg-black bg-opacity-50 px-3 py-2 rounded-full hover:bg-opacity-75 transition">
        <i class="fas fa-chevron-left"></i>
    </button>

    <button @click="activeSlide = activeSlide === slides ? 1 : activeSlide + 1"
        class="absolute right-5 top-1/2 transform -translate-y-1/2 text-white text-2xl bg-black bg-opacity-50 px-3 py-2 rounded-full hover:bg-opacity-75 transition">
        <i class="fas fa-chevron-right"></i>
    </button>

    <!-- Dots Navigation -->
    <div class="absolute bottom-5 left-1/2 transform -translate-x-1/2 flex space-x-3">
        <template x-for="n in slides" :key="n">
            <button @click="activeSlide = n"
                class="w-3 h-3 rounded-full transition-all duration-300"
                :class="activeSlide === n ? 'bg-blue-500 scale-125' : 'bg-gray-300'"></button>
        </template>
    </div>

    </section>

<section class="container mx-auto px-6 py-10">
        <h2 class="text-3xl font-bold text-gray-800 mb-6">Admin Panel</h2>

        <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
            
            <c:forEach var="Admin" items="${admins}">
	            <div class="bg-white shadow-lg rounded-lg overflow-hidden hover:scale-105 transition">
	                <img src="assets/admins/${Admin.filename}" alt="admin 1" class="w-full h-52 object-cover">
	                <div class="p-4">	
	                     <h3 class="text-lg font-semibold text-gray-800">${Admin.name}</h3>
	                    <p class="text-blue-500 font-bold mt-1">${Admin.degree}</p>
	                    <button class="mt-3 bg-blue-500 text-white px-4 py-2 rounded-lg w-full hover:bg-blue-600 transition">
	                        Contact
	                    </button>
	                </div>
	            </div>
			</c:forEach>
        </div>
    </section>
    <%@ include file="./partiels/footer.jsp"%> 

    