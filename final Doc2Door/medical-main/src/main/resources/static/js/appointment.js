document.addEventListener('DOMContentLoaded', function() {
    // Set minimum date to today
    const dateInput = document.getElementById('appointmentDate');
    const today = new Date().toISOString().split('T')[0];
    dateInput.min = today;

    // Handle form submission
    document.getElementById('appointmentForm').addEventListener('submit', function(e) {
        e.preventDefault();
        
        // Get form values
        const formData = {
            patientName: document.getElementById('patientName').value,
            phoneNumber: document.getElementById('phoneNumber').value,
            hospital: document.getElementById('hospital').options[document.getElementById('hospital').selectedIndex].text,
            date: document.getElementById('appointmentDate').value,
            time: document.getElementById('appointmentTime').value,
            condition: document.getElementById('condition').value
        };

        // Create success message
        const successMessage = document.createElement('div');
        successMessage.className = 'success-message';
        successMessage.innerHTML = `
            <h3><i class="fas fa-check-circle"></i> Appointment Booked Successfully!</h3>
            <p><strong>Patient:</strong> ${formData.patientName}</p>
            <p><strong>Hospital:</strong> ${formData.hospital}</p>
            <p><strong>Date:</strong> ${formData.date}</p>
            <p><strong>Time:</strong> ${formData.time}</p>
        `;
        
        // Add message to body
        document.body.appendChild(successMessage);
        
        // Reset form
        this.reset();
        
        // Remove success message after 5 seconds
        setTimeout(() => {
            successMessage.remove();
        }, 5000);

        // Optional: Redirect back to main page after successful booking
        setTimeout(() => {
            window.location.href = 'index.html';
        }, 5500);
    });

    // Phone number validation
    const phoneInput = document.getElementById('phoneNumber');
    phoneInput.addEventListener('input', function(e) {
        // Remove any non-numeric characters
        this.value = this.value.replace(/[^\d]/g, '');
        
        // Limit to 10 digits
        if (this.value.length > 10) {
            this.value = this.value.slice(0, 10);
        }
    });
});