<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Home Visit - Healthcare Services</title>
    <link rel="stylesheet" href="css/sty.css">
    <link rel="stylesheet" href="css/homereq.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="page-container">
        <main>
            <h1>Request Home Visit</h1>
            <p class="subtitle">Get medical care at your doorstep</p>

            <div class="home-visit-form-container">
                <form id="homeRequestForm" class="home-visit-form">
                    <div class="form-group">
                        <label for="patientName">Patient Name</label>
                        <input type="text" id="patientName" required placeholder="Enter patient's full name">
                    </div>
                    
                    <div class="form-group">
                        <label for="phoneNumber">Phone Number</label>
                        <input type="tel" id="phoneNumber" required placeholder="Enter contact number">
                    </div>
                    
                    <div class="form-group">
                        <label for="homeAddress">Home Address</label>
                        <textarea id="homeAddress" rows="2" required placeholder="Enter complete home address"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="currentLocation">Current Location</label>
                        <input type="text" id="currentLocation" required placeholder="Enter current location if different from home">
                        <button type="button" id="getLocation" class="location-btn">
                            <i class="fas fa-location-dot"></i>
                            Use Current Location
                        </button>
                    </div>
                    
                    
                    
                    <div class="form-group">
                        <label for="urgencyLevel">Level of Urgency</label>
                        <select id="urgencyLevel" required>
                            <option value="">Select urgency level</option>
                            <option value="routine">Routine Check-up</option>
                            <option value="non-urgent">Non-Urgent Care</option>
                            <option value="urgent">Urgent Care</option>
                            <option value="emergency">Emergency (Consider calling emergency services)</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="condition">Patient Condition</label>
                        <textarea id="condition" rows="4" required placeholder="Please describe the patient's symptoms or medical condition"></textarea>
                    </div>
                    
                    <button type="submit" class="submit-btn">
                        <i class="fas fa-house-medical"></i>
                        Request Home Visit
                    </button>
                </form>
            </div>
        </main>

        <div id="emergencyAlert" class="emergency-alert">
            <i class="fas fa-exclamation-triangle"></i>
            <p>For life-threatening emergencies, please call emergency services immediately!</p>
            <p class="emergency-number">Emergency: 108!!</p>
        </div>

        <a href="prof1" class="back-btn">
            <i class="fas fa-arrow-left"></i>
            Back to Services
        </a>
    </div>
    <script src="js/homereq.js"></script>
</body>
</html>