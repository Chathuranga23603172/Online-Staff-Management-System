<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Portal - Select User Type</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-image: url('Img/login.jpg'); 
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
             padding: 60px;
        }

        .container {
            max-width: 800px;
            width: 100%;
        }

        .header {
            text-align: center;
            margin-bottom: 50px;
            color: white;
        }

        .header h1 {
            font-size: 3rem;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .header p {
            font-size: 1.2rem;
            opacity: 0.9;
        }

        .cards-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-top: 40px;
            justify-content: center;
        }

        .user-card {
            background: white;
            border-radius: 20px;
            padding: 40px 30px;
            text-align: center;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }

        .user-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 25px 50px rgba(0,0,0,0.2);
        }

        .user-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, var(--card-color), var(--card-color-light));
        }

        .admin-card {
            --card-color: #e74c3c;
            --card-color-light: #f39c12;
        }

        .teacher-card {
            --card-color: #3498db;
            --card-color-light: #2ecc71;
        }

        .card-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 20px;
            background: linear-gradient(135deg, var(--card-color), var(--card-color-light));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            color: white;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        .card-title {
            font-size: 1.8rem;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .card-description {
            color: #7f8c8d;
            font-size: 1rem;
            line-height: 1.6;
            margin-bottom: 25px;
        }

        .card-button {
            background: linear-gradient(135deg, var(--card-color), var(--card-color-light));
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .card-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        }

        .footer {
            text-align: center;
            margin-top: 50px;
            color: white;
            opacity: 0.8;
        }

        @media (max-width: 768px) {
            .header h1 {
                font-size: 2rem;
            }
            
            .cards-container {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            
            .user-card {
                padding: 30px 20px;
            }
        }

        /* Loading animation */
        .loading {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.8);
            z-index: 9999;
            justify-content: center;
            align-items: center;
        }

        .spinner {
            width: 50px;
            height: 50px;
            border: 5px solid #f3f3f3;
            border-top: 5px solid #3498db;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="loading" id="loading">
        <div class="spinner"></div>
    </div>

    <div class="container">
        <div class="header">
            <h1>Welcome to Login Portal</h1>
            <p>Please select your user type to continue</p>
        </div>

        <div class="cards-container">
            <!-- Admin Card -->
            <div class="user-card admin-card" onclick="redirectToLogin('admin')">
                <div class="card-icon">
                    <i class="fas fa-user-shield"></i>
                </div>
                <h3 class="card-title">Admin</h3>
                <p class="card-description">
                    System administrators with full access to manage users, settings, and system configurations.
                </p>
                <button class="card-button">Login as Admin</button>
            </div>

            <!-- Teacher Card -->
            <div class="user-card teacher-card" onclick="redirectToLogin('teacher')">
                <div class="card-icon">
                    <i class="fas fa-chalkboard-teacher"></i>
                </div>
                <h3 class="card-title">Teacher</h3>
                <p class="card-description">
                    
					Allows teachers to securely log in, send a leave request and manage class tasks.

                </p>
                <button class="card-button">Login as Teacher</button>
            </div>
        </div>

        <div class="footer">
            <p>&copy; 2025 BlueHorizon College. All rights reserved.</p>
        </div>
    </div>

    <script>
        function redirectToLogin(userType) {
            // Show loading animation
            document.getElementById('loading').style.display = 'flex';
            
            // Add a small delay for better user experience
            setTimeout(() => {
                switch(userType.toLowerCase()) {
                    case 'admin':
                        window.location.href = 'AdminLogin.jsp';
                        break;
                    case 'teacher':
                        window.location.href = 'Login.jsp';
                        break;
                 
                }
            }, 500);
        }

        // Add click animation
        document.querySelectorAll('.user-card').forEach(card => {
            card.addEventListener('click', function() {
                this.style.transform = 'scale(0.95)';
                setTimeout(() => {
                    this.style.transform = '';
                }, 150);
            });
        });

        // Prevent loading screen from staying if back button is pressed
        window.addEventListener('pageshow', function(event) {
            if (event.persisted) {
                document.getElementById('loading').style.display = 'none';
            }
        });
    </script>
</body>
</html>
