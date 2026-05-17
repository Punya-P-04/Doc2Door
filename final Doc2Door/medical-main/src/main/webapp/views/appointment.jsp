<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment - Healthcare Services</title>
    <link rel="stylesheet" href="css/sty.css">
    <link rel="stylesheet" href="css/appointment.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="page-container">
        <main>
            <h1>Book Your Appointment</h1>
            <p class="subtitle">Fill in the details below to schedule your appointment</p>

            <div class="appointment-form-container">
                <form  action="AppointForm" method="post"id="appointmentForm" class="appointment-form">
                    <div class="form-group">
                        <label for="patientName">Patient Name</label>
                        <input type="text" id="patientName" name="Pname"required placeholder="Enter patient's full name">
                    </div>
                    
                    <div class="form-group">
                        <label for="phoneNumber">Phone Number</label>
                        <input type="tel" id="phoneNumber" name="Pphno" required placeholder="Enter contact number">
                    </div>
                    
                    <div class="form-group">
                        <label for="hospital">Select Nearby Hospital</label>
                        <select id="hospital" required>
                            <option value="">Choose a hospital</option>
                            <option value="hospital1">City General Hospital</option>
                            <option value="hospital2">Medicare Center</option>
                            <option value="hospital3">Community Health Center</option>
                            <option value="hospital4">Family Care Hospital</option>
                        </select>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="appointmentDate">Preferred Date</label>
                            <input type="date" name="Pdate" id="appointmentDate" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="appointmentTime">Preferred Time</label>
                            <input type="time" name="Ptime" id="appointmentTime" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="condition">Patient Condition/Description</label>
                        <textarea id="condition" name="Pdescription"type="description" rows="4" required placeholder="Please describe your medical condition or reason for visit"></textarea>
                    </div>
                    
                    <button type="submit" class="submit-btn">
                        <i class="fas fa-calendar-check"></i>
                        Book Appointment
                    </button>
                </form>
            </div>
        </main>

        <a href="prof1" class="back-btn">
            <i class="fas fa-arrow-left"></i>
            Back to Services
        </a>
    </div>
  
</body>
</html>