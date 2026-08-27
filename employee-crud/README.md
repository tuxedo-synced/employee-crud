# Employee CRUD

A Java web application for managing employee records, built with **Spring MVC** and **JDBC**. It includes user registration/login and full CRUD (Create, Read, Update, Delete) operations on employee data, backed by an Oracle database.

## Features

- **User authentication** — register and log in with a username/password
- **Employee management**
  - View all employees
  - View a single employee's details
  - Add a new employee
  - Update an existing employee (name, department, salary)
  - Delete an employee
- Server-rendered views using **JSP** with dedicated stylesheets per page

## Tech Stack

| Layer         | Technology                                  |
|---------------|----------------------------------------------|
| Language      | Java 24                                       |
| Web Framework | Spring MVC 7.0.8                              |
| Data Access   | Spring JDBC (`JdbcTemplate`)                  |
| Database      | Oracle Database (via `ojdbc17`)               |
| View Layer    | JSP + JSTL, served through `InternalResourceViewResolver` |
| Server        | Jakarta Servlet API 6.1 (e.g. Tomcat 10.1+)   |
| Build Tool    | Maven (packaged as a `.war`)                  |

## Project Structure

```
EMPLOYEE-CRUD/
├── pom.xml
└── src/main/
    ├── java/com/
    │   ├── controller/
    │   │   ├── ControllerHome.java         # Landing page
    │   │   ├── ControllerLogin.java        # Login & registration
    │   │   ├── ControllerDisplay.java      # List / view employees
    │   │   └── ControllerOperations.java   # Add / update / delete employees
    │   ├── model/
    │   │   ├── Employee.java
    │   │   └── UserDetails.java
    │   └── rowmapper/
    │       ├── EmployeeRowMapper.java
    │       └── RowMapperImple.java         # Maps USER_DETAILS rows
    └── webapp/WEB-INF/
        ├── web.xml
        ├── spring-servlet.xml              # Bean & DataSource config
        ├── views/                          # JSP pages (login, register, employee-home, etc.)
        └── resources/css/                  # Per-page stylesheets
```

## Prerequisites

- JDK 24
- Maven 3.6+
- Oracle Database (e.g. Oracle XE) reachable at `localhost:1521/XEPDB1`
- A servlet container supporting Jakarta EE 10 (e.g. Apache Tomcat 10.1+)

## Database Setup

The app expects two tables. Create them in your Oracle schema before running:

```sql
CREATE TABLE employee (
    id         NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name       VARCHAR2(100),
    department VARCHAR2(100),
    salary     NUMBER
);

CREATE TABLE user_details (
    id         NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name  VARCHAR2(100),
    username   VARCHAR2(100) UNIQUE,
    email      VARCHAR2(100),
    password   VARCHAR2(100)
);
```

## Configuration

Database connection settings live in `src/main/webapp/WEB-INF/spring-servlet.xml`:

```xml
<bean name="dataSourceImple" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
    <property name="driverClassName" value="oracle.jdbc.OracleDriver" />
    <property name="url" value="jdbc:oracle:thin:@//localhost:1521/XEPDB1" />
    <property name="username" value="oracle" />
    <property name="password" value="oracle" />
</bean>
```

Update the `url`, `username`, and `password` values to match your local Oracle instance.

> ⚠️ Credentials are currently hardcoded in the XML config — consider externalizing them (e.g. via environment variables or a `.properties` file) before deploying anywhere beyond local development.

## Build & Run

1. **Clone the repo**
   ```bash
   git clone https://github.com/tuxedo-synced/EMPLOYEE-CRUD.git
   cd EMPLOYEE-CRUD
   ```

2. **Build the WAR file**
   ```bash
   mvn clean package
   ```
   This produces `target/employee-crud.war`.

3. **Deploy**
   Copy `target/employee-crud.war` into your servlet container's deployment directory (e.g. Tomcat's `webapps/`), or run it via your IDE's built-in server support.

4. **Access the app**
   ```
   http://localhost:8080/employee-crud/
   ```

## Application Routes

| Method | Route                          | Description                        |
|--------|---------------------------------|-------------------------------------|
| GET    | `/`                              | Home page                          |
| GET    | `/login`                         | Login form                         |
| GET    | `/register`                      | Registration form                  |
| POST   | `/login-validate`                | Validate login credentials         |
| POST   | `/register-validate`             | Create a new user account          |
| GET    | `/employees`                     | List all employees                 |
| GET    | `/employees/{id}`                | View a single employee's details   |
| GET    | `/employee/add`                  | Add-employee form                  |
| POST   | `/employee/added`                | Create a new employee record       |
| POST   | `/employee/update/{id}`          | Update an employee record          |
| GET    | `/employee/delete/{id}`          | Delete an employee record          |

## Known Limitations

- Passwords are stored and compared in plain text — not suitable for production without hashing (e.g. BCrypt).
- No session/authentication guard on employee routes — anyone with the URL can access `/employees` without logging in.
- Database credentials are hardcoded in `spring-servlet.xml`.

## License

No license specified.
