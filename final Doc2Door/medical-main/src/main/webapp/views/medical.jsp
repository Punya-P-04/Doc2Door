<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharmacist Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        .sidebar {
            min-height: 100vh;
            background-color: #2c3e50;
            color: white;
        }
        .nav-link {
            color: white;
        }
        .nav-link:hover {
            background-color: #34495e;
        }
        .prescription-card {
            border-left: 4px solid #3498db;
        }
        .profile-section {
            background-color: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
        }
        .status-badge {
            padding: 5px 10px;
            border-radius: 15px;
            font-size: 0.8rem;
        }
        .status-pending {
            background-color: #ffc107;
            color: #000;
        }
        .status-processing {
            background-color: #17a2b8;
            color: white;
        }
        .status-ready {
            background-color: #28a745;
            color: white;
        }
        .status-delivered {
            background-color: #6c757d;
            color: white;
        }
        .prescription-image {
            max-width: 100%;
            max-height: 300px;
            object-fit: contain;
        }
        .file-preview {
            cursor: pointer;
            transition: transform 0.2s;
        }
        .file-preview:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 sidebar p-3">
                <h3 class="text-center mb-4">Pharmacist Dashboard</h3>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="#prescriptions" data-bs-toggle="tab">
                            <i class="fas fa-prescription me-2"></i> Prescriptions
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#deliveries" data-bs-toggle="tab">
                            <i class="fas fa-truck me-2"></i> Deliveries
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#profile" data-bs-toggle="tab">
                            <i class="fas fa-user me-2"></i> Profile
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 p-4">
                <div class="tab-content">
                    <!-- Prescriptions Tab -->
                    <div class="tab-pane fade show active" id="prescriptions">
                        <h2 class="mb-4">Prescription Processing</h2>
                        <div class="row">
                            <!-- Sample Prescription Card -->
                            <div class="col-md-6 mb-4">
                                <div class="card prescription-card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                            <h5 class="card-title mb-0">Patient: John Doe</h5>
                                            <span class="status-badge status-pending">Pending</span>
                                        </div>
                                        <p class="card-text">
                                            <strong>Date:</strong> 2024-03-15<br>
                                            <strong>Doctor:</strong> Dr. Smith<br>
                                            <strong>Medications:</strong>
                                            <ul class="list-unstyled">
                                                <li>• Amoxicillin 500mg (2x daily)</li>
                                                <li>• Paracetamol 500mg (3x daily)</li>
                                            </ul>
                                            <strong>Instructions:</strong> Take after meals
                                        </p>
                                        <!-- Prescription Files Section -->
                                        <div class="mb-3">
                                            <strong>Prescription Files:</strong>
                                            <div class="d-flex flex-wrap gap-2 mt-2">
                                                <div class="file-preview" onclick="viewPrescriptionFile(1, 'prescription1.jpg')">
                                                    <img src="https://via.placeholder.com/100" alt="Prescription" class="img-thumbnail" style="width: 100px; height: 100px;">
                                                    <div class="text-center small">prescription1.jpg</div>
                                                </div>
                                                <div class="file-preview" onclick="viewPrescriptionFile(1, 'prescription2.pdf')">
                                                    <i class="fas fa-file-pdf fa-3x text-danger"></i>
                                                    <div class="text-center small">prescription2.pdf</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <button class="btn btn-info" onclick="viewPrescriptionDetails(1)">
                                                <i class="fas fa-eye"></i> View Details
                                            </button>
                                            <div>
                                                <button class="btn btn-success me-2" onclick="processPrescription(1)">
                                                    <i class="fas fa-check"></i> Process
                                                </button>
                                                <button class="btn btn-danger" onclick="rejectPrescription(1)">
                                                    <i class="fas fa-times"></i> Reject
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Deliveries Tab -->
                    <div class="tab-pane fade" id="deliveries">
                        <h2 class="mb-4">Delivery Management</h2>
                        <div class="row">
                            <div class="col-md-6 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                            <h5 class="card-title mb-0">Order #12345</h5>
                                            <span class="status-badge status-processing">Processing</span>
                                        </div>
                                        <p class="card-text">
                                            <strong>Patient:</strong> John Doe<br>
                                            <strong>Address:</strong> 123 Main St, City<br>
                                            <strong>Medications:</strong>
                                            <ul class="list-unstyled">
                                                <li>• Amoxicillin 500mg (2x daily)</li>
                                                <li>• Paracetamol 500mg (3x daily)</li>
                                            </ul>
                                        </p>
                                        <div class="d-flex justify-content-end">
                                            <button class="btn btn-primary" onclick="assignDelivery(1)">
                                                <i class="fas fa-truck"></i> Assign Delivery
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Profile Tab -->
                    <div class="tab-pane fade" id="profile">
                        <h2 class="mb-4">Pharmacist Profile</h2>
                        <div class="profile-section">
                            <form id="profileForm">
                                <div class="mb-3">
                                    <label for="name" class="form-label">Full Name</label>
                                    <input type="text" class="form-control" id="name" required>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" required>
                                </div>
                                <div class="mb-3">
                                    <label for="pharmacy" class="form-label">Pharmacy Name</label>
                                    <input type="text" class="form-control" id="pharmacy" required>
                                </div>
                                <div class="mb-3">
                                    <label for="license" class="form-label">Pharmacist License Number</label>
                                    <input type="text" class="form-control" id="license" required>
                                </div>
                                <div class="mb-3">
                                    <label for="address" class="form-label">Pharmacy Address</label>
                                    <textarea class="form-control" id="address" rows="3" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Save Profile</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Prescription File Modal -->
    <div class="modal fade" id="prescriptionFileModal" tabindex="-1" aria-labelledby="prescriptionFileModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="prescriptionFileModalLabel">Prescription File</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <div id="filePreview">
                        <!-- File preview will be loaded here -->
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="downloadFile()">
                        <i class="fas fa-download"></i> Download
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Function to view prescription details
        function viewPrescriptionDetails(id) {
            // Add your backend integration here
            alert('Viewing prescription details...');
        }

        // Function to process prescription
        function processPrescription(id) {
            if (confirm('Are you sure you want to process this prescription?')) {
                // Add your backend integration here
                alert('Prescription processed successfully!');
            }
        }

        // Function to reject prescription
        function rejectPrescription(id) {
            if (confirm('Are you sure you want to reject this prescription?')) {
                // Add your backend integration here
                alert('Prescription rejected successfully!');
            }
        }

        // Function to assign delivery
        function assignDelivery(id) {
            // Add your backend integration here
            alert('Delivery assigned successfully!');
        }

        // Function to view prescription file
        function viewPrescriptionFile(prescriptionId, fileName) {
            const filePreview = document.getElementById('filePreview');
            const modal = new bootstrap.Modal(document.getElementById('prescriptionFileModal'));
            
            // Clear previous content
            filePreview.innerHTML = '';
            
            // Check file type and display accordingly
            if (fileName.endsWith('.pdf')) {
                filePreview.innerHTML = `
                    <iframe src="https://via.placeholder.com/800x600" style="width: 100%; height: 500px;" frameborder="0"></iframe>
                `;
            } else {
                filePreview.innerHTML = `
                    <img src="https://via.placeholder.com/800x600" alt="Prescription" class="prescription-image">
                `;
            }
            
            modal.show();
        }

        // Function to download file
        function downloadFile() {
            // Add your backend integration here
            alert('File download started...');
        }

        // Handle profile form submission
        document.getElementById('profileForm').addEventListener('submit', function(e) {
            e.preventDefault();
            // Add your backend integration here
            alert('Profile updated successfully!');
        });
    </script>
</body>
</html>