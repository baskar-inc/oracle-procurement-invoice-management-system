# Oracle Procurement & Invoice Management System

> **Portfolio status:** Database foundation completed · PL/SQL business logic pending

An Oracle SQL portfolio project modeling a procurement-to-payment business flow from requisition through supplier payment.

## Business Flow

`Requisition → Approval → Purchase Order → Receipt → Supplier Invoice → Validation → Payment → Audit History`

## Current Implementation

### Database foundation
- Oracle relational table design for procurement, suppliers, items, employees, invoices, receipts and payments
- Header/line transaction structures
- Primary-key and foreign-key relationships
- Supplier and supplier-site master data
- Approval-history and audit-history structures
- Sample master and transaction data
- Verification queries for document/header and line-level amounts

### Documentation
- Database design
- Business process
- Architecture
- SQL review and development corrections
- Project status and implementation boundary

## Repository Structure

```text
database/
├── ddl/
└── verification/

documentation/
├── architecture.md
├── business_process.md
├── database_design.md
├── project_status.md
└── sql_review.md

plsql/
└── README.md

legacy/
└── source/
```

## Implementation Boundary

This repository currently demonstrates the **Oracle database foundation** of the project. PL/SQL procedures, functions, packages, automated business-rule validation, and end-to-end transaction processing are **not yet presented as completed**.

The next implementation phase is planned around:
- Requisition validation and approval processing
- Purchase-order validation
- Receipt processing
- Invoice validation and 3-way-match rules
- Payment processing
- Exception handling and transaction control

## Technical Stack

- Oracle Database
- SQL / relational database design
- PL/SQL — next implementation phase
- Git / GitHub

## Portfolio Note

This is a learning and portfolio project intended to demonstrate Oracle SQL, relational modeling, procurement-process understanding, and progressive PL/SQL development. It is not an Oracle-certified product or a production deployment.

## Author

**Baskar R**  
Aspiring Oracle ERP / SQL / PL/SQL professional
