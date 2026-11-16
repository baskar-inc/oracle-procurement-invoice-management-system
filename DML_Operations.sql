INSERT INTO xxdepartments
(
    department_id,
    department_name,
    location,
    description,
    status,
    created_by,
    created_date
)
VALUES
(
    10,
    'Procurement',
    'Chennai',
    'Handles procurement and supplier management activities',
    'ACTIVE',
    1,
    SYSDATE
);

INSERT INTO xxdepartments
(
    department_id,
    department_name,
    location,
    description,
    status,
    created_by,
    created_date
)
VALUES
(
    20,
    'Finance',
    'Chennai',
    'Handles accounts payable, invoices and payments',
    'ACTIVE',
    1,
    SYSDATE
);

INSERT INTO xxdepartments
(
    department_id,
    department_name,
    location,
    description,
    status,
    created_by,
    created_date
)
VALUES
(
    30,
    'Information Technology',
    'Bangalore',
    'Handles enterprise applications and IT infrastructure',
    'ACTIVE',
    1,
    SYSDATE
);

INSERT INTO xxdepartments
(
    department_id,
    department_name,
    location,
    description,
    status,
    created_by,
    created_date
)
VALUES
(
    40,
    'Human Resources',
    'Chennai',
    'Handles employee and organizational management',
    'ACTIVE',
    1,
    SYSDATE
);

INSERT INTO xxdepartments
(
    department_id,
    department_name,
    location,
    description,
    status,
    created_by,
    created_date
)
VALUES
(
    50,
    'Operations',
    'Bangalore',
    'Handles business operations and service delivery',
    'ACTIVE',
    1,
    SYSDATE
);

COMMIT;

