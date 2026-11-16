# Database Design

## Scope

The current database foundation models the core entities required for an Oracle Procurement & Invoice Management System.

## Core Tables

- xxdepartments — organizational departments.
- xxemployees — employees and their department assignments.
- xxsuppliers — supplier master data.
- xxsupplier_sites — supplier site and contact data.
- xxitems — item master data.
- xxrequisitions — purchase requisition headers.
- xxrequisition_lines — requisition line details.
- xxpurchase_order — purchase order headers.
- xxpo_lines — purchase order line details.
- xxreceipts — receipt headers.
- xxreceipt_lines — receipt line details.
- xxinvoices — supplier invoice headers.
- xxinvoice_lines — supplier invoice line details.
- xxpayments — supplier payment records.
- xxapproval_history — transaction approval history.
- xxaudit_history — audit/change history.

## Major Relationships

The supplied foreign-key script establishes relationships across suppliers, employees, items, requisitions, purchase orders, receipts, invoices, payments, approval history, and audit history.

Key transaction relationships include:

- Supplier → Supplier Sites
- Employee → Requisitions / Approvals / Buyers / Receivers
- Requisition → Requisition Lines
- Item → Requisition Lines / PO Lines / Invoice Lines
- Supplier → Purchase Orders / Receipts / Invoices / Payments
- Supplier Site → Purchase Orders / Invoices
- Purchase Order → PO Lines / Receipts
- PO Line → Receipt Lines / Invoice Lines
- Invoice → Invoice Lines / Payments

## Current Boundary

The supplied SQL contains the database DDL, DDL alterations, foreign-key definitions, sample DML, and verification queries.

PL/SQL procedures, functions, packages, and automated business-rule validation are not yet implemented in the supplied source.
