<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>BlueHorizon - Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex flex-col min-h-screen bg-cover bg-center bg-no-repeat" style="background-image: url('assets/dashboard.png');">

    <!-- Header -->
    <header class="bg-white shadow-md">
        <nav class="flex justify-center items-center gap-8 py-4">
            <div class="text-2xl font-bold text-blue-700">BlueHorizon</div>
            <a href="HomePage.jsp" class="text-gray-800 hover:text-blue-600">Home</a>
            <a href="Aboutus.jsp" class="text-gray-800 hover:text-blue-600">About Us</a>
            <a href="Contactus.jsp" class="text-gray-800 hover:text-blue-600">Contact Us</a>
        </nav>
    </header>

    <!-- Main Login Form -->
    <main class="flex-grow flex items-center justify-center px-4 py-10">
        <div class="bg-white rounded-xl shadow-2xl p-8 w-full max-w-md text-center">
            <h2 class="text-3xl font-bold text-blue-700 mb-6"> Teacher Staff Log In</h2>
            <form action="LoginServlet" method="post" class="space-y-5">
                <div>
                    <input type="text" id="name" name="name" placeholder="Username" required
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" />
                </div>
                <div>
                    <input type="password" id="password" name="password" placeholder="Password" required
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" />
                </div>
                <button id="loginBtn" type="submit"
                    class="w-full bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700 transition">
                    Login
                </button>
            </form>


        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white shadow-inner mt-auto">
        <nav class="flex justify-center gap-6 py-3 text-sm text-gray-700">
            <a href="index.html" class="hover:text-blue-600">Home</a>
            <a href="about.html" class="hover:text-blue-600">About Us</a>
            <a href="contact.html" class="hover:text-blue-600">Contact Us</a>
        </nav>
        <div class="flex justify-center gap-4 text-xs text-gray-500 py-2">
            <a href="PrivacyPolicy.jsp" class="hover:text-blue-600">Privacy Policy</a> |
            <a href="TermsandConditions.jsp" class="hover:text-blue-600">Terms and Conditions</a>
        </div>
        <div class="text-center text-xs text-gray-400 py-2">
            All rights reserved
        </div>
    </footer>

    <!-- JS Script -->
    <script>
        document.getElementById('loginBtn').addEventListener('click', function(event) {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (username.trim() === '' || password.trim() === '') {
                alert('Please enter both username and password.');
                event.preventDefault();
            } else {
                console.log('Login attempt:', { username, password });
                alert('Login successful! (This is just a demo)');
            }
        });
    </script>
</body>
</html>
