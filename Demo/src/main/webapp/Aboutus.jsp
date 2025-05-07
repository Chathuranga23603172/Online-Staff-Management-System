<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BlueHorizon - Staff Management System</title>
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
        
        .about-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            padding: 40px;
            max-width: 1000px;
            margin: 0 auto;
        }
        
        .about-header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .about-header h1 {
            color: #0066cc;
            font-size: 32px;
            margin-bottom: 15px;
        }
        
        .about-header p {
            color: #666;
            font-size: 18px;
        }
        
        .about-content {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .about-text {
            flex: 1;
            min-width: 300px;
        }
        
        .about-text h2 {
            color: #0066cc;
            margin-bottom: 15px;
            font-size: 24px;
        }
        
        .about-text p {
            color: #333;
            line-height: 1.6;
            margin-bottom: 15px;
        }
        
        .about-image {
            flex: 1;
            min-width: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .about-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        
        .team-section {
            margin-top: 50px;
        }
        
        .team-header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .team-header h2 {
            color: #0066cc;
            font-size: 28px;
            margin-bottom: 15px;
        }
        
        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 30px;
        }
        
        .team-member {
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s;
        }
        
        .team-member:hover {
            transform: translateY(-5px);
        }
        
        .team-member img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
        }
        
        .team-member h3 {
            color: #0066cc;
            margin-bottom: 5px;
        }
        
        .team-member p {
            color: #666;
            font-size: 14px;
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
            .about-content {
                flex-direction: column;
            }
            
            .team-grid {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }
        }
    </style>
</head>
<body>
    <header>
        <nav class="top-nav">
            <div class="logo">BlueHorizon</div>
            <a href="Login.jsp">Home</a>
            <a href="Aboutus.jsp">About Us</a>
            <a href="Contactus.jsp">Contact Us</a>
            
        </nav>
    </header>
    
    <main>
        <div class="about-container">
            <div class="about-header">
                <h1>About BlueHorizon Staff Management System</h1>
                <p>Empowering organizations with efficient workforce management since 2010</p>
            </div>
            
            <div class="about-content">
                <div class="about-text">
                    <h2>Our Story</h2>
                    <p>BlueHorizon Staff Management System was developed with a clear purpose: to streamline workforce management and enhance organizational efficiency. What began as an internal solution has evolved into a comprehensive platform serving businesses of all sizes.</p>
                    
                    <p>Over the years, we've helped thousands of organizations transform their HR processes through our intuitive system. Our cloud-based solution has reduced administrative burden, improved compliance, and enhanced employee engagement for clients across numerous industries.</p>
                    
                    <h2>Our Mission</h2>
                    <p>At BlueHorizon, our mission is to simplify workforce management through innovative technology. We believe in creating powerful yet user-friendly solutions that allow organizations to focus on growth while we handle the complexities of staff administration.</p>
                    
                    <h2>Key Features</h2>
                    <p>Our comprehensive staff management system offers:</p>
                    <ul style="list-style-type: disc; margin-left: 20px; margin-bottom: 15px;">
                        <li>Employee onboarding and documentation</li>
                        <li>Attendance tracking and leave management</li>
                        <li>Performance evaluation tools</li>
                        <li>Payroll integration capabilities</li>
                        <li>Advanced reporting and analytics</li>
                        <li>Mobile accessibility for on-the-go management</li>
                    </ul>
                    
                    <h2>Our Values</h2>
                    <p>Security, reliability, innovation, and customer satisfaction drive everything we do. We're committed to protecting your data while providing intuitive solutions that grow with your organization.</p>
                </div>
                
                <div class="about-image">
                    <img src="/api/placeholder/500/300" alt="BlueHorizon Office">
                </div>
            </div>
            
            
                    
       
                </div>

    </main>

    <footer>
        <nav class="bottom-nav">
            <a href="dashboard.jsp">Home</a>
            <a href="about.html">About Us</a>
            <a href="contact.html">Contact Us</a>
        </nav>
        <div class="footer-links">
            <a href="PrivacyPolicy.jsp">Privacy Policy</a> | 
           <a href="TermsandConditions.jsp">Terms and Conditions</a>
        </div>
        <div class="copyright">All rights reserved</div>
    </footer>
</body>
</html>