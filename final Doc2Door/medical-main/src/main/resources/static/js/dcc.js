* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

:root {
    --primary-color: #4a90e2;
    --secondary-color: #5c6bc0;
    --background-color: #f5f6fa;
    --text-color: #2c3e50;
    --success-color: #2ecc71;
    --danger-color: #e74c3c;
}

body {
    background-color: var(--background-color);
    color: var(--text-color);
}

.container {
    display: flex;
    min-height: 100vh;
}

/* Sidebar Styles */
.sidebar {
    width: 280px;
    background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
    color: white;
    padding: 2rem;
    transition: all 0.3s ease;
}

.profile {
    text-align: center;
    padding-bottom: 2rem;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.profile-img {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin-bottom: 1rem;
    border: 3px solid white;
    transition: transform 0.3s ease;
}

.profile-img:hover {
    transform: scale(1.1);
}

.status-toggle {
    margin-top: 1rem;
}

/* Toggle Switch */
.switch {
    position: relative;
    display: inline-block;
    width: 60px;
    height: 34px;
}

.switch input {
    opacity: 0;
    width: 0;
    height: 0;
}

.slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    transition: .4s;
}

.slider:before {
    position: absolute;
    content: "";
    height: 26px;
    width: 26px;
    left: 4px;
    bottom: 4px;
    background-color: white;
    transition: .4s;
}

.slider.round {
    border-radius: 34px;
}

.slider.round:before {
    border-radius: 50%;
}

input:checked + .slider {
    background-color: var(--success-color);
}

input:checked + .slider:before {
    transform: translateX(26px);
}

.nav-links {
    list-style: none;
    margin-top: 2rem;
}

.nav-links li {
    padding: 1rem;
    margin: 0.5rem 0;
    border-radius: 10px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.nav-links li:hover {
    background: rgba(255, 255, 255, 0.1);
    transform: translateX(10px);
}

.nav-links li.active {
    background: rgba(255, 255, 255, 0.2);
}

.nav-links i {
    margin-right: 10px;
}

/* Main Content Styles */
.main-content {
    flex: 1;
    padding: 2rem;
    overflow-y: auto;
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 2rem;
}

.search-bar {
    position: relative;
}

.search-bar input {
    padding: 0.8rem 1rem;
    padding-right: 2.5rem;
    border: none;
    border-radius: 25px;
    width: 300px;
    background: white;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.search-bar i {
    position: absolute;
    right: 1rem;
    top: 50%;
    transform: translateY(-50%);
    color: #666;
}

/* Dashboard Stats */
.dashboard-stats {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 1.5rem;
    margin-bottom: 2rem;
}

.stat-card {
    background: white;
    padding: 1.5rem;
    border-radius: 15px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
}

.stat-card:hover {
    transform: translateY(-5px);
}

.stat-card i {
    font-size: 2rem;
    color: var(--primary-color);
    margin-bottom: 1rem;
}

.stat-card h3 {
    font-size: 1.1rem;
    margin-bottom: 0.5rem;
}

.stat-card p {
    font-size: 2rem;
    font-weight: bold;
    color: var(--secondary-color);
}

/* Appointment Requests */
.appointment-requests h2 {
    margin-bottom: 1.5rem;
}

.request-cards {
    display: grid;
    gap: 1rem;
}

.request-card {
    background: white;
    padding: 1.5rem;
    border-radius: 15px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    display: flex;
    align-items: center;
    gap: 1.5rem;
    transition: transform 0.3s ease;
}

.request-card:hover {
    transform: translateX(5px);
}

.request-card img {
    width: 50px;
    height: 50px;
    border-radius: 50%;
}

.request-info {
    flex: 1;
}

.request-info h3 {
    margin-bottom: 0.3rem;
}

.request-info p {
    color: #666;
}

.request-info .date {
    font-size: 0.9rem;
    color: #999;
}

.request-actions {
    display: flex;
    gap: 1rem;
}

.request-actions button {
    padding: 0.5rem 1.5rem;
    border: none;
    border-radius: 25px;
    cursor: pointer;
    font-weight: bold;
    transition: all 0.3s ease;
}

.request-actions .accept {
    background-color: var(--success-color);
    color: white;
}

.request-actions .reject {
    background-color: var(--danger-color);
    color: white;
}

.request-actions button:hover {
    transform: scale(1.05);
    opacity: 0.9;
}

/* Responsive Design */
@media (max-width: 1024px) {
    .sidebar {
        width: 220px;
    }
}

@media (max-width: 768px) {
    .container {
        flex-direction: column;
    }
    
    .sidebar {
        width: 100%;
        padding: 1rem;
    }
    
    .nav-links {
        display: flex;
        overflow-x: auto;
        margin-top: 1rem;
    }
    
    .nav-links li {
        white-space: nowrap;
    }
    
    header {
        flex-direction: column;
        gap: 1rem;
    }
    
    .search-bar input {
        width: 100%;
    }
}

.notification {
    position: fixed;
    top: 20px;
    right: 20px;
    padding: 1rem 2rem;
    border-radius: 5px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    transform: translateX(120%);
    transition: transform 0.3s ease;
    z-index: 1000;
}

.notification.success {
    background-color: #fff;
    color: #333;
}

.notification.error {
    background-color: #ff6b6b;
    color: #fff;
} 