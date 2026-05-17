<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Medicines - Healthcare Services</title>
    <link rel="stylesheet" href="css/sty.css">
    <link rel="stylesheet" href="css/medicine.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <div class="page-container">
        <main>
            <h1>Order Medicines</h1>
            <p class="subtitle">Upload prescription or choose from common medicines</p>

            <!-- Prescription Upload Section -->
            <div class="prescription-section">
                <h2><i class="fas fa-file-prescription"></i> Upload Prescription</h2>
                <form id="prescriptionForm" class="prescription-form">
                    <div class="upload-container">
                        <input type="file" id="prescriptionFile" accept="image/*,.pdf" required>
                        <label for="prescriptionFile" class="upload-label">
                            <i class="fas fa-cloud-upload-alt"></i>
                            <span>Drop your prescription here or click to upload</span>
                        </label>
                    </div>
                    <button type="submit" class="order-btn">
                        <i class="fas fa-shopping-cart"></i>
                        Order with Prescription
                    </button>
                </form>
            </div>

            <!-- Common Medicines Section -->
            <div class="common-medicines-section">
                <h2><i class="fas fa-capsules"></i> Common Medicines</h2>
                <div class="medicine-grid">
                    <!-- Cold & Fever -->
                    <div class="medicine-card">
                        <img src="images/delo.webp" alt="Cold & Fever Medicine">
                        <div class="medicine-info">
                            <h3>Cold & Fever Relief</h3>
                            <p>Common cold and fever medications</p>
                            <div class="medicine-price">₹36</div>
                            <button class="add-to-cart" data-medicine="cold-fever">Add to Cart</button>
                        </div>
                    </div>

                    <!-- Cough -->
                    <div class="medicine-card">
                        <img src="images/syraps.jpeg" alt="Cough Medicine">
                        <div class="medicine-info">
                            <h3>Cough Syrup</h3>
                            <p>Dry and wet cough relief</p>
                            <div class="medicine-price">₹130</div>
                            <button class="add-to-cart" data-medicine="cough">Add to Cart</button>
                        </div>
                    </div>

                    <!-- Pain Relief -->
                    <div class="medicine-card">
                        <img src="images/spray.jpeg" alt="Pain Relief Spray">
                        <div class="medicine-info">
                            <h3>Pain Relief Spray</h3>
                            <p>Fast-acting pain relief</p>
                            <div class="medicine-price">₹199</div>
                            <button class="add-to-cart" data-medicine="pain-relief">Add to Cart</button>
                        </div>
                    </div>

                    <!-- Sanitary Pads -->
                    <div class="medicine-card">
                        <img src="images/ssss.jpeg" alt="Sanitary Pads">
                        <div class="medicine-info">
                            <h3>Sanitary Pads</h3>
                            <p>Pack of 13 pads</p>
                            <div class="medicine-price">₹99</div>
                            <button class="add-to-cart" data-medicine="sanitary-pads">Add to Cart</button>
                        </div>
                    </div>

                    <!-- Baby Diapers -->
                    <div class="medicine-card">
                        <img src="images/hugis.webp" alt="Baby Diapers">
                        <div class="medicine-info">
                            <h3>Baby Diapers</h3>
                            <p>Pack of 18 (Medium Size)</p>
                            <div class="medicine-price">₹199</div>
                            <button class="add-to-cart" data-medicine="diapers">Add to Cart</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Shopping Cart -->
            <div id="cart" class="cart-container">
                <h2><i class="fas fa-shopping-cart"></i> Cart</h2>
                <div id="cartItems" class="cart-items">
                    <!-- Cart items will be added here dynamically -->
                </div>
                <div class="cart-total">
                    <span>Total:</span>
                    <span id="totalAmount">₹0</span>
                </div>
                <button id="checkoutBtn" class="checkout-btn" disabled>
                    Proceed to Checkout
                </button>
            </div>
        </main>

        <a href="prof1" class="back-btn">
            <i class="fas fa-arrow-left"></i>
            Back to Services
        </a>
    </div>
    <script src="js/medicine.js"></script>
</body>
</html>