SELECT * FROM xxdepartments
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES (
  1001,
  'EMP001',
  'Arun',
  'Kumar',
  'arun.kumar@erpcompany.com',
  '9876501001',
  10,
  'Procurement Manager',
  TO_DATE('15/01/2022','DD/MM/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
 /
 
INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES (
  1002,
  'EMP002',
  'Priya',
  'Sharma',
  'priya.sharma@erpcompany.com',
  '9876501002',
  10,
  'Procurement Officer',
  TO_DATE('10/JUN/2023','DD/MON/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES (
  1003,
  'EMP003',
  'Ravi',
  'Kumar',
  'ravi.kumar@erpcompany.com',
  '9876501003',
  20,
  'Finance Manager',
  TO_DATE('20/AUG/2021','DD/MM/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES (
  1004,
  'EMP004',
  'Divya',
  'Raj',
  'divya.raj@erpcompany.com',
  '9876501004',
  20,
  'Accounts Payable Analyst',
  TO_DATE('05/AUG/2023','DD/MM/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/


INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES(
  1005,
  'EMP005',
  'Karthik',
  'Suresh',
  'karthik.suresh@erpcompany.com',
  9876501005,
  30,
  'IT Manager',
  TO_DATE('12/FEB/2020','DD/MON/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES(
  1006,
  'EMP006',
  'Sneha',
  'Mohan',
  'sneha.mohan@erpcompany.com',
  9876501006,
  30,
  'ERP Application Analyst',
  TO_DATE('18/JUL/2024','DD/MON/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES(
  1007,
  'EMP007',
  'Meena',
  'Krishnan',
  'meena.krishnan@erpcompany.com',
  9876501007,
  40,
  'HR Manager',
  TO_DATE('25/NOV/2021','DD/MON/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES(
  1008,
  'EMP008',
  'Santhosh',
  'Kumar',
  'santhosh.kumar@erpcompany.com',
  9876501008,
  50,
  'Operations Manager',
  TO_DATE('08/APR/2022','DD/MON/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES(
  1009,
  'EMP009',
  'Nisha',
  'Devi',
  'nisha.devi@erpcompany.com',
  9876501009,
  50,
  'Operations Executive',
  TO_DATE('14/SEP/2024','DD/MON/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

INSERT INTO xxemployees(
  employee_id,
  employee_number,
  first_name,
  last_name,
  email,
  phone_number,
  department_id,
  job_title,
  hire_date,
  status,
  created_by,
  created_date)
VALUES(
  1010,
  'EMP010',
  'Vignesh',
  'Anand',
  'vignesh.anand@erpcompany.com',
  9876501010,
  10,
  'Senior Procurement Officer',
  TO_DATE('03/JAN/2025','DD/MON/YYYY'),
  'ACTIVE',
  1,
  SYSDATE)
/

SELECT * FROM xxemployees
/

INSERT ALL
    INTO xxsuppliers
    (supplier_id, supplier_number, supplier_name, tax_registration_number,
     email, phone, status, created_by, created_date)
    VALUES
    (2001, 'SUP001', 'TechNova Solutions Pvt Ltd', 'GSTIN33TECHNOVA01',
     'contact@technova.com', '9886502001', 'ACTIVE', 1, SYSDATE)

    INTO xxsuppliers
    (supplier_id, supplier_number, supplier_name, tax_registration_number,
     email, phone, status, created_by, created_date)
    VALUES
    (2002, 'SUP002', 'OfficePro Supplies Pvt Ltd', 'GSTIN33OFFICEPRO02',
     'sales@officepro.com', '9886502002', 'ACTIVE', 1, SYSDATE)

    INTO xxsuppliers
    (supplier_id, supplier_number, supplier_name, tax_registration_number,
     email, phone, status, created_by, created_date)
    VALUES
    (2003, 'SUP003', 'Global Industrial Equipment Ltd', 'GSTIN29GLOBALIND03',
     'sales@globalindustrial.com', '9886502003', 'ACTIVE', 1, SYSDATE)

    INTO xxsuppliers
    (supplier_id, supplier_number, supplier_name, tax_registration_number,
     email, phone, status, created_by, created_date)
    VALUES
    (2004, 'SUP004', 'DataCore Technologies Pvt Ltd', 'GSTIN29DATACORE04',
     'contact@datacore.com', '9886502004', 'ACTIVE', 1, SYSDATE)

    INTO xxsuppliers
    (supplier_id, supplier_number, supplier_name, tax_registration_number,
     email, phone, status, created_by, created_date)
    VALUES
    (2005, 'SUP005', 'SafeNet Security Systems', 'GSTIN33SAFENET05',
     'sales@safenet.com', '9886502005', 'ACTIVE', 1, SYSDATE)
SELECT 1 FROM dual
/

SELECT *
FROM xxsuppliers
ORDER BY supplier_id;
/

INSERT ALL
    INTO xxsupplier_sites
    (supplier_site_id, supplier_id, site_code, site_name,
     address_line1, address_line2, city, state, postal_code,
     country, contact_name, contact_phone, contact_email,
     status, created_by, created_date)
    VALUES
    (2101, 2001, 'CHN-HQ', 'Chennai Head Office',
     '45 Mount Road', 'Teynampet', 'Chennai', 'Tamil Nadu',
     '600018', 'India', 'Arun Raj', '9886512101',
     'arun.raj@technova.com', 'ACTIVE', 1, SYSDATE)

    INTO xxsupplier_sites
    (supplier_site_id, supplier_id, site_code, site_name,
     address_line1, address_line2, city, state, postal_code,
     country, contact_name, contact_phone, contact_email,
     status, created_by, created_date)
    VALUES
    (2102, 2001, 'BLR-BR', 'Bangalore Branch',
     '18 Whitefield Main Road', 'Whitefield', 'Bangalore', 'Karnataka',
     '560066', 'India', 'Ramesh Kumar', '9886512102',
     'ramesh.kumar@technova.com', 'ACTIVE', 1, SYSDATE)

    INTO xxsupplier_sites
    (supplier_site_id, supplier_id, site_code, site_name,
     address_line1, address_line2, city, state, postal_code,
     country, contact_name, contact_phone, contact_email,
     status, created_by, created_date)
    VALUES
    (2103, 2002, 'CHN-MAIN', 'Chennai Main Site',
     '72 Anna Salai', 'Guindy', 'Chennai', 'Tamil Nadu',
     '600032', 'India', 'Suresh Babu', '9886512103',
     'suresh.babu@officepro.com', 'ACTIVE', 1, SYSDATE)

    INTO xxsupplier_sites
    (supplier_site_id, supplier_id, site_code, site_name,
     address_line1, address_line2, city, state, postal_code,
     country, contact_name, contact_phone, contact_email,
     status, created_by, created_date)
    VALUES
    (2104, 2003, 'BLR-HQ', 'Bangalore Head Office',
     '125 Industrial Area', 'Peenya', 'Bangalore', 'Karnataka',
     '560058', 'India', 'Manoj Singh', '9886512104',
     'manoj.singh@globalindustrial.com', 'ACTIVE', 1, SYSDATE)

    INTO xxsupplier_sites
    (supplier_site_id, supplier_id, site_code, site_name,
     address_line1, address_line2, city, state, postal_code,
     country, contact_name, contact_phone, contact_email,
     status, created_by, created_date)
    VALUES
    (2105, 2004, 'BLR-TECH', 'Bangalore Technology Center',
     '88 Electronic City Road', 'Electronic City', 'Bangalore', 'Karnataka',
     '560100', 'India', 'Deepak Rao', '9886512105',
     'deepak.rao@datacore.com', 'ACTIVE', 1, SYSDATE)

    INTO xxsupplier_sites
    (supplier_site_id, supplier_id, site_code, site_name,
     address_line1, address_line2, city, state, postal_code,
     country, contact_name, contact_phone, contact_email,
     status, created_by, created_date)
    VALUES
    (2106, 2005, 'CHN-OFF', 'Chennai Office',
     '21 GST Road', 'Chromepet', 'Chennai', 'Tamil Nadu',
     '600044', 'India', 'Vijay Kumar', '9886512106',
     'vijay.kumar@safenet.com', 'ACTIVE', 1, SYSDATE)
SELECT 1 FROM dual
/

SELECT *
FROM xxsupplier_sites
ORDER BY supplier_site_id
/


INSERT ALL
    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3001, 'ITM001', 'Laptop Computer',
     'Business laptop for employees',
     'IT_EQUIPMENT', 'EACH', 65000, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3002, 'ITM002', 'Desktop Computer',
     'Business desktop computer',
     'IT_EQUIPMENT', 'EACH', 48000, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3003, 'ITM003', 'Laser Printer',
     'Network laser printer for office use',
     'OFFICE_EQUIPMENT', 'EACH', 22000, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3004, 'ITM004', 'Office Chair',
     'Ergonomic office chair',
     'OFFICE_FURNITURE', 'EACH', 12500, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3005, 'ITM005', 'Office Desk',
     'Employee workstation desk',
     'OFFICE_FURNITURE', 'EACH', 18000, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3006, 'ITM006', 'Network Switch',
     '24-port managed network switch',
     'NETWORK_EQUIPMENT', 'EACH', 28000, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3007, 'ITM007', 'Wireless Keyboard',
     'Wireless keyboard for desktop users',
     'COMPUTER_ACCESSORY', 'EACH', 1800, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3008, 'ITM008', 'Wireless Mouse',
     'Wireless optical mouse',
     'COMPUTER_ACCESSORY', 'EACH', 1200, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3009, 'ITM009', 'Network Cable',
     'CAT6 Ethernet network cable',
     'NETWORK_ACCESSORY', 'METER', 85, 'ACTIVE', 1, SYSDATE)

    INTO xxitems
    (item_id, item_code, item_name, description, item_category,
     unit_of_measure, standard_price, status, created_by, created_date)
    VALUES
    (3010, 'ITM010', 'UPS 1KVA',
     '1KVA uninterruptible power supply',
     'POWER_EQUIPMENT', 'EACH', 7500, 'ACTIVE', 1, SYSDATE)

SELECT 1 FROM dual;
/

INSERT ALL
    INTO xxrequisitions
    (requisition_id, requisition_number, requested_by, requesition_date,
     description, status, total_amount, approval_status,
     approved_by, approved_date, created_by, created_date)
    VALUES
    (4001, 'REQ001', 1002, DATE '2026-11-01',
     'Laptop requirements for new procurement team members',
     'APPROVED', 130000, 'APPROVED',
     1001, DATE '2026-11-02', 1, SYSDATE)

    INTO xxrequisitions
    (requisition_id, requisition_number, requested_by, requesition_date,
     description, status, total_amount, approval_status,
     approved_by, approved_date, created_by, created_date)
    VALUES
    (4002, 'REQ002', 1006, DATE '2026-11-03',
     'Network equipment for IT infrastructure upgrade',
     'APPROVED', 84000, 'APPROVED',
     1005, DATE '2026-11-04', 1, SYSDATE)

    INTO xxrequisitions
    (requisition_id, requisition_number, requested_by, requesition_date,
     description, status, total_amount, approval_status,
     approved_by, approved_date, created_by, created_date)
    VALUES
    (4003, 'REQ003', 1009, DATE '2026-11-05',
     'Office furniture for operations department',
     'APPROVED', 61000, 'APPROVED',
     1008, DATE '2026-11-06', 1, SYSDATE)

    INTO xxrequisitions
    (requisition_id, requisition_number, requested_by, requesition_date,
     description, status, total_amount, approval_status,
     approved_by, approved_date, created_by, created_date)
    VALUES
    (4004, 'REQ004', 1002, DATE '2026-11-07',
     'Computer accessories for procurement department',
     'PENDING', 15000, 'PENDING',
     NULL, NULL, 1, SYSDATE)

    INTO xxrequisitions
    (requisition_id, requisition_number, requested_by, requesition_date,
     description, status, total_amount, approval_status,
     approved_by, approved_date, created_by, created_date)
    VALUES
    (4005, 'REQ005', 1006, DATE '2026-11-08',
     'UPS units for critical IT systems',
     'PENDING', 22500, 'PENDING',
     NULL, NULL, 1, SYSDATE)

SELECT 1 FROM dual;
/


SELECT *
FROM xxrequisitions
ORDER BY requisition_id;
/

INSERT ALL
    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4101, 4001, 3001, 2, 65000,
     DATE '2026-11-15', 'Business laptops for procurement team',
     'APPROVED', 1, SYSDATE)

    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4102, 4002, 3006, 2, 28000,
     DATE '2026-11-20', 'Managed network switches',
     'APPROVED', 1, SYSDATE)

    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4103, 4002, 3009, 100, 85,
     DATE '2026-11-20', 'CAT6 network cables',
     'APPROVED', 1, SYSDATE)

    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4104, 4003, 3004, 2, 12500,
     DATE '2026-11-25', 'Ergonomic office chairs',
     'APPROVED', 1, SYSDATE)

    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4105, 4003, 3005, 2, 18000,
     DATE '2026-11-25', 'Employee workstation desks',
     'APPROVED', 1, SYSDATE)

    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4106, 4004, 3007, 5, 1800,
     DATE '2026-11-28', 'Wireless keyboards',
     'PENDING', 1, SYSDATE)

    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4107, 4004, 3008, 5, 1200,
     DATE '2026-11-28', 'Wireless mice',
     'PENDING', 1, SYSDATE)

    INTO xxrequisition_lines
    (requisition_line_id, requesition_id, item_id, quantity,
     estimated_price, needed_date, short_discription, status,
     created_by, created_date)
    VALUES
    (4108, 4005, 3010, 3, 7500,
     DATE '2026-11-30', 'UPS units for IT systems',
     'PENDING', 1, SYSDATE)

SELECT 1 FROM dual;
/

SELECT *
FROM xxrequisition_lines
ORDER BY requisition_line_id;
/


INSERT ALL
    INTO xxpurchase_order
    (purchase_order_id, po_number, supplier_id, supplier_site_id,
     po_date, buyer_id, currency_code, total_amount, status,
     approval_status, approved_by, approved_date,
     created_by, created_date)
    VALUES
    (5001, 'PO001', 2001, 2101,
     DATE '2026-11-03', 1001, 'INR', 130000,
     'OPEN', 'APPROVED', 1001, DATE '2026-11-03',
     1, SYSDATE)

    INTO xxpurchase_order
    (purchase_order_id, po_number, supplier_id, supplier_site_id,
     po_date, buyer_id, currency_code, total_amount, status,
     approval_status, approved_by, approved_date,
     created_by, created_date)
    VALUES
    (5002, 'PO002', 2003, 2104,
     DATE '2026-11-05', 1005, 'INR', 84100,
     'OPEN', 'APPROVED', 1005, DATE '2026-11-05',
     1, SYSDATE)

    INTO xxpurchase_order
    (purchase_order_id, po_number, supplier_id, supplier_site_id,
     po_date, buyer_id, currency_code, total_amount, status,
     approval_status, approved_by, approved_date,
     created_by, created_date)
    VALUES
    (5003, 'PO003', 2002, 2103,
     DATE '2026-11-06', 1001, 'INR', 61000,
     'OPEN', 'APPROVED', 1001, DATE '2026-11-06',
     1, SYSDATE)

SELECT 1 FROM dual;
/

SELECT *
FROM xxpurchase_order
ORDER BY purchase_order_id;
/

INSERT ALL
    INTO xxpo_lines
    (po_line_id, purchase_order_id, line_number, item_id,
     quantity, unit_price, line_amount, needed_date,
     description, status, created_by, created_date)
    VALUES
    (5101, 5001, '1', 3001,
     2, 65000, 130000, DATE '2026-11-15',
     'Business laptops for procurement team',
     'OPEN', 1, SYSDATE)

    INTO xxpo_lines
    (po_line_id, purchase_order_id, line_number, item_id,
     quantity, unit_price, line_amount, needed_date,
     description, status, created_by, created_date)
    VALUES
    (5102, 5002, '1', 3006,
     2, 28000, 56000, DATE '2026-11-20',
     'Managed network switches',
     'OPEN', 1, SYSDATE)

    INTO xxpo_lines
    (po_line_id, purchase_order_id, line_number, item_id,
     quantity, unit_price, line_amount, needed_date,
     description, status, created_by, created_date)
    VALUES
    (5103, 5002, '2', 3009,
     100, 85, 8500, DATE '2026-11-20',
     'CAT6 network cables',
     'OPEN', 1, SYSDATE)

    INTO xxpo_lines
    (po_line_id, purchase_order_id, line_number, item_id,
     quantity, unit_price, line_amount, needed_date,
     description, status, created_by, created_date)
    VALUES
    (5104, 5003, '1', 3004,
     2, 12500, 25000, DATE '2026-11-25',
     'Ergonomic office chairs',
     'OPEN', 1, SYSDATE)

    INTO xxpo_lines
    (po_line_id, purchase_order_id, line_number, item_id,
     quantity, unit_price, line_amount, needed_date,
     description, status, created_by, created_date)
    VALUES
    (5105, 5003, '2', 3005,
     2, 18000, 36000, DATE '2026-11-25',
     'Employee workstation desks',
     'OPEN', 1, SYSDATE)

    INTO xxpo_lines
    (po_line_id, purchase_order_id, line_number, item_id,
     quantity, unit_price, line_amount, needed_date,
     description, status, created_by, created_date)
    VALUES
    (5106, 5003, '3', 3007,
     0, 0, 0, DATE '2026-11-25',
     'Additional keyboard line for future requirement',
     'CANCELLED', 1, SYSDATE)

SELECT 1 FROM dual;
/

INSERT ALL

    INTO xxreceipts
    (receipt_id, receipt_number, purchase_order_id, supplier_id,
     receipt_date, received_by, status, description,
     created_by, created_date)
    VALUES
    (6001, 'REC001', 5001, 2001,
     DATE '2026-11-16', 1002, 'RECEIVED',
     'Two business laptops received in good condition',
     1, SYSDATE)

    INTO xxreceipts
    (receipt_id, receipt_number, purchase_order_id, supplier_id,
     receipt_date, received_by, status, description,
     created_by, created_date)
    VALUES
    (6002, 'REC002', 5002, 2003,
     DATE '2026-11-21', 1006, 'RECEIVED',
     'Network switches and CAT6 cables received',
     1, SYSDATE)

    INTO xxreceipts
    (receipt_id, receipt_number, purchase_order_id, supplier_id,
     receipt_date, received_by, status, description,
     created_by, created_date)
    VALUES
    (6003, 'REC003', 5003, 2002,
     DATE '2026-11-26', 1008, 'PARTIALLY_RECEIVED',
     'Office furniture partially received',
     1, SYSDATE)

SELECT 1 FROM dual;
/

INSERT ALL

    INTO xxreceipt_lines
    (receipt_line_id, receipt_id, po_line_id,
     received_quantity, accepted_quantity, rejected_quantity,
     receipt_status, created_by, created_date)
    VALUES
    (6101, 6001, 5101,
     2, 2, 0,
     'RECEIVED', 1, SYSDATE)

    INTO xxreceipt_lines
    (receipt_line_id, receipt_id, po_line_id,
     received_quantity, accepted_quantity, rejected_quantity,
     receipt_status, created_by, created_date)
    VALUES
    (6102, 6002, 5102,
     2, 2, 0,
     'RECEIVED', 1, SYSDATE)

    INTO xxreceipt_lines
    (receipt_line_id, receipt_id, po_line_id,
     received_quantity, accepted_quantity, rejected_quantity,
     receipt_status, created_by, created_date)
    VALUES
    (6103, 6002, 5103,
     100, 98, 2,
     'RECEIVED', 1, SYSDATE)

    INTO xxreceipt_lines
    (receipt_line_id, receipt_id, po_line_id,
     received_quantity, accepted_quantity, rejected_quantity,
     receipt_status, created_by, created_date)
    VALUES
    (6104, 6003, 5104,
     1, 1, 0,
     'PARTIALLY_RECEIVED', 1, SYSDATE)

    INTO xxreceipt_lines
    (receipt_line_id, receipt_id, po_line_id,
     received_quantity, accepted_quantity, rejected_quantity,
     receipt_status, created_by, created_date)
    VALUES
    (6105, 6003, 5105,
     2, 2, 0,
     'RECEIVED', 1, SYSDATE)

SELECT 1 FROM dual;
/

INSERT ALL

    INTO xxinvoices
    (invoice_id, invoice_number, supplier_id, supplier_site_id,
     invoice_date, invoice_type, currency_code, invoice_amount,
     status, validation_status, due_date,
     created_by, created_date)
    VALUES
    (7001, 'INV001', 2001, 2101,
     DATE '2026-11-17', 'STANDARD', 'INR', 130000,
     'OPEN', 'VALIDATED', DATE '2026-12-17',
     1, SYSDATE)

    INTO xxinvoices
    (invoice_id, invoice_number, supplier_id, supplier_site_id,
     invoice_date, invoice_type, currency_code, invoice_amount,
     status, validation_status, due_date,
     created_by, created_date)
    VALUES
    (7002, 'INV002', 2003, 2104,
     DATE '2026-11-22', 'STANDARD', 'INR', 64500,
     'OPEN', 'VALIDATED', DATE '2026-12-22',
     1, SYSDATE)

    INTO xxinvoices
    (invoice_id, invoice_number, supplier_id, supplier_site_id,
     invoice_date, invoice_type, currency_code, invoice_amount,
     status, validation_status, due_date,
     created_by, created_date)
    VALUES
    (7003, 'INV003', 2002, 2103,
     DATE '2026-11-27', 'STANDARD', 'INR', 48500,
     'OPEN', 'PENDING', DATE '2026-12-27',
     1, SYSDATE)

SELECT 1 FROM dual;
/


INSERT ALL

    INTO xxinvoice_lines
    (invoice_line_id, invoice_id, po_line_id, item_id,
     quantity, unit_price, line_amount, tax_amount,
     description, created_by, created_date)
    VALUES
    (7101, 7001, 5101, 3001,
     2, 65000, 130000, 0,
     'Business laptops for procurement team',
     1, SYSDATE)

    INTO xxinvoice_lines
    (invoice_line_id, invoice_id, po_line_id, item_id,
     quantity, unit_price, line_amount, tax_amount,
     description, created_by, created_date)
    VALUES
    (7102, 7002, 5102, 3006,
     2, 28000, 56000, 0,
     'Managed network switches',
     1, SYSDATE)

    INTO xxinvoice_lines
    (invoice_line_id, invoice_id, po_line_id, item_id,
     quantity, unit_price, line_amount, tax_amount,
     description, created_by, created_date)
    VALUES
    (7103, 7002, 5103, 3009,
     100, 85, 8500, 0,
     'CAT6 network cables',
     1, SYSDATE)

    INTO xxinvoice_lines
    (invoice_line_id, invoice_id, po_line_id, item_id,
     quantity, unit_price, line_amount, tax_amount,
     description, created_by, created_date)
    VALUES
    (7104, 7003, 5104, 3004,
     1, 12500, 12500, 0,
     'Ergonomic office chair',
     1, SYSDATE)

    INTO xxinvoice_lines
    (invoice_line_id, invoice_id, po_line_id, item_id,
     quantity, unit_price, line_amount, tax_amount,
     description, created_by, created_date)
    VALUES
    (7105, 7003, 5105, 3005,
     2, 18000, 36000, 0,
     'Employee workstation desks',
     1, SYSDATE)

SELECT 1 FROM dual;
/

INSERT ALL

    INTO xxpayments
    (payment_id, payment_number, invoice_id, supplier_id,
     payment_date, payment_amount, payment_method,
     currency_code, status, reference_number,
     created_by, created_date)
    VALUES
    (8001, 'PAY001', 7001, 2001,
     DATE '2026-12-10', 130000, 'BANK_TRANSFER',
     'INR', 'COMPLETED', 'UTR202612100001',
     1, SYSDATE)

    INTO xxpayments
    (payment_id, payment_number, invoice_id, supplier_id,
     payment_date, payment_amount, payment_method,
     currency_code, status, reference_number,
     created_by, created_date)
    VALUES
    (8002, 'PAY002', 7002, 2003,
     DATE '2026-12-15', 30000, 'BANK_TRANSFER',
     'INR', 'COMPLETED', 'UTR202612150002',
     1, SYSDATE)

    INTO xxpayments
    (payment_id, payment_number, invoice_id, supplier_id,
     payment_date, payment_amount, payment_method,
     currency_code, status, reference_number,
     created_by, created_date)
    VALUES
    (8003, 'PAY003', 7003, 2002,
     NULL, 0, 'BANK_TRANSFER',
     'INR', 'PENDING', NULL,
     1, SYSDATE)

SELECT 1 FROM dual;
/

INSERT ALL

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9001, 'REQUISITION', 4001,
     1, 1001, 'APPROVED',
     DATE '2026-11-02',
     'Requisition approved by Procurement Manager',
     1, SYSDATE)

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9002, 'REQUISITION', 4002,
     1, 1005, 'APPROVED',
     DATE '2026-11-04',
     'Requisition approved by IT Manager',
     1, SYSDATE)

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9003, 'REQUISITION', 4003,
     1, 1008, 'APPROVED',
     DATE '2026-11-06',
     'Requisition approved by Operations Manager',
     1, SYSDATE)

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9004, 'PURCHASE_ORDER', 5001,
     1, 1001, 'APPROVED',
     DATE '2026-11-03',
     'Purchase order approved by Procurement Manager',
     1, SYSDATE)

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9005, 'PURCHASE_ORDER', 5002,
     1, 1005, 'APPROVED',
     DATE '2026-11-05',
     'Purchase order approved by IT Manager',
     1, SYSDATE)

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9006, 'PURCHASE_ORDER', 5003,
     1, 1001, 'APPROVED',
     DATE '2026-11-06',
     'Purchase order approved by Procurement Manager',
     1, SYSDATE)

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9007, 'INVOICE', 7001,
     1, 1003, 'APPROVED',
     DATE '2026-11-18',
     'Invoice validated and approved by Finance Manager',
     1, SYSDATE)

    INTO xxapproval_history
    (approval_history_id, transaction_type, transaction_id,
     approval_level, approver_id, approval_status,
     approval_date, comments, created_by, created_date)
    VALUES
    (9008, 'INVOICE', 7002,
     1, 1003, 'APPROVED',
     DATE '2026-11-23',
     'Invoice validated and approved by Finance Manager',
     1, SYSDATE)

