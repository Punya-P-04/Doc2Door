document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('homeVisitForm');
    const urgencyLevel = document.getElementById('urgencyLevel');
    const emergencyAlert = document.getElementById('emergencyAlert');
    const getLocationBtn = document.getElementById('getLocation');

    // Handle urgency level change
    urgencyLevel.addEventListener('change', function() {
        if (this.value === 'emergency') {
            emergencyAlert.style.display = 'flex';
        } else {
            emergencyAlert.style.display = 'none';
        }
    });

    // Get current location
    getLocationBtn.addEventListener('click', function() {
        if (navigator.geolocation) {
            getLocationBtn.disabled = true;
            getLocationBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Getting Location...';
            
            navigator.geolocation.getCurrentPosition(
                function(position) {
                    const locationInput = document.getElementById('currentLocation');
                    locationInput.value = `Lat: ${position.coords.latitude}, Long: ${position.coords.longitude}`;
                    getLocationBtn.innerHTML = '<i class="fas fa-check"></i> Location Updated';
                    setTimeout(() => {
                        getLocationBtn.innerHTML = '<i class="fas fa-location-dot"></i> Use Current Location';
                        getLocationBtn.disabled = false;
                    }, 2000);
                },
                function(error) {
                    alert('Error getting location: ' + error.message);
                    getLocationBtn.innerHTML = '<i class="fas fa-location-dot"></i> Use Current Location';
                    getLocationBtn.disabled = false;
                }
            );
        } else {
            alert('Geolocation is not supported by your browser');
        }
    });

    // Phone number validation
    const phoneInput = document.getElementById('phoneNumber');
    phoneInput.addEventListener('input', function(e) {
        this.value = this.value.replace(/[^\d]/g, '');
        if (this.value.length > 10) {
            this.value = this.value.slice(0, 10);
        }
    });

    // Form submission
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const formData = {
            patientName: document.getElementById('patientName').value,
            phoneNumber: document.getElementById('phoneNumber').value,
            homeAddress: document.getElementById('homeAddress').value,
            currentLocation: document.getElementById('currentLocation').value,
            hospital: document.getElementById('hospital').options[document.getElementById('hospital').selectedIndex].text,
            urgencyLevel: document.getElementById('urgencyLevel').options[document.getElementById('urgencyLevel').selectedIndex].text,
            condition: document.getElementById('condition').value
        };

        // Create success message
        const successMessage = document.createElement('div');
        successMessage.className = 'success-message';
        successMessage.innerHTML = `
            <h3><i class="fas fa-check-circle"></i> Home Visit Request Submitted!</h3>
            <p><strong>Patient:</strong> ${formData.patientName}</p>
            <p><strong>Hospital:</strong> ${formData.hospital}</p>
            <p><strong>Urgency:</strong> ${formData.urgencyLevel}</p>
            <p>A healthcare professional will contact you shortly.</p>
        `;
        
        document.body.appendChild(successMessage);
        form.reset();
        
        setTimeout(() => {
            successMessage.remove();
        }, 5000);

        setTimeout(() => {
            window.location.href = 'index.html';
        }, 5500);
    });
});