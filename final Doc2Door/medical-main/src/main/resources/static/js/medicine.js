document.addEventListener('DOMContentLoaded', function() {
    const prescriptionForm = document.getElementById('prescriptionForm');
    const cartItems = document.getElementById('cartItems');
    const totalAmount = document.getElementById('totalAmount');
    const checkoutBtn = document.getElementById('checkoutBtn');
    let cart = [];

    // Medicine prices and details
    const medicines = {
        'cold-fever': { name: 'Cold & Fever Relief', price: 199 },
        'cough': { name: 'Cough Syrup', price: 149 },
        'pain-relief': { name: 'Pain Relief Spray', price: 299 },
        'sanitary-pads': { name: 'Sanitary Pads', price: 249 },
        'diapers': { name: 'Baby Diapers', price: 699 }
    };

    // Handle prescription form submission
    prescriptionForm.addEventListener('submit', function(e) {
        e.preventDefault();
        const fileInput = document.getElementById('prescriptionFile');
        
        if (fileInput.files.length > 0) {
            showSuccessMessage('Prescription uploaded successfully! Our team will contact you shortly.');
            prescriptionForm.reset();
        }
    });

    // Handle adding items to cart
    document.querySelectorAll('.add-to-cart').forEach(button => {
        button.addEventListener('click', function() {
            const medicineId = this.dataset.medicine;
            const medicine = medicines[medicineId];
            
            cart.push(medicine);
            updateCart();
            
            showSuccessMessage(`${medicine.name} added to cart!`);
        });
    });

    // Handle checkout
    checkoutBtn.addEventListener('click', function() {
        if (cart.length > 0) {
            showSuccessMessage('Order placed successfully! You will receive a confirmation shortly.');
            cart = [];
            updateCart();
            setTimeout(() => {
                window.location.href = 'index.html';
            }, 3000);
        }
    });

    // Update cart display
    function updateCart() {
        cartItems.innerHTML = '';
        let total = 0;

        cart.forEach((item, index) => {
            const cartItem = document.createElement('div');
            cartItem.className = 'cart-item';
            cartItem.innerHTML = `
                <span>${item.name}</span>
                <div>
                    <span>₹${item.price}</span>
                    <button class="remove-item" data-index="${index}">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
            `;
            cartItems.appendChild(cartItem);
            total += item.price;
        });

        totalAmount.textContent = `₹${total}`;
        checkoutBtn.disabled = cart.length === 0;

        // Add remove functionality
        document.querySelectorAll('.remove-item').forEach(button => {
            button.addEventListener('click', function() {
                const index = parseInt(this.dataset.index);
                cart.splice(index, 1);
                updateCart();
            });
        });
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

    // File upload preview
    const fileInput = document.getElementById('prescriptionFile');
    const uploadLabel = document.querySelector('.upload-label span');
    
    fileInput.addEventListener('change', function() {
        if (this.files.length > 0) {
            uploadLabel.textContent = `Selected file: ${this.files[0].name}`;
        } else {
            uploadLabel.textContent = 'Drop your prescription here or click to upload';
        }
    });
});