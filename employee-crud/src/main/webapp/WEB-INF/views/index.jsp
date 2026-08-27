<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee CRUD</title>

    <link rel="stylesheet"
      href="<c:url value='/resources/css/home-style.css' />">
</head>

<body>

    <header class="navbar">
        <div class="logo">Employee<span>CRUD</span></div>

        <a href="<c:url value='/login' />" class="login-btn">
            Login
        </a>
    </header>


    <main class="hero">

        <div class="hero-content">

            <p class="tagline">EMPLOYEE MANAGEMENT SYSTEM</p>

            <h1>
                Manage Your Employees
                <span>Effortlessly.</span>
            </h1>

            <p class="description">
                A simple and powerful employee management system
                to create, view, update and delete employee records
                from one place.
            </p>

            <div class="buttons">
                <a href="<c:url value='/login' />" class="primary-btn">
                    Login / Sign In
                </a>

                <a href="#features" class="secondary-btn">
                    Explore Features
                </a>
            </div>

        </div>

        <div class="hero-card">

            <div class="card-header">
                <span class="status"></span>
                Employee Dashboard
            </div>

            <div class="employee-row">
                <div class="avatar">RS</div>

                <div>
                    <h3>Rahul Sharma</h3>
                    <p>Software Developer</p>
                </div>

                <span class="active">Active</span>
            </div>

            <div class="employee-row">
                <div class="avatar">AK</div>

                <div>
                    <h3>Anil Kumar</h3>
                    <p>Backend Developer</p>
                </div>

                <span class="active">Active</span>
            </div>

            <div class="employee-row">
                <div class="avatar">PS</div>

                <div>
                    <h3>Priya Singh</h3>
                    <p>HR Manager</p>
                </div>

                <span class="active">Active</span>
            </div>

        </div>

    </main>


    <section id="features" class="features">

        <div class="section-title">
            <p>FEATURES</p>
            <h2>Everything You Need</h2>
        </div>

        <div class="feature-container">

            <div class="feature-card">
                <div class="icon">＋</div>
                <h3>Create</h3>
                <p>Add new employees and store their information.</p>
            </div>

            <div class="feature-card">
                <div class="icon">⌕</div>
                <h3>Read</h3>
                <p>View and search employee records quickly.</p>
            </div>

            <div class="feature-card">
                <div class="icon">✎</div>
                <h3>Update</h3>
                <p>Edit employee information whenever required.</p>
            </div>

            <div class="feature-card">
                <div class="icon">×</div>
                <h3>Delete</h3>
                <p>Remove employee records safely and easily.</p>
            </div>

        </div>

    </section>


    <footer>
        <p>© 2026 Employee CRUD. All rights reserved.</p>
    </footer>

</body>
</html>