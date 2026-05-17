// Modal functionality
function showLoginModal() {
    const loginModal = document.getElementById('loginModal');
    if (loginModal) {
        loginModal.style.display = 'block';
    }
}

function closeLoginModal() {
    const loginModal = document.getElementById('loginModal');
    if (loginModal) {
        loginModal.style.display = 'none';
    }
}

// Close modal when clicking outside
window.onclick = function(event) {
    const modal = document.getElementById('loginModal');
    if (event.target == modal) {
        closeLoginModal();
    }
}

// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// Navbar scroll effect
window.addEventListener('scroll', function() {
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 50) {
        navbar.style.background = 'rgba(255, 255, 255, 0.95)';
    } else {
        navbar.style.background = 'white';
    }
});

// Emergency button click handler
document.querySelectorAll('.emergency-btn').forEach(button => {
    button.addEventListener('click', function() {
        alert('Redirecting to emergency guidelines...');
        // Add your emergency redirect logic here
    });
});
// Your existing JavaScript code remains...

// Add these new functions at the end of your file

// Scroll reveal animation
function reveal() {
    const reveals = document.querySelectorAll('.reveal');
    
    reveals.forEach(element => {
        const windowHeight = window.innerHeight;
        const elementTop = element.getBoundingClientRect().top;
        const elementVisible = 150;
        
        if (elementTop < windowHeight - elementVisible) {
            element.classList.add('active');
        }
    });
}

// Add scroll event listener
window.addEventListener('scroll', reveal);

// Add reveal class to sections
document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('section').forEach(section => {
        section.classList.add('reveal');
    });
    
    // Initialize reveal effect
    reveal();
    
    // Add card hover effects
    document.querySelectorAll('.service-card, .sdg-card, .emergency-card').forEach(card => {
        card.addEventListener('mousemove', function(e) {
            const rect = card.getBoundingClientRect();
            const x = e.clientX - rect.left;
            const y = e.clientY - rect.top;
            
            card.style.transform = `perspective(1000px) rotateX(${(y - rect.height/2)/20}deg) rotateY(${-(x - rect.width/2)/20}deg) translateY(-5px)`;
        });
        
        card.addEventListener('mouseleave', function() {
            card.style.transform = 'perspective(1000px) rotateX(0) rotateY(0) translateY(0)';
        });
    });
});

// Enhance existing modal functionality
const loginModal = document.getElementById('loginModal');
if (loginModal) {
    loginModal.addEventListener('click', function(e) {
        if (e.target === this) {
            closeLoginModal();
        }
    });
}

// Add smooth scroll behavior to all anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});
function toggleChatbot() {
    const popup = document.getElementById("chatbot-popup");
    popup.style.display = popup.style.display === "block" ? "none" : "block";
}
