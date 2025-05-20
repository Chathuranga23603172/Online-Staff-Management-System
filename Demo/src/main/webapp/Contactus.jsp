<%@ include file="./partiels/header.jsp"%>

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
