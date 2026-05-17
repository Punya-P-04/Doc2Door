document.addEventListener('DOMContentLoaded', function() {
    // Smooth scrolling for navigation links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            document.querySelector(this.getAttribute('href')).scrollIntoView({
                behavior: 'smooth'
            });
        });
    });

    // Active nav link highlighting
    const sections = document.querySelectorAll('section');
    const navLinks = document.querySelectorAll('.nav-links a');

    window.addEventListener('scroll', () => {
        let current = '';
        sections.forEach(section => {
            const sectionTop = section.offsetTop;
            const sectionHeight = section.clientHeight;
            if (pageYOffset >= sectionTop - sectionHeight / 3) {
                current = section.getAttribute('id');
            }
        });

        navLinks.forEach(link => {
            link.classList.remove('active');
            if (link.getAttribute('href').slice(1) === current) {
                link.classList.add('active');
            }
        });
    });

    // Service card click handlers
    const cards = document.querySelectorAll('.service-card');
    
    cards.forEach(card => {
        card.addEventListener('click', function(e) {
            if (!e.target.classList.contains('book-btn')) {
                // Add a pulse animation effect when clicking the card
                this.style.animation = 'pulse 0.5s';
                setTimeout(() => {
                    this.style.animation = '';
                }, 500);
            }
        });
        
        const btn = card.querySelector('.book-btn');
        btn.addEventListener('click', function(e) {
            e.stopPropagation();
            const service = card.getAttribute('data-service');
            handleBooking(service);
        });
    });
});

function handleBooking(service) {
    const serviceMessages = {
        visit: 'Request a home visit',
        appointment: 'Book a doctor appointment',
        medicine: 'Order medicines online',
        family: 'Learn about family healthcare programs',
        records: 'Access medical records'
    };
    

}

// Add this to your CSS file or keep it in a <style> tag
const style = document.createElement('style');
style.textContent = `
@keyframes pulse {
    0% { transform: scale(1); }
    50% { transform: scale(1.05); }
    100% { transform: scale(1); }
}
`;
document.head.appendChild(style); 