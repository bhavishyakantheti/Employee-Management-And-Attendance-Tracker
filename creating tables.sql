SQL> CREATE TABLE departments (
  2      dept_id NUMBER PRIMARY KEY,
  3      dept_name VARCHAR2(50)
  4  );

Table created.

SQL> CREATE TABLE roles (
  2      role_id NUMBER PRIMARY KEY,
  3      role_name VARCHAR2(50)
  4  );

Table created.

SQL> CREATE TABLE employees (
  2      emp_id NUMBER PRIMARY KEY,
  3      full_name VARCHAR2(100),
  4      email VARCHAR2(100),
  5      phone VARCHAR2(20),
  6      dept_id NUMBER REFERENCES departments(dept_id),
  7      role_id NUMBER REFERENCES roles(role_id),
  8      join_date DATE
  9  );

Table created.

SQL> CREATE TABLE attendance (
  2      att_id NUMBER PRIMARY KEY,
  3      emp_id NUMBER REFERENCES employees(emp_id),
  4      check_in DATE,
  5      check_out DATE,
  6      status VARCHAR2(20)
  7  );

Table created.

SQL> spool off
