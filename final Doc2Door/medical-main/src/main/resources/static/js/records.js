document.addEventListener('DOMContentLoaded', function() {
    const recordUploadForm = document.getElementById('recordUploadForm');
    const recordsList = document.getElementById('recordsList');
    const searchInput = document.getElementById('searchRecords');
    const filterType = document.getElementById('filterType');
    const fileInput = document.getElementById('recordFile');
    const fileLabel = document.querySelector('.file-upload-label span');
    const modal = document.getElementById('documentModal');
    const modalTitle = document.getElementById('modalTitle');
    const documentViewer = document.getElementById('documentViewer');
    const closeModal = document.querySelector('.close-modal');

    // Initialize records from localStorage or empty array
    let medicalRecords = JSON.parse(localStorage.getItem('medicalRecords')) || [];

    // File upload preview
    fileInput.addEventListener('change', function() {
        if (this.files.length > 0) {
            fileLabel.textContent = `Selected file: ${this.files[0].name}`;
        } else {
            fileLabel.textContent = 'Drop file here or click to upload';
        }
    });

    // Handle form submission
    recordUploadForm.addEventListener('submit', function(e) {
        e.preventDefault();

        const recordType = document.getElementById('recordType').value;
        const recordDate = document.getElementById('recordDate').value;
        const recordDescription = document.getElementById('recordDescription').value;
        const file = fileInput.files[0];

        if (file) {
            // Create a new record object
            const newRecord = {
                id: Date.now(),
                type: recordType,
                date: recordDate,
                description: recordDescription,
                fileName: file.name,
                fileType: file.type,
                uploadDate: new Date().toISOString()
            };

            // Convert file to base64 for storage
            const reader = new FileReader();
            reader.onload = function(e) {
                newRecord.fileData = e.target.result;
                // Add to records array
                medicalRecords.unshift(newRecord);
                
                // Save to localStorage
                localStorage.setItem('medicalRecords', JSON.stringify(medicalRecords));

                // Update display
                displayRecords(medicalRecords);

                // Show success message
                showSuccessMessage('Medical record uploaded successfully!');

                // Reset form
                recordUploadForm.reset();
                fileLabel.textContent = 'Drop file here or click to upload';
            };
            reader.readAsDataURL(file);
        }
    });

    // Search and filter functionality
    searchInput.addEventListener('input', filterRecords);
    filterType.addEventListener('change', filterRecords);

    function filterRecords() {
        const searchTerm = searchInput.value.toLowerCase();
        const selectedType = filterType.value;

        let filteredRecords = medicalRecords.filter(record => {
            const matchesSearch = record.description.toLowerCase().includes(searchTerm) ||
                                record.fileName.toLowerCase().includes(searchTerm);
            const matchesType = selectedType === 'all' || record.type === selectedType;
            return matchesSearch && matchesType;
        });

        displayRecords(filteredRecords);
    }

    // Display records
    function displayRecords(records) {
        recordsList.innerHTML = '';

        if (records.length === 0) {
            recordsList.innerHTML = `
                <div class="no-records">
                    <i class="fas fa-folder-open"></i>
                    <p>No medical records found</p>
                </div>
            `;
            return;
        }

        records.forEach(record => {
            const recordElement = document.createElement('div');
            recordElement.className = 'record-item';
            recordElement.innerHTML = `
                <div class="record-info">
                    <h3>${formatRecordType(record.type)}</h3>
                    <p><strong>Date:</strong> ${formatDate(record.date)}</p>
                    <p><strong>File:</strong> ${record.fileName}</p>
                    ${record.description ? `<p><strong>Description:</strong> ${record.description}</p>` : ''}
                </div>
                <div class="record-actions">
                    <button onclick="viewRecord(${record.id})" title="View Record">
                        <i class="fas fa-eye"></i>
                    </button>
                    <button onclick="downloadRecord(${record.id})" title="Download Record">
                        <i class="fas fa-download"></i>
                    </button>
                    <button onclick="deleteRecord(${record.id})" title="Delete Record">
                        <i class="fas fa-trash"></i>
                    </button>
                </div>
            `;
            recordsList.appendChild(recordElement);
        });
    }

    // Format record type for display
    function formatRecordType(type) {
        return type.split('-').map(word => 
            word.charAt(0).toUpperCase() + word.slice(1)
        ).join(' ');
    }

    // Format date for display
    function formatDate(dateString) {
        const options = { year: 'numeric', month: 'long', day: 'numeric' };
        return new Date(dateString).toLocaleDateString(undefined, options);
    }

    // Show success message
    function showSuccessMessage(message) {
        const successMessage = document.createElement('div');
        successMessage.className = 'success-message';
        successMessage.innerHTML = `
            <i class="fas fa-check-circle"></i>
            <p>${message}</p>
        `;
        
        document.body.appendChild(successMessage);
        
        setTimeout(() => {
            successMessage.remove();
        }, 3000);
    }

    // Close modal when clicking outside
    modal.addEventListener('click', function(e) {
        if (e.target === modal) {
            closeDocumentViewer();
        }
    });

    // Close modal when clicking close button
    closeModal.addEventListener('click', closeDocumentViewer);

    // Close document viewer
    function closeDocumentViewer() {
        modal.classList.remove('show');
        documentViewer.innerHTML = '';
    }

    // Record actions
    window.viewRecord = function(id) {
        const record = medicalRecords.find(r => r.id === id);
        if (record && record.fileData) {
            modalTitle.textContent = record.fileName;
            
            // Clear previous content
            documentViewer.innerHTML = '';
            
            // Display the document based on file type
            if (record.fileType.startsWith('image/')) {
                const img = document.createElement('img');
                img.src = record.fileData;
                documentViewer.appendChild(img);
            } else if (record.fileType === 'application/pdf') {
                const iframe = document.createElement('iframe');
                iframe.src = record.fileData;
                documentViewer.appendChild(iframe);
            } else {
                documentViewer.innerHTML = `
                    <div class="unsupported-format">
                        <i class="fas fa-file-alt"></i>
                        <p>This file format cannot be previewed directly.</p>
                        <p>Please download the file to view it.</p>
                    </div>
                `;
            }
            
            // Show the modal
            modal.classList.add('show');
        }
    };

    window.downloadRecord = function(id) {
        const record = medicalRecords.find(r => r.id === id);
        if (record && record.fileData) {
            // Create a temporary link element
            const link = document.createElement('a');
            link.href = record.fileData;
            link.download = record.fileName;
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
            
            showSuccessMessage('File download started!');
        }
    };

    window.deleteRecord = function(id) {
        if (confirm('Are you sure you want to delete this record?')) {
            medicalRecords = medicalRecords.filter(record => record.id !== id);
            localStorage.setItem('medicalRecords', JSON.stringify(medicalRecords));
            displayRecords(medicalRecords);
            showSuccessMessage('Record deleted successfully!');
        }
    };

    // Initial display of records
    displayRecords(medicalRecords);
}); 