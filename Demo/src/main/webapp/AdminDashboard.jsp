<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" x-data="{ open: false }">
<head>
  <meta charset="UTF-8">
  <title>BlueHorizon Admin Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body class="flex flex-col min-h-screen bg-gray-100 text-gray-800">

  <!-- Navigation Bar -->
  <header class="bg-white shadow-lg">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
      <div class="flex items-center gap-3">
        <i class="fas fa-graduation-cap text-blue-600 text-3xl"></i>
        <span class="text-2xl font-bold text-blue-800 tracking-wide">BlueHorizon College</span>
      </div>
      <nav class="space-x-6 text-gray-700 font-semibold text-base">
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-gauge-high mr-1"></i>Dashboard</a>
        <a href="UserGetAll" class="hover:text-blue-600 transition"><i class="fas fa-user-group mr-1"></i>Staff</a>
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-user-lock mr-1"></i>Admin</a>
        <a href="#" class="hover:text-blue-600 transition"><i class="fas fa-gears mr-1"></i>Settings</a>
        <a href="logout.jsp" class="text-red-500 hover:text-red-600 transition"><i class="fas fa-right-from-bracket mr-1"></i>Logout</a>
      </nav>
    </div>
  </header>

  <!-- Main Content Wrapper -->
  <div class="flex-grow">

    <!-- Admin Profile Overview -->
    <main class="py-10 px-6">
      <div class="max-w-4xl mx-auto bg-white p-8 rounded-2xl shadow-lg transition-all">
        <div class="flex items-center justify-between mb-8">
          <div class="flex items-center gap-6">
        
            <div>
              <h2 class="text-3xl font-bold text-blue-800">Welcome, ${Admin.fullname}</h2>
              <p class="text-sm text-gray-500">System Administrator | BlueHorizon College</p>
            </div>
          </div>
          <button @click="open = !open" class="text-blue-700 hover:text-blue-900 text-lg font-semibold transition">
            <i :class="open ? 'fas fa-chevron-up' : 'fas fa-chevron-down'"></i>
            <span class="ml-1">Details</span>
          </button>
        </div>

        <div x-show="open" x-transition class="grid grid-cols-1 md:grid-cols-2 gap-6 border-t pt-6">
          <div class="flex items-center space-x-3">
            <i class="fas fa-id-card-clip text-blue-600 text-xl"></i>
            <div>
              <p class="text-sm text-gray-500">Admin ID</p>
              <p class="font-semibold">${Admin.id}</p>
            </div>
          </div>

          <div class="flex items-center space-x-3">
            <i class="fas fa-building-columns text-blue-600 text-xl"></i>
            <div>
              <p class="text-sm text-gray-500">University</p>
              <p class="font-semibold">${Admin.university}</p>
            </div>
          </div>

          <div class="flex items-center space-x-3">
            <i class="fas fa-user-graduate text-blue-600 text-xl"></i>
            <div>
              <p class="text-sm text-gray-500">Degree</p>
              <p class="font-semibold">${Admin.degree}</p>
            </div>
          </div>

          <div class="flex items-center space-x-3">
            <i class="fas fa-user-tag text-blue-600 text-xl"></i>
            <div>
              <p class="text-sm text-gray-500">User-Name</p>
              <p class="font-semibold">${Admin.username}</p>
            </div>
          </div>

          <!-- Edit and Delete Buttons -->
          <div class="col-span-1 md:col-span-2 flex justify-end space-x-4 mt-4">
            <a href="AdminEdit.jsp?id=${Admin.id}&fullname=${Admin.fullname}&university=${Admin.university}&degree=${Admin.degree}&username=${Admin.username}&password=${Admin.password}" class="px-4 py-2 bg-yellow-500 text-white rounded-lg hover:bg-yellow-600 transition">
              <i class="fas fa-pen-to-square mr-1"></i>Edit
            </a>
            <form action="DeleteAdminServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this admin?')">
              <input type="hidden" name="id" value="${Admin.id}">
              <button type="submit" class="px-4 py-2 bg-red-500 text-white rounded-lg hover:bg-red-600 transition">
                <i class="fas fa-trash-can mr-1"></i>Delete
              </button>
            </form>
          </div>
        </div>
      </div>
    </main>

    <!-- Department Management Section -->
    <section class="max-w-6xl mx-auto px-6 py-10">
      <div class="bg-white shadow-xl rounded-2xl p-6">
        <div class="flex items-center justify-between mb-8">
          <h2 class="text-2xl font-bold text-blue-800 flex items-center gap-2">
            <i class="fas fa-landmark text-blue-600"></i> Department Management
          </h2>
          <a href="AddDepartment.jsp" 
             class="bg-green-600 hover:bg-green-700 text-white px-5 py-2 rounded-full shadow-md flex items-center gap-2 transition">
            <i class="fas fa-circle-plus"></i> Add Department
          </a>
        </div>

        <div class="overflow-x-auto">
          <table class="min-w-full divide-y divide-gray-200 text-sm">
            <thead class="bg-green-100 text-green-800 uppercase text-xs">
              <tr>
                <th class="px-4 py-3 text-left">Dept ID</th>
                <th class="px-4 py-3 text-left">Department Name</th>
                <th class="px-4 py-3 text-left">Head of Department</th>
                <th class="px-4 py-3 text-left">Actions</th>
              </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-100">
              <tr class="hover:bg-green-50 transition">
                <td class="px-4 py-3 font-medium">D001</td>
                <td class="px-4 py-3">Computer Science</td>
                <td class="px-4 py-3">Prof. Alan Turing</td>
                <td class="px-4 py-3 flex gap-4">
                  <a href="EditDepartment.jsp?id=D001" class="text-yellow-500 hover:text-yellow-600 transition">
                    <i class="fas fa-pen-to-square"></i>
                  </a>
                  <form action="DeleteDepartmentServlet" method="post" onsubmit="return confirm('Are you sure?')">
                    <input type="hidden" name="id" value="D001">
                    <button type="submit" class="text-red-500 hover:text-red-600 transition">
                      <i class="fas fa-trash-can"></i>
                    </button>
                  </form>
                </td>
              </tr>
              <!-- Add more rows dynamically -->
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </div>

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