SELECT 1 FROM dual;
/


INSERT ALL

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10001, 'XXREQUISITIONS', 4001,
     'UPDATE',
     'PENDING',
     'APPROVED',
     1001, DATE '2026-11-02',
     'Requisition approved by Procurement Manager')

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10002, 'XXREQUISITIONS', 4002,
     'UPDATE',
     'PENDING',
     'APPROVED',
     1005, DATE '2026-11-04',
     'Requisition approved by IT Manager')

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10003, 'XXPURCHASE_ORDER', 5001,
     'UPDATE',
     'PENDING',
     'APPROVED',
     1001, DATE '2026-11-03',
     'Purchase order approved by Procurement Manager')

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10004, 'XXPURCHASE_ORDER', 5002,
     'UPDATE',
     'PENDING',
     'APPROVED',
     1005, DATE '2026-11-05',
     'Purchase order approved by IT Manager')

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10005, 'XXRECEIPTS', 6001,
     'INSERT',
     NULL,
     'RECEIVED',
     1002, DATE '2026-11-16',
     'Receipt created for fully received purchase order')

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10006, 'XXRECEIPTS', 6003,
     'INSERT',
     NULL,
     'PARTIALLY_RECEIVED',
     1008, DATE '2026-11-26',
     'Partial receipt recorded for office furniture')

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10007, 'XXINVOICES', 7001,
     'UPDATE',
     'PENDING',
     'VALIDATED',
     1003, DATE '2026-11-18',
     'Invoice validated by Finance Manager')

    INTO xxaudit_history
    (audit_history_id, table_name, record_id,
     action_type, old_value, new_value,
     changed_by, changed_date, change_reason)
    VALUES
    (10008, 'XXINVOICES', 7002,
     'UPDATE',
     'PENDING',
     'VALIDATED',
     1003, DATE '2026-11-23',
     'Invoice validated by Finance Manager')

