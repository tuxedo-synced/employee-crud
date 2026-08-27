<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Register - Employee CRUD</title>

    <link rel="stylesheet"
          href="<c:url value='/resources/css/register-style.css' />">
</head>

<body>

    <div class="register-container">

        <div class="register-card">

            <div class="logo">
                Employee<span>CRUD</span>
            </div>

            <h1>Create Account</h1>

            <p class="subtitle">
                Register to access the employee management system
            </p>

            <form action="<c:url value='/register-validate' />" method="post">

                <div class="form-group">

                    <label for="fullname">
                        Full Name
                    </label>

                    <input type="text"
                           id="fullname"
                           name="fullName"
                           placeholder="Enter your full name"
                           required>

                </div>


                <div class="form-group">

                    <label for="username">
                        Username
                    </label>

                    <input type="text"
                           id="username"
                           name="username"
                           placeholder="Choose a username"
                           required>

                </div>


                <div class="form-group">

                    <label for="email">
                        Email Address
                    </label>

                    <input type="email"
                           id="email"
                           name="email"
                           placeholder="Enter your email"
                           required>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label for="password">
                            Password
                        </label>

                        <input type="password"
                               id="password"
                               name="password"
                               placeholder="Password"
                               required>

                    </div>


                    <div class="form-group">

                        <label for="confirmPassword">
                            Confirm Password
                        </label>

                        <input type="password"
                               id="confirmPassword"
                               name="confirmPassword"
                               placeholder="Confirm"
                               required>

                    </div>

                </div>


                <button type="submit" class="register-button">
                    Create Account
                </button>

            </form>


            <p class="login-text">
                Already have an account?
                <a href="<c:url value='/login' />">
                    Login
                </a>
            </p>


            <a href="<c:url value='/' />" class="back-home">
                ← Back to Home
            </a>

        </div>

    </div>

</body>
</html>
