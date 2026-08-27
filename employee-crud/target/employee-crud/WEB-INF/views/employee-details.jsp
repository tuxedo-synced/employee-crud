<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee Details</title>

    <link rel="stylesheet"
          href="<c:url value='/resources/css/employee-details-style.css' />">
</head>

<body>

    <header class="navbar">
        <h2>Employee Management</h2>

        <a href="<c:url value='/employee-home' />" class="home-btn">
            Home
        </a>
    </header>

    <main class="container">

        <h1>Employee Details</h1>

        <div class="table-container">

            <table>

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Department</th>
                        <th>Salary</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach var="employee" items="${entireDetails}">

                        <tr>
                            <td>
                                <a class="id-link"
                                   href="<c:url value='/employees/${employee.id}' />">
                                    ${employee.id}
                                </a>
                            </td>

                            <td>${employee.name}</td>
                            <td>${employee.department}</td>
                            <td>${employee.salary}</td>
                        </tr>

                    </c:forEach>

                </tbody>

            </table>

        </div>

    </main>

</body>
</html>