SELECT 1 FROM dual;
/

COMMIT
/
/*DML Verification */

SELECT r.requisition_id,
       r.requisition_number,
       r.total_amount AS header_amount,
       SUM(rl.quantity * rl.estimated_price) AS line_amount
FROM xxrequisitions r
JOIN xxrequisition_lines rl
  ON rl.requesition_id = r.requisition_id
GROUP BY r.requisition_id, r.requisition_number, r.total_amount
ORDER BY r.requisition_id;
/

SELECT po.purchase_order_id,
       po.po_number,
       po.total_amount AS header_amount,
       SUM(pol.line_amount) AS line_amount
FROM xxpurchase_order po
JOIN xxpo_lines pol
  ON pol.purchase_order_id = po.purchase_order_id
WHERE pol.status <> 'CANCELLED'
GROUP BY po.purchase_order_id, po.po_number, po.total_amount
ORDER BY po.purchase_order_id;
/

SELECT pol.po_line_id,
       pol.purchase_order_id,
       pol.quantity AS ordered_quantity,
       NVL(SUM(rl.received_quantity), 0) AS received_quantity,
       NVL(SUM(rl.accepted_quantity), 0) AS accepted_quantity,
       NVL(SUM(rl.rejected_quantity), 0) AS rejected_quantity
