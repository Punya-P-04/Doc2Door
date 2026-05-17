<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Dashboard</title>
    <link rel="stylesheet" href="css/doc.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="container">
        <nav class="sidebar">
            <div class="profile">
                <img src="https://via.placeholder.com/100" alt="Doctor Profile" class="profile-img">
                <h2>Dr. $(modelname)</h2>
                <div class="status-toggle">
                    <label class="switch">
                        <input type="checkbox" id="statusToggle">
                        <span class="slider round"></span>
                    </label>
                    <span id="statusText">Offline</span>
                </div>
            </div>
            <ul class="nav-links">
                <li class="active"><i class="fas fa-home"></i> Dashboard</li>
                <li><i class="fas fa-calendar-alt"></i> Appointments</li>
                <li><i class="fas fa-house-medical"></i> Home Services</li>
                <li><i class="fas fa-user"></i> Profile</li>
                <li><i class="fas fa-cog"></i> Settings</li>
            </ul>
        </nav>
        
        <main class="main-content">
            <header>
                <h1>Welcome Back, Dr. $(modelname)!</h1>
                <div class="search-bar">
                    <input type="text" placeholder="Search...">
                    <i class="fas fa-search"></i>
                </div>
            </header>

            <div class="dashboard-stats">
                <div class="stat-card">
                    <i class="fas fa-user-clock"></i>
                    <h3>Pending Appointments</h3>
                    <p>15</p>
                </div>
                <div class="stat-card">
                    <i class="fas fa-house-medical-circle-check"></i>
                    <h3>Home Service Requests</h3>
                    <p>8</p>
                </div>
                <div class="stat-card">
                    <i class="fas fa-calendar-check"></i>
                    <h3>Today's Appointments</h3>
                    <p>12</p>
                </div>
            </div>

            <section class="appointment-requests">
                <h2>New Appointment Requests</h2>
                <div class="request-cards">
                    <div class="request-card">
                        <img src="https://via.placeholder.com/50" alt="Patient">
                        <div class="request-info">
                            <h3>Sarah Johnson</h3>
                            <p>General Checkup</p>
                            <p class="date">Today, 2:30 PM</p>
                        </div>
                        <div class="request-actions">
                            <button class="accept">Accept</button>
                            <button class="reject">Reject</button>
                        </div>
                    </div>
                    <div class="request-card">
                        <img src="https://via.placeholder.com/50" alt="Patient">
                        <div class="request-info">
                            <h3>shruti</h3>
                            <p>Home Visit Request</p>
                            <p>regular checkup</p>
                            <p class="date">Tomorrow, 10:00 AM</p>
                        </div>
                        <div class="request-actions">
                            <button class="accept">Accept</button>
                            <button class="reject">Reject</button>
                        </div>
                    </div>
                    <div class="request-card">
                        <img src="https://via.placeholder.com/50" alt="Patient">
                        <div class="request-info">
                            <h3>sneha</h3>
                            <p>Follow-up Consultation</p>
                            <p class="date">Tomorrow, 3:15 PM</p>
                        </div>
                        <div class="request-actions">
                            <button class="accept">Accept</button>
                            <button class="reject">Reject</button>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
    <script src="js/dcc.js"></script>
</body>
</html>-->

 