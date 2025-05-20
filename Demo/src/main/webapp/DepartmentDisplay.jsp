<%@ include file="./partiels/header.jsp"%>
    <!-- Main Content -->
    <main class="flex-grow max-w-7xl mx-auto px-6 py-10">
        <div class="flex justify-between items-center mb-6">
            <h2 class="text-3xl font-bold text-gray-800 flex items-center">
                <i class="fa-solid fa-building-columns mr-2 text-blue-600"></i>Department List
            </h2>
        </div>

        <!-- Table -->
        <div class="bg-white shadow-md rounded-xl overflow-x-auto">
            <table class="min-w-[1200px] text-sm text-left table-auto w-full">
                <thead class="bg-blue-600 text-white uppercase text-xs">
                    <tr>
                        <th class="px-6 py-4"><i class="fa-solid fa-id-badge mr-1"></i>ID</th>
                        <th class="px-6 py-4"><i class="fa-solid fa-building mr-1"></i>Department Name</th>
                        <th class="px-6 py-4"><i class="fa-solid fa-phone mr-1"></i>Contact</th>
                        <th class="px-6 py-4"><i class="fa-solid fa-user-tie mr-1"></i>Head</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    <c:forEach var="faculty" items="${allfaculty}">
                        <tr class="hover:bg-gray-50 transition">
                            <td class="px-6 py-4 font-medium">${faculty.id}</td>
                            <td class="px-6 py-4">${faculty.facultyname}</td>
                            <td class="px-6 py-4">${faculty.contact}</td>
                            <td class="px-6 py-4">${faculty.name}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>

  <%@ include file="./partiels/footer.jsp"%> 