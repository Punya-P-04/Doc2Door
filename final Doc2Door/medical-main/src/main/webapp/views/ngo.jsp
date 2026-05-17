<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NGO Dashboard - Dr Door</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .sidebar {
            min-height: 100vh;
            background-color: #2c3e50;
            color: white;
        }
        .main-content {
            padding: 20px;
        }
        .card {
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .nav-link {
            color: white;
            margin: 10px 0;
        }
        .nav-link:hover {
            background-color: #34495e;
            color: white;
        }
        .modal-content {
            border-radius: 10px;
        }
        .patient-profile-img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin: 0 auto;
            display: block;
        }
        .toast {
            position: fixed;
            top: 20px;
            right: 20px;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 sidebar p-3">
                <h3 class="text-center mb-4">Dr Door NGO Portal</h3>
                <nav class="nav flex-column">
                    <a class="nav-link active" href="#dashboard">
                        <i class="fas fa-home me-2"></i> Dashboard
                    </a>
                    <a class="nav-link" href="#patients">
                        <i class="fas fa-users me-2"></i> Patient Applications
                    </a>
                    <a class="nav-link" href="#funds">
                        <i class="fas fa-hand-holding-usd me-2"></i> Fund Requests
                    </a>
                    <a class="nav-link" href="#reports">
                        <i class="fas fa-chart-bar me-2"></i> Reports
                    </a>
                </nav>
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 main-content">
                <div class="row mb-4">
                    <div class="col">
                        <h2>Welcome, NGO Representative</h2>
                        <p class="text-muted">Review patient applications and fund requests</p>
                    </div>
                </div>

                <!-- Quick Stats -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Pending Applications</h5>
                                <h2 class="text-primary">3</h2>
                                <p class="text-muted">Patients awaiting review</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Active Cases</h5>
                                <h2 class="text-success">5</h2>
                                <p class="text-muted">Currently supported patients</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Total Fund Requests</h5>
                                <h2 class="text-info">₹3,50,000</h2>
                                <p class="text-muted">Total amount requested</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Patient Applications Section -->
                <div class="row mt-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h4>Patient Applications</h4>
                                <div class="btn-group">
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="all">All</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="heart">Heart Disease</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="skin">Skin Disease</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="gynecology">Gynecological</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="cancer">Cancer</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="kidney">Kidney Disease</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="neurology">Neurological</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="orthopedic">Orthopedic</button>
                                    <button class="btn btn-sm btn-outline-primary filter-btn" data-category="pediatric">Pediatric</button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Patient ID</th>
                                                <th>Name</th>
                                                <th>Disease Category</th>
                                                <th>Required Amount</th>
                                                <th>Application Date</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr data-category="heart">
                                                <td>P001</td>
                                                <td>Sneha </td>
                                                <td>Heart Disease</td>
                                                <td>₹1,50,000</td>
                                                <td>2024-03-15</td>
                                                <td><span class="badge bg-warning">Pending</span></td>
                                                <td>
                                                    <button class="btn btn-sm btn-primary view-details" data-bs-toggle="modal" data-bs-target="#patientModal" data-patient-id="P001">View Details</button>
                                                    <button class="btn btn-sm btn-success accept-request" data-patient-id="P001">Accept</button>
                                                    <button class="btn btn-sm btn-danger reject-request" data-patient-id="P001">Reject</button>
                                                </td>
                                            </tr>
                                            <tr data-category="cancer">
                                                <td>P002</td>
                                                <td>Shruti</td>
                                                <td>Cancer</td>
                                                <td>₹1,00,000</td>
                                                <td>2024-03-14</td>
                                                <td><span class="badge bg-warning">Pending</span></td>
                                                <td>
                                                    <button class="btn btn-sm btn-primary view-details" data-bs-toggle="modal" data-bs-target="#patientModal" data-patient-id="P002">View Details</button>
                                                    <button class="btn btn-sm btn-success accept-request" data-patient-id="P002">Accept</button>
                                                    <button class="btn btn-sm btn-danger reject-request" data-patient-id="P002">Reject</button>
                                                </td>
                                            </tr>
                                            <tr data-category="kidney">
                                                <td>P003</td>
                                                <td>Punya</td>
                                                <td>Kidney Disease</td>
                                                <td>₹1,00,000</td>
                                                <td>2024-03-13</td>
                                                <td><span class="badge bg-warning">Pending</span></td>
                                                <td>
                                                    <button class="btn btn-sm btn-primary view-details" data-bs-toggle="modal" data-bs-target="#patientModal" data-patient-id="P003">View Details</button>
                                                    <button class="btn btn-sm btn-success accept-request" data-patient-id="P003">Accept</button>
                                                    <button class="btn btn-sm btn-danger reject-request" data-patient-id="P003">Reject</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Patient Profile Modal -->
    <div class="modal fade" id="patientModal" tabindex="-1" aria-labelledby="patientModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="patientModalLabel">Patient Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="text-center mb-4">
                        <img src="https://via.placeholder.com/100" alt="Patient Photo" class="patient-profile-img mb-3">
                        <h4 id="patientName">Sneha Sharma</h4>
                        <p class="text-muted" id="patientId">ID: P001</p>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <h5>Personal Information</h5>
                            <ul class="list-unstyled">
                                <li><strong>Age:</strong> <span id="patientAge">32</span></li>
                                <li><strong>Gender:</strong> <span id="patientGender">Female</span></li>
                                <li><strong>Contact:</strong> <span id="patientContact">+91 9876543210</span></li>
                                <li><strong>Email:</strong> <span id="patientEmail">sneha.sharma@example.com</span></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h5>Medical Information</h5>
                            <ul class="list-unstyled">
                                <li><strong>Condition:</strong> <span id="patientCondition">Heart Disease</span></li>
                                <li><strong>Required Amount:</strong> <span id="patientAmount">₹1,50,000</span></li>
                                <li><strong>Hospital:</strong> <span id="patientHospital">City General Hospital</span></li>
                                <li><strong>Doctor:</strong> <span id="patientDoctor">Dr. Smith</span></li>
                            </ul>
                        </div>
                    </div>

                    <div class="mt-4">
                        <h5>Financial Background</h5>
                        <div class="card">
                            <div class="card-body">
                                <p><strong>Annual Income:</strong> <span id="patientIncome">₹3,00,000</span></p>
                                <p><strong>Family Members:</strong> <span id="patientFamily">3</span></p>
                                <p><strong>Occupation:</strong> <span id="patientOccupation">Teacher</span></p>
                                <p><strong>Location:</strong> <span id="patientLocation">Mumbai, Maharashtra</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="mt-4">
                        <h5>Documents</h5>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h6>Medical Report</h6>
                                        <button class="btn btn-sm btn-outline-primary">View</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h6>Income Proof</h6>
                                        <button class="btn btn-sm btn-outline-primary">View</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h6>ID Proof</h6>
                                        <button class="btn btn-sm btn-outline-primary">View</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success accept-request-modal">Accept Request</button>
                    <button type="button" class="btn btn-danger reject-request-modal">Reject Request</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Toast Notification -->
    <div class="toast align-items-center text-white bg-success border-0" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="d-flex">
            <div class="toast-body">
                Fund request accepted! The amount will be transferred to the patient's account.
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
    </div>

 
	<script src="js/ng.js"></script>
</body>
</html>
