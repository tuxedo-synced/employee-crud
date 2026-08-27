<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee Management</title>

    <link rel="stylesheet"
          href="<c:url value='/resources/css/employee-home-style.css' />">
</head>

<body>

    <header class="navbar">
        <div class="logo">Employee Management</div>

        <nav>
            <a href="<c:url value='/employee-home' />">Home</a>
            <a href="<c:url value='/employees' />">Employees</a>
            <a href="<c:url value='/login' />">Logout</a>
        </nav>
    </header>

    <main class="container">

        <section class="hero">
            <h1>Employee Management System</h1>
            <p>Manage your employees efficiently.</p>
        </section>

        <section class="actions">

            <div class="card">
                <h2>View Employees</h2>
                <p>View all employee records.</p>
                <a class="btn" href="<c:url value='/employees' />">
                    View Employees
                </a>
            </div>

            <div class="card">
                <h2>Add Employee</h2>
                <p>Add a new employee to the system.</p>
                <a class="btn" href="<c:url value='/employee/add' />">
                    Add Employee
                </a>
            </div>

        </section>

    </main>

</body>
</html>