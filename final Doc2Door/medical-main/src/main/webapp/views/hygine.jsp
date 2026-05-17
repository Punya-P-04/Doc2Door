<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Women's Health & Child Care</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f5f5;
            color: #333;
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .language-toggle {
            position: fixed;
            top: 20px;
            right: 20px;
            background: white;
            padding: 10px 20px;
            border-radius: 25px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            cursor: pointer;
            z-index: 1000;
        }

        .language-toggle:hover {
            background: #f0f0f0;
        }

        header {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            color: white;
            text-align: center;
            padding: 40px 0;
            margin-bottom: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            margin-top: 30px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h2 {
            color: #2575fc;
            margin-bottom: 15px;
            font-size: 1.5em;
        }

        .card p {
            margin-bottom: 15px;
        }

        .sdg-card {
            background: linear-gradient(135deg, #00b09b 0%, #96c93d 100%);
            color: white;
        }

        .sdg-card h2 {
            color: white;
        }

        .highlight {
            background-color: #fff3cd;
            padding: 15px;
            border-radius: 5px;
            margin: 15px 0;
        }

        .video-section {
            margin-top: 50px;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .video-container {
            position: relative;
            padding-bottom: 56.25%;
            height: 0;
            overflow: hidden;
            border-radius: 8px;
        }

        .video-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
        }

        .importance-section {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            margin: 15px 0;
        }

        .kannada-content {
            display: none;
        }

        @media (max-width: 768px) {
            .grid-container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="language-toggle" onclick="toggleLanguage()">ಕನ್ನಡ / English</div>
    <div class="container">
        <header>
            <h1 class="english">Women's Health & Child Care</h1>
            <h1 class="kannada-content">ಮಹಿಳೆಯರ ಆರೋಗ್ಯ ಮತ್ತು ಮಕ್ಕಳ ಕಾಳಜಿ</h1>
            <p class="english">Empowering Women and Children for a Better Future</p>
            <p class="kannada-content">ಉತ್ತಮ ಭವಿಷ್ಯಕ್ಕಾಗಿ ಮಹಿಳೆಯರು ಮತ್ತು ಮಕ್ಕಳನ್ನು ಸಬಲೀಕರಿಸುವುದು</p>
        </header>

        <div class="grid-container">
            <div class="card">
                <h2 class="english">Women's Hygiene</h2>
                <h2 class="kannada-content">ಮಹಿಳೆಯರ ಸ್ವಚ್ಛತೆ</h2>
                <div class="highlight">
                    <p class="english">Maintaining proper hygiene is crucial for women's health and well-being. Key aspects include:</p>
                    <p class="kannada-content">ಸರಿಯಾದ ಸ್ವಚ್ಛತೆಯನ್ನು ಕಾಪಾಡಿಕೊಳ್ಳುವುದು ಮಹಿಳೆಯರ ಆರೋಗ್ಯ ಮತ್ತು ಯೋಗಕ್ಷೇಮಕ್ಕೆ ಅತ್ಯಂತ ಮುಖ್ಯ. ಪ್ರಮುಖ ಅಂಶಗಳು:</p>
                    <ul class="english">
                        <li>Regular menstrual hygiene management</li>
                        <li>Proper sanitation practices</li>
                        <li>Access to clean water and sanitation facilities</li>
                        <li>Personal hygiene education</li>
                    </ul>
                    <ul class="kannada-content">
                        <li>ನಿಯಮಿತ ಮುಟ್ಟಿನ ಸ್ವಚ್ಛತೆ ನಿರ್ವಹಣೆ</li>
                        <li>ಸರಿಯಾದ ಸ್ವಚ್ಛತಾ ಪದ್ಧತಿಗಳು</li>
                        <li>ಶುದ್ಧ ನೀರು ಮತ್ತು ಸ್ವಚ್ಛತಾ ಸೌಲಭ್ಯಗಳಿಗೆ ಪ್ರವೇಶ</li>
                        <li>ವೈಯಕ್ತಿಕ ಸ್ವಚ್ಛತೆ ಶಿಕ್ಷಣ</li>
                    </ul>
                </div>
                <div class="importance-section">
                    <h3 class="english">Why Women's Hygiene is Important:</h3>
                    <h3 class="kannada-content">ಮಹಿಳೆಯರ ಸ್ವಚ್ಛತೆ ಏಕೆ ಮುಖ್ಯ:</h3>
                    <ul class="english">
                        <li>Prevents infections and diseases</li>
                        <li>Maintains reproductive health</li>
                        <li>Boosts self-confidence and mental well-being</li>
                        <li>Reduces risk of urinary tract infections</li>
                        <li>Promotes overall health and productivity</li>
                    </ul>
                    <ul class="kannada-content">
                        <li>ಸೋಂಕುಗಳು ಮತ್ತು ರೋಗಗಳನ್ನು ತಡೆಗಟ್ಟುತ್ತದೆ</li>
                        <li>ಪ್ರಜನನ ಆರೋಗ್ಯವನ್ನು ಕಾಪಾಡುತ್ತದೆ</li>
                        <li>ಸ್ವಾಭಿಮಾನ ಮತ್ತು ಮಾನಸಿಕ ಯೋಗಕ್ಷೇಮವನ್ನು ಹೆಚ್ಚಿಸುತ್ತದೆ</li>
                        <li>ಮೂತ್ರನಾಳದ ಸೋಂಕುಗಳ ಅಪಾಯವನ್ನು ಕಡಿಮೆ ಮಾಡುತ್ತದೆ</li>
                        <li>ಒಟ್ಟಾರೆ ಆರೋಗ್ಯ ಮತ್ತು ಉತ್ಪಾದಕತೆಯನ್ನು ಉತ್ತೇಜಿಸುತ್ತದೆ</li>
                    </ul>
                </div>
                <p>Good hygiene practices help prevent infections and promote overall health. It's essential for women to have access to proper sanitation facilities and education about hygiene practices. Regular hand washing, proper menstrual hygiene management, and maintaining clean living spaces are fundamental to women's health.</p>
            </div>

            <div class="card">
                <h2 class="english">Child Care Essentials</h2>
                <h2 class="kannada-content">ಮಕ್ಕಳ ಕಾಳಜಿಯ ಮೂಲಭೂತ ಅಂಶಗಳು</h2>
                <div class="highlight">
                    <p class="english">Proper child care involves:</p>
                    <p class="kannada-content">ಸರಿಯಾದ ಮಕ್ಕಳ ಕಾಳಜಿಯು ಒಳಗೊಂಡಿರುತ್ತದೆ:</p>
                    <ul class="english">
                        <li>Regular health check-ups</li>
                        <li>Proper nutrition and feeding practices</li>
                        <li>Immunization and disease prevention</li>
                        <li>Safe and clean environment</li>
                        <li>Early childhood development</li>
                    </ul>
                    <ul class="kannada-content">
                        <li>ನಿಯಮಿತ ಆರೋಗ್ಯ ಪರೀಕ್ಷೆಗಳು</li>
                        <li>ಸರಿಯಾದ ಪೋಷಣೆ ಮತ್ತು ಆಹಾರ ಪದ್ಧತಿಗಳು</li>
                        <li>ಲಸಿಕೆ ಮತ್ತು ರೋಗ ತಡೆಗಟ್ಟುವಿಕೆ</li>
                        <li>ಸುರಕ್ಷಿತ ಮತ್ತು ಸ್ವಚ್ಛ ವಾತಾವರಣ</li>
                        <li>ಮುಂಚಿನ ಬಾಲ್ಯಾವಸ್ಥೆಯ ಅಭಿವೃದ್ಧಿ</li>
                    </ul>
                </div>
                <div class="importance-section">
                    <h3 class="english">Importance of Quality Child Care:</h3>
                    <h3 class="kannada-content">ಗುಣಮಟ್ಟದ ಮಕ್ಕಳ ಕಾಳಜಿಯ ಮಹತ್ವ:</h3>
                    <ul class="english">
                        <li>Ensures proper physical and mental development</li>
                        <li>Builds strong immune system</li>
                        <li>Promotes social and emotional well-being</li>
                        <li>Establishes healthy habits for life</li>
                        <li>Supports cognitive development and learning</li>
                    </ul>
                    <ul class="kannada-content">
                        <li>ಸರಿಯಾದ ದೈಹಿಕ ಮತ್ತು ಮಾನಸಿಕ ಅಭಿವೃದ್ಧಿಯನ್ನು ಖಾತ್ರಿಪಡಿಸುತ್ತದೆ</li>
                        <li>ಬಲವಾದ ರೋಗನಿರೋಧಕ ಶಕ್ತಿಯನ್ನು ನಿರ್ಮಿಸುತ್ತದೆ</li>
                        <li>ಸಾಮಾಜಿಕ ಮತ್ತು ಭಾವನಾತ್ಮಕ ಯೋಗಕ್ಷೇಮವನ್ನು ಉತ್ತೇಜಿಸುತ್ತದೆ</li>
                        <li>ಜೀವನಕ್ಕೆ ಆರೋಗ್ಯಕರ ಅಭ್ಯಾಸಗಳನ್ನು ಸ್ಥಾಪಿಸುತ್ತದೆ</li>
                        <li>ಜ್ಞಾನಾತ್ಮಕ ಅಭಿವೃದ್ಧಿ ಮತ್ತು ಕಲಿಕೆಯನ್ನು ಬೆಂಬಲಿಸುತ್ತದೆ</li>
                    </ul>
                </div>
                <p>Quality child care ensures healthy development and sets the foundation for a child's future well-being and success. It includes providing a safe environment, proper nutrition, emotional support, and opportunities for learning and growth.</p>
            </div>

            <div class="card sdg-card">
                <h2 class="english">SDG 3: Good Health and Well-being</h2>
                <h2 class="kannada-content">SDG 3: ಉತ್ತಮ ಆರೋಗ್ಯ ಮತ್ತು ಯೋಗಕ್ಷೇಮ</h2>
                <p class="english">This goal aims to ensure healthy lives and promote well-being for all at all ages. Key targets include:</p>
                <p class="kannada-content">ಈ ಗುರಿಯು ಎಲ್ಲಾ ವಯಸ್ಸಿನವರಿಗೆ ಆರೋಗ್ಯಕರ ಜೀವನವನ್ನು ಖಾತ್ರಿಪಡಿಸುವುದು ಮತ್ತು ಯೋಗಕ್ಷೇಮವನ್ನು ಉತ್ತೇಜಿಸುವುದು. ಪ್ರಮುಖ ಗುರಿಗಳು:</p>
                <ul class="english">
                    <li>Reducing maternal mortality</li>
                    <li>Ending preventable deaths of newborns and children</li>
                    <li>Ensuring universal access to sexual and reproductive healthcare</li>
                    <li>Achieving universal health coverage</li>
                </ul>
                <ul class="kannada-content">
                    <li>ಮಾತೃ ಮರಣ ಪ್ರಮಾಣವನ್ನು ಕಡಿಮೆ ಮಾಡುವುದು</li>
                    <li>ಹೊಸದಾಗಿ ಜನಿಸಿದ ಮಕ್ಕಳು ಮತ್ತು ಮಕ್ಕಳ ತಡೆಗಟ್ಟಬಹುದಾದ ಮರಣಗಳನ್ನು ಕೊನೆಗೊಳಿಸುವುದು</li>
                    <li>ಲೈಂಗಿಕ ಮತ್ತು ಪ್ರಜನನ ಆರೋಗ್ಯ ಸೇವೆಗಳಿಗೆ ಸಾರ್ವತ್ರಿಕ ಪ್ರವೇಶವನ್ನು ಖಾತ್ರಿಪಡಿಸುವುದು</li>
                    <li>ಸಾರ್ವತ್ರಿಕ ಆರೋಗ್ಯ ವ್ಯಾಪ್ತಿಯನ್ನು ಸಾಧಿಸುವುದು</li>
                </ul>
            </div>

            <div class="card sdg-card">
                <h2 class="english">SDG 11: Sustainable Cities and Communities</h2>
                <h2 class="kannada-content">SDG 11: ಸುಸ್ಥಿರ ನಗರಗಳು ಮತ್ತು ಸಮುದಾಯಗಳು</h2>
                <p class="english">This goal focuses on making cities inclusive, safe, resilient, and sustainable. Important aspects include:</p>
                <p class="kannada-content">ಈ ಗುರಿಯು ನಗರಗಳನ್ನು ಸಮಗ್ರ, ಸುರಕ್ಷಿತ, ಸ್ಥಿತಿಸ್ಥಾಪಕ ಮತ್ತು ಸುಸ್ಥಿರವಾಗಿಸುವುದರತ್ತ ಗಮನ ಹರಿಸುತ್ತದೆ. ಪ್ರಮುಖ ಅಂಶಗಳು:</p>
                <ul class="english">
                    <li>Access to adequate, safe, and affordable housing</li>
                    <li>Access to safe and affordable transport systems</li>
                    <li>Universal access to safe, inclusive, and accessible green spaces</li>
                    <li>Providing access to safe and affordable basic services</li>
                </ul>
                <ul class="kannada-content">
                    <li>ಸಮರ್ಪಕ, ಸುರಕ್ಷಿತ ಮತ್ತು ಸಾಧ್ಯವಿರುವ ವಸತಿಗೆ ಪ್ರವೇಶ</li>
                    <li>ಸುರಕ್ಷಿತ ಮತ್ತು ಸಾಧ್ಯವಿರುವ ಸಾರಿಗೆ ವ್ಯವಸ್ಥೆಗಳಿಗೆ ಪ್ರವೇಶ</li>
                    <li>ಸುರಕ್ಷಿತ, ಸಮಗ್ರ ಮತ್ತು ಪ್ರವೇಶಿಸಬಹುದಾದ ಹಸಿರು ಸ್ಥಳಗಳಿಗೆ ಸಾರ್ವತ್ರಿಕ ಪ್ರವೇಶ</li>
                    <li>ಸುರಕ್ಷಿತ ಮತ್ತು ಸಾಧ್ಯವಿರುವ ಮೂಲ ಸೇವೆಗಳಿಗೆ ಪ್ರವೇಶವನ್ನು ಒದಗಿಸುವುದು</li>
                </ul>
            </div>
        </div>

        <div class="video-section">
            <h2 class="english">Educational Videos on Menstrual Health</h2>
            <h2 class="kannada-content">ಮುಟ್ಟಿನ ಆರೋಗ್ಯದ ಬಗ್ಗೆ ಶೈಕ್ಷಣಿಕ ವೀಡಿಯೊಗಳು</h2>
            <p class="english">Watch these informative videos to learn more about menstrual health and hygiene:</p>
            <p class="kannada-content">ಮುಟ್ಟಿನ ಆರೋಗ್ಯ ಮತ್ತು ಸ್ವಚ್ಛತೆಯ ಬಗ್ಗೆ ಹೆಚ್ಚು ತಿಳಿಯಲು ಈ ಮಾಹಿತಿ ವೀಡಿಯೊಗಳನ್ನು ನೋಡಿ:</p>
            <div class="video-grid">
                <div class="video-container">
                    <iframe src="https://www.youtube.com/embed/W-CGhmKHWb0" title="Menstrual Hygiene Management" allowfullscreen></iframe>
                </div>
                <div class="video-container">
                    <iframe src="https://www.youtube.com/embed/J6bZsI1pi_o" title="Period Education" allowfullscreen></iframe>
                </div>
                <div class="video-container">
                    <iframe src="https://www.youtube.com/embed/S5iKIHcUsVQ" title="Menstrual Health Awareness" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>

    <script>
        function toggleLanguage() {
            const englishElements = document.querySelectorAll('.english');
            const kannadaElements = document.querySelectorAll('.kannada-content');
            
            englishElements.forEach(el => {
                el.style.display = el.style.display === 'none' ? 'block' : 'none';
            });
            
            kannadaElements.forEach(el => {
                el.style.display = el.style.display === 'none' ? 'block' : 'none';
            });
        }
    </script>
</body>
</html>