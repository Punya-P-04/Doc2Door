<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Dr Door</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .login-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .login-header i {
            font-size: 3rem;
            color: #2c3e50;
            margin-bottom: 15px;
        }
        .btn-login {
            background-color: #2c3e50;
            color: white;
            padding: 10px 30px;
            border: none;
            border-radius: 5px;
        }
        .btn-login:hover {
            background-color: #34495e;
            color: white;
        }
        .language-selector {
            position: absolute;
            top: 20px;
            right: 20px;
        }
        .language-selector select {
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #dee2e6;
        }
        .user-type-selector {
            margin-bottom: 20px;
        }
        .user-type-selector .btn-group {
            width: 100%;
        }
        .user-type-selector .btn {
            width: 50%;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Language Selector -->
        <div class="language-selector">
            <select id="languageSelect" class="form-select">
                <option value="en">English</option>
                <option value="hi">हिंदी</option>
                <option value="kn">ಕನ್ನಡ</option>
            </select>
        </div>

        <div class="login-container">
            <div class="login-header">
                <i class="fas fa-user-circle"></i>
                <h2 data-translate="login">Login</h2>
                <p class="text-muted" data-translate="welcomeMessage">Welcome to Dr Door</p>
            </div>

            <!-- User Type Selector -->
            <div class="user-type-selector">
                <div class="btn-group" role="group">
                    <input type="radio" class="btn-check" name="patient" id="patient" value="patient" checked>
                    <label class="btn btn-outline-primary" for="patient" data-translate="patient">Patient</label>

                    <input type="radio" class="btn-check"  id="ngo" value="ngo">
                    <label class="btn btn-outline-primary" for="ngo" data-translate="ngo">NGO</label>
                </div>
            </div>

            <form method="post" action="NgoLogForm" id="NgoLogForm">
                <div class="mb-3">
                    <label for="email" class="form-label" data-translate="email">Email address</label>
                    <input name="email" type="email" class="form-control" id="email" required>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label" data-translate="password">Password</label>
                    <input name="password" type="password" class="form-control" id="password" required>
                </div>

                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="rememberMe">
                    <label class="form-check-label" for="rememberMe" data-translate="rememberMe">Remember me</label>
                </div>

                <button type="submit" class="btn btn-login w-100" data-translate="login">Login</button>
            </form>

            <div class="text-center mt-3">
                <p><span data-translate="noAccount">Don't have an account?</span> <a href="NgoRegPage" class="text-decoration-none" data-translate="registerHere">Register here</a></p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const loginForm = document.getElementById('loginForm');
            
            // Language translation
            const translations = {
                en: {
                    login: "Login",
                    welcomeMessage: "Welcome to Dr Door",
                    patient: "Patient",
                    ngo: "NGO",
                    email: "Email address",
                    password: "Password",
                    rememberMe: "Remember me",
                    noAccount: "Don't have an account?",
                    registerHere: "Register here"
                },
                hi: {
                    login: "लॉग इन",
                    welcomeMessage: "डॉ डोर में आपका स्वागत है",
                    patient: "रोगी",
                    ngo: "एनजीओ",
                    email: "ईमेल पता",
                    password: "पासवर्ड",
                    rememberMe: "मुझे याद रखें",
                    noAccount: "खाता नहीं है?",
                    registerHere: "यहां पंजीकरण करें"
                },
                kn: {
                    login: "ಲಾಗಿನ್",
                    welcomeMessage: "ಡಾ. ಡೋರ್‌ಗೆ ಸುಸ್ವಾಗತ",
                    patient: "ರೋಗಿ",
                    ngo: "ಎನ್‌ಜಿಒ",
                    email: "ಇಮೇಲ್ ವಿಳಾಸ",
                    password: "ಪಾಸ್‌ವರ್ಡ್",
                    rememberMe: "ನನ್ನನ್ನು ನೆನಪಿಡಿ",
                    noAccount: "ಖಾತೆ ಇಲ್ಲವೇ?",
                    registerHere: "ಇಲ್ಲಿ ನೋಂದಣಿ ಮಾಡಿ"
                }
            };

            const languageSelect = document.getElementById('languageSelect');
            languageSelect.addEventListener('change', function() {
                const selectedLanguage = this.value;
                updateLanguage(selectedLanguage);
            });

            function updateLanguage(language) {
                const translation = translations[language];
                if (!translation) return;

                // Update all translatable elements
                document.querySelectorAll('[data-translate]').forEach(element => {
                    const key = element.getAttribute('data-translate');
                    if (translation[key]) {
                        element.textContent = translation[key];
                    }
                });
            }

            loginForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                const userType = document.querySelector('input[name="userType"]:checked').value;
                const email = document.getElementById('email').value;
                const password = document.getElementById('password').value;
                
                // Get registered user data from localStorage
                const registeredUser = JSON.parse(localStorage.getItem('registeredUser'));
                
                if (!registeredUser) {
                    alert('No registered user found. Please register first.');
                    return;
                }
                
                // Validate credentials
                if (registeredUser.email === email && registeredUser.password === password && registeredUser.userType === userType) {
                    // Store logged-in user data
                    localStorage.setItem('loggedInUser', JSON.stringify({
                        name: registeredUser.name,
                        email: registeredUser.email,
                        userType: registeredUser.userType
                    }));
                    
                    // Redirect based on user type
                    if (userType === 'patient') {
                        window.location.href = 'patient-dashboard.html';
                    } else {
                        window.location.href = 'ngo.html';
                    }
                } else {
                    alert('Invalid credentials or user type mismatch!');
                }
            });
        });
    </script>
</body>
</html>