FROM xxpo_lines pol
LEFT JOIN xxreceipt_lines rl
  ON rl.po_line_id = pol.po_line_id
WHERE pol.status <> 'CANCELLED'
GROUP BY pol.po_line_id,
         pol.purchase_order_id,
         pol.quantity
ORDER BY pol.po_line_id;
/

SELECT i.invoice_id,
       i.invoice_number,
       i.invoice_amount AS header_amount,
       SUM(il.line_amount + NVL(il.tax_amount, 0)) AS line_amount
FROM xxinvoices i
JOIN xxinvoice_lines il
  ON il.invoice_id = i.invoice_id
GROUP BY i.invoice_id,
         i.invoice_number,
         i.invoice_amount
ORDER BY i.invoice_id;
/

SELECT i.invoice_id,
       i.invoice_number,
       i.invoice_amount,
       NVL(SUM(p.payment_amount), 0) AS paid_amount,
       i.invoice_amount - NVL(SUM(p.payment_amount), 0) AS outstanding_amount
FROM xxinvoices i
LEFT JOIN payments p
  ON p.invoice_id = i.invoice_id
 AND p.status = 'COMPLETED'
GROUP BY i.invoice_id,
         i.invoice_number,
         i.invoice_amount
ORDER BY i.invoice_id;
/

SELECT rl.*
FROM xxreceipt_lines rl
LEFT JOIN xxreceipts r
  ON r.receipt_id = rl.receipt_id
WHERE r.receipt_id IS NOT NULL;
/

SELECT il.*
FROM xxinvoice_lines il
LEFT JOIN xxinvoices i
  ON i.invoice_id = il.invoice_id
WHERE i.invoice_id IS NOT NULL;
/

UPDATE xxrequisitions
SET total_amount = 64500,
    updated_by = 1,
    updated_date = SYSDATE
WHERE requisition_id = 4002;
/

UPDATE xxpurchase_order
SET total_amount = 64500,
    updated_by = 1,
    updated_date = SYSDATE
WHERE purchase_order_id = 5002;
/

COMMIT;
