<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Records - Healthcare Services</title>
    <link rel="stylesheet" href="css/sty.css">
    <link rel="stylesheet" href="css/records.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	</head>
	<body>
	    <div class="page-container">
	        <main>
	            <div class="page-header">
	                <h1><i class="fas fa-folder-medical"></i> Medical Records Management</h1>
	                <p class="subtitle">Upload, organize, and access your medical history</p>
	            </div>

	            <div class="records-container">
	                <!-- Upload Section -->
	                <div class="upload-section">
	                    <h2><i class="fas fa-upload"></i> Upload New Record</h2>
	                    <form id="recordUploadForm" class="record-form">
	                        <div class="form-group">
	                            <label for="recordType">Record Type</label>
	                            <select id="recordType" required>
	                                <option value="">Select record type</option>
	                                <option value="prescription">Prescription</option>
	                                <option value="lab-report">Lab Report</option>
	                                <option value="imaging">Imaging (X-Ray, MRI, etc.)</option>
	                                <option value="vaccination">Vaccination Record</option>
	                                <option value="surgery">Surgery Report</option>
	                                <option value="other">Other</option>
	                            </select>
	                        </div>

	                        <div class="form-group">
	                            <label for="recordDate">Date of Record</label>
	                            <input type="date" id="recordDate" required>
	                        </div>

	                        <div class="form-group">
	                            <label for="recordDescription">Description</label>
	                            <textarea id="recordDescription" rows="3" placeholder="Brief description of the record"></textarea>
	                        </div>

	                        <div class="form-group">
	                            <label for="recordFile">Upload File</label>
	                            <div class="file-upload-container">
	                                <input type="file" id="recordFile" accept=".pdf,.jpg,.jpeg,.png" required>
	                                <label for="recordFile" class="file-upload-label">
	                                    <i class="fas fa-cloud-upload-alt"></i>
	                                    <span>Drop file here or click to upload</span>
	                                </label>
	                            </div>
	                        </div>

	                        <button type="submit" class="submit-btn">
	                            <i class="fas fa-save"></i>
	                            Save Record
	                        </button>
	                    </form>
	                </div>

	                <!-- Records Display Section -->
	                <div class="records-display">
	                    <h2><i class="fas fa-folder-medical"></i> Your Medical Records</h2>
	                    
	                    <!-- Filter Controls -->
	                    <div class="filter-controls">
	                        <div class="search-box">
	                            <input type="text" id="searchRecords" placeholder="Search records...">
	                            <i class="fas fa-search"></i>
	                        </div>
	                        <select id="filterType">
	                            <option value="all">All Records</option>
	                            <option value="prescription">Prescriptions</option>
	                            <option value="lab-report">Lab Reports</option>
	                            <option value="imaging">Imaging</option>
	                            <option value="vaccination">Vaccinations</option>
	                            <option value="surgery">Surgery Reports</option>
	                        </select>
	                    </div>

	                    <!-- Records List -->
	                    <div class="records-list" id="recordsList">
	                        <!-- Records will be dynamically added here -->
	                    </div>
	                </div>
	            </div>
	        </main>

	        <!-- Document Viewer Modal -->
	        <div id="documentModal" class="modal">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h3 id="modalTitle">Document Viewer</h3>
	                    <button class="close-modal">
	                        <i class="fas fa-times"></i>
	                    </button>
	                </div>
	                <div class="modal-body">
	                    <div id="documentViewer">
	                        <!-- Document will be displayed here -->
	                    </div>
	                </div>
	            </div>
	        </div>

	        <a href="prof1" class="back-btn">
	            <i class="fas fa-arrow-left"></i>
	            Back to Services
	        </a>
	    </div>
	    <script src="js/records.js"></script>
	</body>
	</html> 