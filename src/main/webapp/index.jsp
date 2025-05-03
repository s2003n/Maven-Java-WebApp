<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello from Maven Java Web App</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: url('https://s3.us-west-1.wasabisys.com/ft-backgrounds/mreflow-Matt_Wolfe_cosmos_desktop_background_RGB___5e2bc236-ebd4-428d-bf92-8c5fddcf0694.jpeg') no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
            overflow-x: hidden;
        }
        header {
            background: rgba(0, 0, 0, 0.8);
            padding: 20px 0;
            text-align: center;
            position: relative;
            z-index: 10;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
        }
        nav {
            margin: 20px 0;
        }
        nav a {
            color: #00ffcc; /* Neon color */
            text-decoration: none;
            padding: 10px 15px;
            margin: 0 15px;
            border-radius: 5px;
            transition: background 0.3s, transform 0.3s;
        }
        nav a:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: scale(1.1);
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
            text-shadow: 0 0 10px #00ffcc; /* Neon glow effect */
        }
        h2 {
            font-size: 2em;
            margin: 20px 0;
            text-shadow: 0 0 10px #00ffcc; /* Neon glow effect */
            transition: color 0.3s ease; /* Smooth transition */
        }
        h2:hover {
            color: #ffcc00; /* Change color on hover */
        }
        p {
            font-size: 1.2em;
            line-height: 1.6;
            transition: color 0.3s ease; /* Smooth transition */
        }
        p:hover {
            color: #ffcc00; /* Change color on hover */
        }
        footer {
            text-align: center;
            padding: 20px 0;
            background: rgba(0, 0, 0, 0.8);
            position: relative;
            bottom: 0;
            width: 100%;
            z-index: 10;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes moveOut {
            0% { transform: translateY(0); opacity: 1; }
            100% { transform: translateY(-50px); opacity: 0; }
        }
        @keyframes moveIn {
            0% { transform: translateY(50px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }
        @media (max-width: 600px) {
            h1 {
                font-size: 2em;
            }
            h2 {
                font-size: 1.5em;
            }
            p {
                font-size: 1em;
            }
            nav a {
                margin: 0 5px;
                padding: 8px 10px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Maven Java Web App</h1>
        <nav>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>
    <div class="container">
        <h2 id="dynamicText">Hello, World!</h2>
        <p>Unleash the power of Java with our cutting-edge web application.</p>
        <p>Join us on a journey of innovation, creativity, and technology!</p>
    </div>
    <footer>
        <p>&copy; 2025 Maven Java Web App. All rights reserved.</p>
        <p><i class="fab fa-github"></i> <a href="https://github.com/s2003n/Maven-Java-WebApp" style="color: #00ffcc;">GitHub Repository</a></p>
    </footer>

    <script>
        const texts = [
            "Hello, World!",
            "Unleash the power of Java with our cutting-edge web application.",
            "Join us on a journey of innovation, creativity, and technology!",
            "Explore the future of web development with us!"
        ];
        let index = 0;

        function changeText() {
            const dynamicText = document.getElementById("dynamicText");
            dynamicText.style.animation = "moveOut 0.5s forwards";

            setTimeout(() => {
                index = (index + 1) % texts.length; // Cycle through texts
                dynamicText.textContent = texts[index];
                dynamicText.style.animation = "moveIn 0.5s forwards";
            }, 500); // Wait for the moveOut animation to finish
        }

        setInterval(changeText, 3000); // Change text every 3 seconds
    </script>
</body>
</html>

