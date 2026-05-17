document.addEventListener('DOMContentLoaded', function() {
        const toast = new bootstrap.Toast(document.querySelector('.toast'));
        
        // Filter functionality
        document.querySelectorAll('.filter-btn').forEach(button => {
            button.addEventListener('click', function() {
                const category = this.getAttribute('data-category');
                
                // Update active button
                document.querySelectorAll('.filter-btn').forEach(btn => {
                    btn.classList.remove('active');
                });
                this.classList.add('active');
                
                // Filter table rows
                const rows = document.querySelectorAll('tbody tr');
                rows.forEach(row => {
                    if (category === 'all' || row.getAttribute('data-category') === category) {
                        row.style.display = '';
                    } else {
                        row.style.display = 'none';
                    }
                });
            });
        });

        // Function to update row status and buttons
        function updateRowStatus(row, status) {
            const badge = row.querySelector('.badge');
            const acceptBtn = row.querySelector('.accept-request');
            const rejectBtn = row.querySelector('.reject-request');
            
            // Update badge
            badge.className = badge bg-${status === 'Approved' ? 'success' : 'danger'};
            badge.textContent = status;
            
            // Hide buttons if status is not pending
            if (status !== 'Pending') {
                acceptBtn.style.display = 'none';
                rejectBtn.style.display = 'none';
            }
        }
        
        // Handle accept/reject buttons in table
        document.querySelectorAll('.accept-request').forEach(button => {
            button.addEventListener('click', function() {
                const patientId = this.getAttribute('data-patient-id');
                if (confirm(Are you sure you want to accept the fund request for Patient ${patientId}?)) {
                    const row = this.closest('tr');
                    updateRowStatus(row, 'Approved');
                    
                    // Show success message
                    toast.show();
                    
                    // Here you would typically make an API call to update the status
                    console.log(Accepted request for patient ${patientId});
                }
            });
        });

        document.querySelectorAll('.reject-request').forEach(button => {
            button.addEventListener('click', function() {
                const patientId = this.getAttribute('data-patient-id');
                if (confirm(Are you sure you want to reject the fund request for Patient ${patientId}?)) {
                    const row = this.closest('tr');
                    updateRowStatus(row, 'Rejected');
                    
                    // Here you would typically make an API call to update the status
                    console.log(Rejected request for patient ${patientId});
                }
            });
        });

        // Handle modal accept/reject buttons
        document.querySelector('.accept-request-modal').addEventListener('click', function() {
            const patientId = document.getElementById('patientId').textContent.split(': ')[1];
            if (confirm(Are you sure you want to accept the fund request for Patient ${patientId}?)) {
                const row = document.querySelector([data-patient-id="${patientId}"]).closest('tr');
                updateRowStatus(row, 'Approved');
                
                // Show success message
                toast.show();
                
                // Close modal
                bootstrap.Modal.getInstance(document.getElementById('patientModal')).hide();
                
                // Here you would typically make an API call to update the status
                console.log(Accepted request for patient ${patientId});
            }
        });

        document.querySelector('.reject-request-modal').addEventListener('click', function() {
            const patientId = document.getElementById('patientId').textContent.split(': ')[1];
            if (confirm(Are you sure you want to reject the fund request for Patient ${patientId}?)) {
                const row = document.querySelector([data-patient-id="${patientId}"]).closest('tr');
                updateRowStatus(row, 'Rejected');
                
                // Close modal
                bootstrap.Modal.getInstance(document.getElementById('patientModal')).hide();
                
                // Here you would typically make an API call to update the status
                console.log(Rejected request for patient ${patientId});
            }
        });

        // Handle view details button
        document.querySelectorAll('.view-details').forEach(button => {
            button.addEventListener('click', function() {
                const patientId = this.getAttribute('data-patient-id');
                const row = this.closest('tr');
                const status = row.querySelector('.badge').textContent;
                
                // Update modal buttons based on status
                const acceptBtn = document.querySelector('.accept-request-modal');
                const rejectBtn = document.querySelector('.reject-request-modal');
                
                if (status !== 'Pending') {
                    acceptBtn.style.display = 'none';
                    rejectBtn.style.display = 'none';
                } else {
                    acceptBtn.style.display = 'inline-block';
                    rejectBtn.style.display = 'inline-block';
                }
                
                // Here you would typically fetch patient details from an API
                console.log(Viewing details for patient ${patientId});
            });
        });
    });
