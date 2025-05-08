<!DOCTYPE html>
<html lang="en" x-data="{ open: false }">
<head>
  <meta charset="UTF-8">
  <title>BlueHorizon Admin Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="bg-gray-100">

  <!-- Navigation Bar -->
  <header class="bg-white shadow-md">
    <div class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
      <div class="flex items-center gap-2">
        <i class="fas fa-school text-blue-600 text-2xl"></i>
        <span class="text-xl font-bold text-blue-700">BlueHorizon College</span>
      </div>
      <nav class="space-x-6 text-gray-700 font-medium">
        <a href="#" class="hover:text-blue-600"><i class="fas fa-tachometer-alt mr-1"></i>Dashboard</a>
        <a href="#" class="hover:text-blue-600"><i class="fas fa-users mr-1"></i>Staff</a>
        <a href="#" class="hover:text-blue-600"><i class="fas fa-user-shield mr-1"></i>Admin</a>
        <a href="#" class="hover:text-blue-600"><i class="fas fa-cogs mr-1"></i>Settings</a>
        <a href="logout.jsp" class="text-red-500 hover:text-red-600"><i class="fas fa-sign-out-alt mr-1"></i>Logout</a>
      </nav>
    </div>
  </header>

  <!-- Admin Profile Overview -->
  <main class="py-10 px-4">
    <div class="max-w-4xl mx-auto bg-white p-8 rounded-xl shadow-md">
      
      <div class="flex items-center justify-between mb-6">
        <div class="flex items-center gap-4">
          <img src="https://i.pravatar.cc/100?img=12" alt="Admin Avatar" class="w-20 h-20 rounded-full border-4 border-blue-500 shadow">
          <div>
            <h2 class="text-2xl font-bold text-blue-700">Welcome, Admin</h2>
            <p class="text-sm text-gray-600">System Administrator | BlueHorizon College</p>
          </div>
        </div>
        <button @click="open = !open" class="text-blue-600 hover:text-blue-800 text-lg font-medium">
          <i :class="open ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
          <span class="ml-1">Details</span>
        </button>
      </div>

      <div x-show="open" x-transition class="grid grid-cols-1 md:grid-cols-2 gap-6 border-t pt-6 text-gray-700">
        
        <div class="flex items-center space-x-3">
          <i class="fas fa-id-badge text-blue-500 text-xl"></i>
          <div>
            <p class="text-sm text-gray-500">Admin ID</p>
            <p class="font-medium">ADM1024</p>
          </div>
        </div>

        <div class="flex items-center space-x-3">
          <i class="fas fa-envelope text-blue-500 text-xl"></i>
          <div>
            <p class="text-sm text-gray-500">Email</p>
            <p class="font-medium">admin@bluehorizon.edu</p>
          </div>
        </div>

        <div class="flex items-center space-x-3">
          <i class="fas fa-phone-alt text-blue-500 text-xl"></i>
          <div>
            <p class="text-sm text-gray-500">Phone</p>
            <p class="font-medium">+94 77 123 4567</p>
          </div>
        </div>

        <div class="flex items-center space-x-3">
          <i class="fas fa-location-dot text-blue-500 text-xl"></i>
          <div>
            <p class="text-sm text-gray-500">Location</p>
            <p class="font-medium">Colombo, Sri Lanka</p>
          </div>
        </div>
      </div>
    </div>
  </main>

</body>
</html>
