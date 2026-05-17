<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration - Dr Door</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .register-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .register-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .register-header i {
            font-size: 3rem;
            color: #2c3e50;
            margin-bottom: 15px;
        }
        .btn-register {
            background-color: #2c3e50;
            color: white;
            padding: 10px 30px;
            border: none;
            border-radius: 5px;
        }
        .btn-register:hover {
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
        .ngo-fields, .patient-fields {
            display: none;
        }
        .ngo-fields.show, .patient-fields.show {
            display: block;
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

        <div class="register-container">
            <div class="register-header">
                <i class="fas fa-user-plus"></i>
                <h2 data-translate="registration">Registration</h2>
                <p class="text-muted" data-translate="joinMessage">Join Dr Door to get medical assistance</p>
            </div>
			
            <!-- User Type Selector -->
            <div class="user-type-selector">
                <div class="btn-group" role="group">
                    <input type="radio" class="btn-check" name="userType" id="patient" value="patient" checked>
                    <label class="btn btn-outline-primary" for="patient" data-translate="patient">Patient</label>

                    <input type="radio" class="btn-check" name="userType" id="ngo" value="ngo">
                    <label class="btn btn-outline-primary" for="ngo" data-translate="ngo">NGO</label>
                </div>
            </div>
			<form action="ngoreg" method="post" id="registerForm">
            
                <!-- Common Fields -->
                <div class="mb-3">
                    <label for="name" class="form-label" data-translate="name">Name</label>
                    <input type="text"name="name" class="form-control" id="name" required>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label" data-translate="email">Email address</label>
                    <input type="email" name="email" class="form-control" id="email" required>
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label" data-translate="phone">Phone Number</label>
                    <input type="tel" name="phno" class="form-control" id="phone" required>
                </div>

                <!-- Patient Specific Fields -->
                <div class="patient-fields show">
                    <div class="mb-3">
                        <label for="age" class="form-label" data-translate="age">Age</label>
                        <input type="number" name="age" class="form-control" id="age">
                    </div>

                    <div class="mb-3">
                        <label for="gender" class="form-label" data-translate="gender">Gender</label>
                        <select class="form-select" id="gender">
                            <option value="" data-translate="selectGender">Select Gender</option>
                            <option value="male" data-translate="male">Male</option>
                            <option value="female" data-translate="female">Female</option>
                            <option value="other" data-translate="other">Other</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="address" name="address" class="form-label" data-translate="address">Address</label>
                        <textarea class="form-control" id="address" rows="3"></textarea>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="city" class="form-label" data-translate="city">City</label>
                            <input type="text" class="form-control" id="city">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="state" class="form-label" data-translate="state">State</label>
                            <input type="text" class="form-control" id="state">
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="pincode" class="form-label" data-translate="pincode">Pincode</label>
                        <input type="text" name="pincode" class="form-control" id="pincode">
                    </div>
                </div>

                <!-- NGO Specific Fields -->
                <div class="ngo-fields">
                    <div class="mb-3">
                        <label for="organizationName" class="form-label" data-translate="organizationName">Organization Name</label>
                        <input type="text" class="form-control" name="organizationName" id="organizationName">
                    </div>

                    <div class="mb-3">
                        <label for="registrationNumber" class="form-label" data-translate="registrationNumber">Registration Number</label>
                        <input type="text" class="form-control" name="registrationNumber" id="registrationNumber">
                    </div>

                    <div class="mb-3">
                        <label for="organizationAddress" class="form-label" data-translate="organizationAddress">Organization Address</label>
                        <textarea class="form-control" name="organizationAddress" id="organizationAddress" rows="3"></textarea>
                    </div>
                </div>

                <!-- Common Fields -->
                <div class="mb-3">
                    <label for="password" class="form-label" data-translate="password">Password</label>
                    <input type="password" class="form-control" id="password" required>
                </div>

                <div class="mb-3">
                    <label for="confirmPassword" class="form-label" data-translate="confirmPassword">Confirm Password</label>
                    <input type="password" class="form-control" id="confirmPassword" required>
                </div>

                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="termsAndConditions" required>
                    <label class="form-check-label" for="termsAndConditions">
                        <span data-translate="agreeTerms">I agree to the</span> <a href="#" class="text-decoration-none" data-translate="termsAndConditions">Terms and Conditions</a>
                    </label>
                </div>

               <input type="submit" value="SIGNUP">
			  <button>
            </form>

            <div class="text-center mt-3">
                <p><span data-translate="alreadyHaveAccount">Already have an account?</span> <a href="NgoLogPage" class="text-decoration-none" data-translate="loginHere">Login here</a></p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!--script>
        document.addEventListener('DOMContentLoaded', function() {
            const registerForm = document.getElementById('registerForm');
            const userTypeRadios = document.querySelectorAll('input[name="userType"]');
            const patientFields = document.querySelector('.patient-fields');
            const ngoFields = document.querySelector('.ngo-fields');
            
            // Language translation
            const translations = {
                en: {
                    registration: "Registration",
                    joinMessage: "Join Dr Door to get medical assistance",
                    patient: "Patient",
                    ngo: "NGO",
                    name: "Name",
                    email: "Email address",
                    phone: "Phone Number",
                    age: "Age",
                    gender: "Gender",
                    selectGender: "Select Gender",
                    male: "Male",
                    female: "Female",
                    other: "Other",
                    address: "Address",
                    city: "City",
                    state: "State",
                    pincode: "Pincode",
                    organizationName: "Organization Name",
                    registrationNumber: "Registration Number",
                    organizationAddress: "Organization Address",
                    password: "Password",
                    confirmPassword: "Confirm Password",
                    agreeTerms: "I agree to the",
                    termsAndConditions: "Terms and Conditions",
                    register: "Register",
                    alreadyHaveAccount: "Already have an account?",
                    loginHere: "Login here"
                },
                hi: {
                    registration: "पंजीकरण",
                    joinMessage: "चिकित्सा सहायता प्राप्त करने के लिए डॉ डोर से जुड़ें",
                    patient: "रोगी",
                    ngo: "एनजीओ",
                    name: "नाम",
                    email: "ईमेल पता",
                    phone: "फोन नंबर",
                    age: "आयु",
                    gender: "लिंग",
                    selectGender: "लिंग चुनें",
                    male: "पुरुष",
                    female: "महिला",
                    other: "अन्य",
                    address: "पता",
                    city: "शहर",
                    state: "राज्य",
                    pincode: "पिन कोड",
                    organizationName: "संगठन का नाम",
                    registrationNumber: "पंजीकरण संख्या",
                    organizationAddress: "संगठन का पता",
                    password: "पासवर्ड",
                    confirmPassword: "पासवर्ड की पुष्टि करें",
                    agreeTerms: "मैं सहमत हूं",
                    termsAndConditions: "नियम और शर्तें",
                    register: "पंजीकरण करें",
                    alreadyHaveAccount: "पहले से ही एक खाता है?",
                    loginHere: "यहां लॉगिन करें"
                },
                kn: {
                    registration: "ನೋಂದಣಿ",
                    joinMessage: "ವೈದ್ಯಕೀಯ ಸಹಾಯ ಪಡೆಯಲು ಡಾ. ಡೋರ್‌ಗೆ ಸೇರಿಕೊಳ್ಳಿ",
                    patient: "ರೋಗಿ",
                    ngo: "ಎನ್‌ಜಿಒ",
                    name: "ಹೆಸರು",
                    email: "ಇಮೇಲ್ ವಿಳಾಸ",
                    phone: "ಫೋನ್ ಸಂಖ್ಯೆ",
                    age: "ವಯಸ್ಸು",
                    gender: "ಲಿಂಗ",
                    selectGender: "ಲಿಂಗವನ್ನು ಆಯ್ಕೆಮಾಡಿ",
                    male: "ಪುರುಷ",
                    female: "ಹೆಣ್ಣು",
                    other: "ಇತರೆ",
                    address: "ವಿಳಾಸ",
                    city: "ನಗರ",
                    state: "ರಾಜ್ಯ",
                    pincode: "ಪಿನ್‌ಕೋಡ್",
                    organizationName: "ಸಂಸ್ಥೆಯ ಹೆಸರು",
                    registrationNumber: "ನೋಂದಣಿ ಸಂಖ್ಯೆ",
                    organizationAddress: "ಸಂಸ್ಥೆಯ ವಿಳಾಸ",
                    password: "ಪಾಸ್‌ವರ್ಡ್",
                    confirmPassword: "ಪಾಸ್‌ವರ್ಡ್ ದೃಢೀಕರಿಸಿ",
                    agreeTerms: "ನಾನು ಒಪ್ಪುತ್ತೇನೆ",
                    termsAndConditions: "ನಿಯಮಗಳು ಮತ್ತು ಷರತ್ತುಗಳು",
                    register: "ನೋಂದಣಿ",
                    alreadyHaveAccount: "ಈಗಾಗಲೇ ಖಾತೆ ಇದೆಯೇ?",
                    loginHere: "ಇಲ್ಲಿ ಲಾಗಿನ್ ಮಾಡಿ"
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

            // Handle user type selection
            userTypeRadios.forEach(radio => {
                radio.addEventListener('change', function() {
                    if (this.value === 'patient') {
                        patientFields.classList.add('show');
                        ngoFields.classList.remove('show');
                    } else {
                        patientFields.classList.remove('show');
                        ngoFields.classList.add('show');
                    }
                });
            });

            registerForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                // Validate passwords match
                const password = document.getElementById('password').value;
                const confirmPassword = document.getElementById('confirmPassword').value;
                
                if (password !== confirmPassword) {
                    alert('Passwords do not match!');
                    return;
                }
                
                const userType = document.querySelector('input[name="userType"]:checked').value;
                const formData = {
                    userType: userType,
                    name: document.getElementById('name').value,
                    email: document.getElementById('email').value,
                    phone: document.getElementById('phone').value,
                    password: password
                };

                // Add user type specific fields
                if (userType === 'patient') {
                    formData.age = document.getElementById('age').value;
                    formData.gender = document.getElementById('gender').value;
                    formData.address = document.getElementById('address').value;
                    formData.city = document.getElementById('city').value;
                    formData.state = document.getElementById('state').value;
                    formData.pincode = document.getElementById('pincode').value;
                } else {
                    formData.organizationName = document.getElementById('organizationName').value;
                    formData.registrationNumber = document.getElementById('registrationNumber').value;
                    formData.organizationAddress = document.getElementById('organizationAddress').value;
                }
                
                // Store user data in localStorage
                localStorage.setItem('registeredUser', JSON.stringify(formData));
                
                // Redirect to login page
               // window.location.href = 'login.html';
            });
        });
    </script>-->
</body>
</html>