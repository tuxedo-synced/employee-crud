<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Add Employee</title>

    <link rel="stylesheet"
          href="<c:url value='/resources/css/add-employee-style.css' />">
</head>

<body>

    <div class="container">

        <div class="card">

            <h1>Add Employee</h1>

            <form action="<c:url value='/employee/added' />" method="post">

                <div class="form-group">
                    <label for="name">Employee Name</label>
                    <input type="text"
                           id="name"
                           name="name"
                           placeholder="Enter employee name"
                           required>
                </div>

                <div class="form-group">
                    <label for="department">Department</label>
                    <input type="text"
                           id="department"
                           name="department"
                           placeholder="Enter department"
                           required>
                </div>

                <div class="form-group">
                    <label for="salary">Salary</label>
                    <input type="number"
                           id="salary"
                           name="salary"
                           placeholder="Enter salary"
                           step="0.01"
                           min="0"
                           required>
                </div>

                <div class="actions">

                    <button type="submit" class="add-btn">
                        Add Employee
                    </button>

                    <a href="<c:url value='/employees' />"
                       class="cancel-btn">
                        Cancel
                    </a>

                </div>

            </form>

        </div>

    </div>

</body>
</html>