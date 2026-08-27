<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Employee Details</title>

    <link rel="stylesheet"
          href="<c:url value='/resources/css/single-employee-detail-style.css' />">
</head>

<body>

    <div class="container">

        <div class="card">

            <h1>Employee Details</h1>

            <form action="<c:url value='/employee/update/${empDetail.id}' />" method="post">

                <div class="form-group">
                    <label>Employee ID</label>
                    <input type="text"
                           name="id"
                           value="${empDetail.id}"
                           readonly>
                </div>

                <div class="form-group">
                    <label>Name</label>
                    <input type="text"
                           name="name"
                           value="${empDetail.name}">
                </div>

                <div class="form-group">
                    <label>Department</label>
                    <input type="text"
                           name="department"
                           value="${empDetail.department}">
                </div>

                <div class="form-group">
                    <label>Salary</label>
                    <input type="text"
                           name="salary"
                           value="${empDetail.salary}">
                </div>

                <div class="actions">

                    <button type="submit" class="btn update-btn">
                        Update
                    </button>

                    <a href="<c:url value='/employee/delete/${empDetail.id}' />"
                       class="btn delete-btn">
                        Delete
                    </a>

                </div>

            </form>

        </div>

    </div>

</body>
</html>