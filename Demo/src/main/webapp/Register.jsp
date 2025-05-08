<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>BlueHorizon - Register</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex flex-col min-h-screen bg-cover bg-center bg-no-repeat" style="background-image: url('assets/dashboard.png');">

    <!-- Header -->
    

    <!-- Main Register Form -->
    <main class="flex-grow flex items-center justify-center px-4 py-10">
        <div class="bg-white rounded-xl shadow-2xl p-8 w-full max-w-md text-center">
            <h2 class="text-3xl font-bold text-blue-700 mb-6">Register</h2>
            <form action="UserInsertServlet" method="post" class="space-y-5">
                <div>
                    <input type="text" name="name" placeholder="Full Name" required
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" />
                </div>
                <div>
                    <input type="email" name="gmail" placeholder="Gmail" required
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" />
                </div>
                <div>
                    <input type="password" name="password" placeholder="Password" required
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" />
                </div>
                <div>
                    <input type="tel" name="phone" placeholder="Phone Number" required
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500" />
                </div>
                <button type="submit"
                    class="w-full bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700 transition">
                    Register
                </button>
            </form>

  
        </div>
    </main>

    <!-- Footer -->
    <
</body>
</html>
