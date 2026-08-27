<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login - Employee CRUD</title>

    <link rel="stylesheet"
          href="<c:url value='/resources/css/login-style.css' />">
</head>

<body>

    <div class="login-container">

        <div class="login-card">

            <div class="logo">
                Employee<span>CRUD</span>
            </div>

            <h1>Welcome Back</h1>

            <p class="subtitle">
                Login to manage your employee records
            </p>

            <form action="<c:url value='/login-validate' />" method="post">

                <div class="form-group">
                    <label for="username">Username</label>

                    <input type="text"
                           id="username"
                           name="username"
                           placeholder="Enter your username"
                           required>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>

                    <input type="password"
                           id="password"
                           name="password"
                           placeholder="Enter your password"
                           required>
                </div>

                <div class="form-options">

                    <label class="remember">
                        <input type="checkbox" name="remember">
                        Remember me
                    </label>

                    <a href="#">Forgot Password?</a>

                </div>

                <button type="submit" class="login-button">
                    Login
                </button>

            </form>

            <div class="divider">
                <span>OR</span>
            </div>

            <p class="register-text">
                Don't have an account?
                <a href="<c:url value='/register' />">
                    Create Account
                </a>
            </p>

            <a href="<c:url value='/' />" class="back-home">
                ← Back to Home
            </a>

        </div>

    </div>

</body>
</html>

