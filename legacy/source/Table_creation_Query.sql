/*Oracle-Base Procurement & Invoice Management System*/

CREATE TABLE xxdepartments (
department_id NUMBER PRIMARY KEY,
department_name varchar2(50),
location VARCHAR2(100),
description VARCHAR2(500),
status VARCHAR2(20),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)
/

DESC xxdepartments

--xxEMPLOYEES

CREATE TABLE xxemployees(
employee_id NUMBER PRIMARY KEY,
employee_number VARCHAR2(50),
first_name VARCHAR2(50),
last_name VARCHAR2(50),
email VARCHAR2(200),
phone_number VARCHAR2(20),
department_id NUMBER,
job_title VARCHAR2(200),
hire_date DATE,
status VARCHAR2(20),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxsuppliers

CREATE TABLE xxsuppliers(
supplier_id NUMBER PRIMARY KEY,
supplier_number VARCHAR2(50),
supplier_name VARCHAR2(250),
tax_registration_number VARCHAR2(250),
email VARCHAR2(200),
phone VARCHAR2(20),
ststus VARCHAR2(20),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxsupplier_sites

CREATE TABLE xxsupplier_sites(
supplier_site_id NUMBER PRIMARY KEY,
supplier_id NUMBER,
site_code VARCHAR2(50),
site_name VARCHAR2(200),
address_line1 VARCHAr2(250),
address_line2 VARCHAR2(250),
city VARCHAR2(100),
state VARCHAR2(100),
postal_code VARCHAR2(20),
country VARCHAR2(200),
contact_name VARCHAR2(200),
contact_phone VARCHAR2(20),
status VARCHAR2(20),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxitems

CREATE TABLE xxitems(
item_id NUMBER PRIMARY KEY,
item_code VARCHAR2(50),
item_name VARCHAR2(100),
description VARCHAR2(500),
catagory VARCHAR2(30),
unit_of_measure VARCHAR2(20),
standard_price NUMBER,
currency_code VARCHAR2(20),
status VARCHAR2(20),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxrequisitions

CREATE TABLE xxrequisitions(
requisition_id NUMBER PRIMARY KEY,
requisition_number VARCHAR2(50),
requested_by NUMBER,
requesition_date DATE,
description VARCHAR2(500),
status VARCHAR2(20),
total_amount NUMBER,
approval_status VARCHAR2(20),
approved_by NUMBER,
approved_date DATE,
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxrequesition_lines

CREATE TABLE xxrequesition_lines(
requisition_line_id NUMBER PRIMARY KEY,
requesition_id NUMBER,
item_id NUMBER,
quantity NUMBER,
estimated_price NUMBER(14,2),
needed_date DATE,
short_discription VARCHAR2(250),
status VARCHAR2(20))

--xxpurchase_order

CREATE TABLE xxpurchase_order(
purchase_order_id NUMBER PRIMARY KEY,
po_number VARCHAR2(250),
suppier_id NUMBER,
supplier_site_id NUMBER,
po_date DATE,
buyer_id NUMBER,
currency_code VARCHAR(20),
total_amount NUMBER(14,2),
status VARCHAR2(20),
approval_status VARCHAR2(20),
approved_by NUMBER,
approved_date DATE,
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxpo_lines

CREATE TABLE xxpo_lines(
po_line_id NUMBER PRIMARY KEY,
purchase_order_id NUMBER,
line_number VARCHAR2(50),
item_id NUMBER,
quantity NUMBER,
unit_price NUMBER,
line_amount NUMBER,
needed_date DATE,
description VARCHAR2(500),
status VARCHAR2(20),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxreceipts

CREATE TABLE xxreceipts(
receipt_id NUMBER PRIMARY KEY,
receipt_number VARCHAR2(50),
purchase_order_id NUMBER,
supplier_id NUMBER,
receipt_date DATE,
received_by NUMBER,
status VARCHAR2(20),
description VARCHAR2(500),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)

--xxpayments

CREATE TABLE xxpayments(
payment_id NUMBER PRIMARY KEY,
payment_number VARCHAR2(50),
invoice_id NUMBER,
supplier_id NUMBER,
payment_date DATE,
payment_amount NUMBER,
payment_method VARCHAR2(100),
currency_code VARCHAR2(30),
status VARCHAR2(20),
reference_number VARCHAR2(50),
created_by NUMBER,
created_date DATE,
updated_by NUMBER,
updated_date DATE)








/* DDL Alter Operation Execution */

ALTER TABLE xxsuppliers
RENAME COLUMN ststus TO status
/

ALTER TABLE xxsupplier_sites
ADD contact_email VARCHAR2(200)
/

ALTER TABLE xxitems
RENAME COLUMN catagory TO item_category
DROP COLUMN currency_code
/

ALTER TABLE xxrequisition_lines
ADD (created_date DATE,
created_by NUMBER,
updated_by NUMBER,
updated_date DATE)
/

RENAME xxrequesition_lines TO xxrequisition_lines
/

commit
/


SELECT * 
  FROM user_tables
WHERE table_name LIKE 'PAY%'