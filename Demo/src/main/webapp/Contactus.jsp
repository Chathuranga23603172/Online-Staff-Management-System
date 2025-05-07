<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlueHorizon - Contact Us</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            position: relative;
        }
        
        header {
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding: 15px 0;
        }
        
        .top-nav, .bottom-nav {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
            padding: 10px 0;
        }
        
        .top-nav a, .bottom-nav a {
            text-decoration: none;
            color: #333;
            padding: 5px 10px;
            transition: color 0.3s;
        }
        
        .top-nav a:hover, .bottom-nav a:hover {
            color: #0066cc;
        }
        
        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #0066cc;
            margin-right: 20px;
        }
        
        main {
            flex: 1;
            padding: 40px 20px;
        }
        
        .contact-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            padding: 40px;
            max-width: 1000px;
            margin: 0 auto;
        }
        
        .contact-header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .contact-header h1 {
            color: #0066cc;
            font-size: 32px;
            margin-bottom: 15px;
        }
        
        .contact-header p {
            color: #666;
            font-size: 18px;
        }
        
        .contact-content {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .contact-form {
            flex: 1;
            min-width: 300px;
        }
        
        .contact-form h2 {
            color: #0066cc;
            margin-bottom: 20px;
            font-size: 24px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: bold;
        }
        
        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        
        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: #0066cc;
        }
        
        .form-group textarea {
            min-height: 150px;
            resize: vertical;
        }
        
        .btn-submit {
            background-color: #0066cc;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        
        .btn-submit:hover {
            background-color: #0055aa;
        }
        
        .contact-info {
            flex: 1;
            min-width: 300px;
        }
        
        .contact-info h2 {
            color: #0066cc;
            margin-bottom: 20px;
            font-size: 24px;
        }
        
        .info-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 20px;
        }
        
        .info-icon {
            width: 24px;
            height: 24px;
            margin-right: 15px;
            color: #0066cc;
        }
        
        .info-text h3 {
            color: #333;
            font-size: 18px;
            margin-bottom: 5px;
        }
        
        .info-text p {
            color: #666;
            line-height: 1.5;
        }
        
        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background-color: #f5f5f5;
            border-radius: 50%;
            color: #0066cc;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        
        .social-link:hover {
            background-color: #e0e0e0;
        }
        
        .map-container {
            width: 100%;
            height: 300px;
            margin-top: 40px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        
        .map-placeholder {
            width: 100%;
            height: 100%;
            background-color: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #666;
            font-size: 18px;
        }
        
        footer {
            background-color: #fff;
            padding: 15px 0;
            margin-top: auto;
            box-shadow: 0 -2px 5px rgba(0,0,0,0.1);
        }
        
        .footer-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            padding: 10px 0;
            font-size: 14px;
        }
        
        .footer-links a {
            text-decoration: none;
            color: #666;
        }
        
        .footer-links a:hover {
            color: #0066cc;
        }
        
        .copyright {
            text-align: center;
            color: #999;
            font-size: 12px;
            padding: 10px 0;
        }
        
        @media (max-width: 768px) {
            .contact-content {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <header>
        <nav class="top-nav">
            <div class="logo">BlueHorizon</div>
            <a href="dashboard.jsp">Home</a>
            <a href="Aboutus.jsp">About Us</a>
            <a href="Contactus.jsp">Contact Us</a>
           
        </nav>
    </header>
    
    <main>
            <div class="contact-header">
                <h1>Contact BlueHorizon</h1>
                <p>We're here to answer your questions about our Staff Management System</p>
            </div>
            
           
                <div class="contact-form">
                    <h2>Send Us a Message</h2>
                    <form id="contactForm">
                        <div class="form-group">
                            <label for="name">Full Name</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="phone">Phone Number</label>
                            <input type="tel" id="phone" name="phone">
                        </div>
                        

                        
                         <div class="form-group">
                            <label for="company">Subject</label>
                            <input type="text" id="company" name="company">
                        </div>
                        
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea id="message" name="message" required></textarea>
                        </div>
                        
                        <button type="submit" class="btn-submit">Send Message</button>
                    </form>
                </div>
                
                
    </main>

    <footer>
        <nav class="bottom-nav">
            <a href="index.html">Home</a>
            <a href="about.html">About Us</a>
            <a href="contact.html">Contact Us</a>
        </nav>
        <div class="footer-links">
            <a href="PrivacyPolicy.jsp">Privacy Policy</a>| 
           <a href="TermsandConditions.jsp">Terms and Conditions</a>
        </div>
        <div class="copyright">All rights reserved</div>
    </footer>

    <script>
        document.getElementById('contactForm').addEventListener('submit', function(event) {
            event.preventDefault();
            
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const subject = document.getElementById('subject').value;
            const message = document.getElementById('message').value;
            
            if (name.trim() === '' || email.trim() === '' || message.trim() === '') {
                alert('Please fill in all required fields.');
                return;
            }
            
            // In a real application, you would send this data to a server
            // This is just a simple simulation
            console.log('Contact form submission:', { 
                name, 
                email, 
                phone: document.getElementById('phone').value,
                company: document.getElementById('company').value,
                subject, 
                message 
            });
            
            alert('Thank you for your message! We will get back to you soon. (This is just a demo)');
            
            // Reset the form
            this.reset();
        });
    </script>
</body>
</html>