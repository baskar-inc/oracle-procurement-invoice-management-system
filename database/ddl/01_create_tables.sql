-- Oracle Procurement & Invoice Management System
-- Canonical schema definition
-- Target: Oracle Database 19c+ / Oracle XE-compatible SQL
-- PL/SQL business logic is intentionally outside this script.

CREATE TABLE xxdepartments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL,
    location VARCHAR2(100),
    description VARCHAR2(500),
    status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxemployees (
    employee_id NUMBER PRIMARY KEY,
    employee_number VARCHAR2(50) NOT NULL,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(200),
    phone_number VARCHAR2(20),
    department_id NUMBER,
    job_title VARCHAR2(200),
    hire_date DATE,
    status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxsuppliers (
    supplier_id NUMBER PRIMARY KEY,
    supplier_number VARCHAR2(50) NOT NULL,
    supplier_name VARCHAR2(250) NOT NULL,
    tax_registration_number VARCHAR2(250),
    email VARCHAR2(200),
    phone VARCHAR2(20),
    status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxsupplier_sites (
    supplier_site_id NUMBER PRIMARY KEY,
    supplier_id NUMBER NOT NULL,
    site_code VARCHAR2(50) NOT NULL,
    site_name VARCHAR2(200),
    address_line1 VARCHAR2(250),
    address_line2 VARCHAR2(250),
    city VARCHAR2(100),
    state VARCHAR2(100),
    postal_code VARCHAR2(20),
    country VARCHAR2(200),
    contact_name VARCHAR2(200),
    contact_phone VARCHAR2(20),
    contact_email VARCHAR2(200),
    status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxitems (
    item_id NUMBER PRIMARY KEY,
    item_code VARCHAR2(50) NOT NULL,
    item_name VARCHAR2(100) NOT NULL,
    description VARCHAR2(500),
    item_category VARCHAR2(30),
    unit_of_measure VARCHAR2(20),
    standard_price NUMBER(14,2),
    status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxrequisitions (
    requisition_id NUMBER PRIMARY KEY,
    requisition_number VARCHAR2(50) NOT NULL,
    requested_by NUMBER NOT NULL,
    requisition_date DATE NOT NULL,
    description VARCHAR2(500),
    status VARCHAR2(20) NOT NULL,
    total_amount NUMBER(14,2),
    approval_status VARCHAR2(20) NOT NULL,
    approved_by NUMBER,
    approved_date DATE,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxrequisition_lines (
    requisition_line_id NUMBER PRIMARY KEY,
    requisition_id NUMBER NOT NULL,
    item_id NUMBER NOT NULL,
    quantity NUMBER(14,3) NOT NULL,
    estimated_price NUMBER(14,2),
    needed_date DATE,
    short_description VARCHAR2(250),
    status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxpurchase_order (
    purchase_order_id NUMBER PRIMARY KEY,
    po_number VARCHAR2(250) NOT NULL,
    supplier_id NUMBER NOT NULL,
    supplier_site_id NUMBER NOT NULL,
    po_date DATE NOT NULL,
    buyer_id NUMBER NOT NULL,
    currency_code VARCHAR2(20) NOT NULL,
    total_amount NUMBER(14,2),
    status VARCHAR2(20) NOT NULL,
    approval_status VARCHAR2(20) NOT NULL,
    approved_by NUMBER,
    approved_date DATE,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxpo_lines (
    po_line_id NUMBER PRIMARY KEY,
    purchase_order_id NUMBER NOT NULL,
    line_number VARCHAR2(50) NOT NULL,
    item_id NUMBER NOT NULL,
    quantity NUMBER(14,3) NOT NULL,
    unit_price NUMBER(14,2),
    line_amount NUMBER(14,2),
    needed_date DATE,
    description VARCHAR2(500),
    status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxreceipts (
    receipt_id NUMBER PRIMARY KEY,
    receipt_number VARCHAR2(50) NOT NULL,
    purchase_order_id NUMBER NOT NULL,
    supplier_id NUMBER NOT NULL,
    receipt_date DATE NOT NULL,
    received_by NUMBER NOT NULL,
    status VARCHAR2(20) NOT NULL,
    description VARCHAR2(500),
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxreceipt_lines (
    receipt_line_id NUMBER PRIMARY KEY,
    receipt_id NUMBER NOT NULL,
    po_line_id NUMBER NOT NULL,
    received_quantity NUMBER(14,3) NOT NULL,
    accepted_quantity NUMBER(14,3) NOT NULL,
    rejected_quantity NUMBER(14,3) NOT NULL,
    receipt_status VARCHAR2(20) NOT NULL,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxinvoices (
    invoice_id NUMBER PRIMARY KEY,
    invoice_number VARCHAR2(50) NOT NULL,
    supplier_id NUMBER NOT NULL,
    supplier_site_id NUMBER NOT NULL,
    invoice_date DATE NOT NULL,
    invoice_type VARCHAR2(30) NOT NULL,
    currency_code VARCHAR2(20) NOT NULL,
    invoice_amount NUMBER(14,2) NOT NULL,
    status VARCHAR2(20) NOT NULL,
    validation_status VARCHAR2(20) NOT NULL,
    due_date DATE,
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxinvoice_lines (
    invoice_line_id NUMBER PRIMARY KEY,
    invoice_id NUMBER NOT NULL,
    po_line_id NUMBER NOT NULL,
    item_id NUMBER NOT NULL,
    quantity NUMBER(14,3) NOT NULL,
    unit_price NUMBER(14,2),
    line_amount NUMBER(14,2),
    tax_amount NUMBER(14,2) DEFAULT 0,
    description VARCHAR2(500),
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxpayments (
    payment_id NUMBER PRIMARY KEY,
    payment_number VARCHAR2(50) NOT NULL,
    invoice_id NUMBER NOT NULL,
    supplier_id NUMBER NOT NULL,
    payment_date DATE,
    payment_amount NUMBER(14,2) NOT NULL,
    payment_method VARCHAR2(100) NOT NULL,
    currency_code VARCHAR2(30) NOT NULL,
    status VARCHAR2(20) NOT NULL,
    reference_number VARCHAR2(50),
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE,
    updated_by NUMBER,
    updated_date DATE
);

CREATE TABLE xxapproval_history (
    approval_history_id NUMBER PRIMARY KEY,
    transaction_type VARCHAR2(30) NOT NULL,
    transaction_id NUMBER NOT NULL,
    approval_level NUMBER NOT NULL,
    approver_id NUMBER NOT NULL,
    approval_status VARCHAR2(20) NOT NULL,
    approval_date DATE,
    comments VARCHAR2(500),
    created_by NUMBER,
    created_date DATE DEFAULT SYSDATE
);

CREATE TABLE xxaudit_history (
    audit_history_id NUMBER PRIMARY KEY,
    table_name VARCHAR2(128) NOT NULL,
    record_id NUMBER NOT NULL,
    action_type VARCHAR2(20) NOT NULL,
    old_value VARCHAR2(4000),
    new_value VARCHAR2(4000),
    changed_by NUMBER NOT NULL,
    changed_date DATE DEFAULT SYSDATE,
    change_reason VARCHAR2(500)
);
