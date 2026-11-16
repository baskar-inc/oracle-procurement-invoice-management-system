# Oracle Procurement & Invoice Management System

> **Current status: Database foundation complete · PL/SQL business logic pending**

An Oracle SQL/PLSQL portfolio project modeling a procurement-to-payment lifecycle from requisition through supplier payment.

## Business Flow

**Requisition → Approval → Purchase Order → Receipt → Supplier Invoice → Validation → Payment → Audit**

## Implemented Database Foundation

- Department and employee master data
- Supplier and supplier-site master data
- Item master data
- Purchase requisition and requisition lines
- Purchase order and PO lines
- Receipts and receipt lines
- Supplier invoices and invoice lines
- Supplier payments
- Approval history
- Audit history
- Foreign-key relationships
- Sample transaction data
- Verification queries

## Repository Structure

```text
database/
├── ddl/
│   ├── 01_create_tables.sql
│   └── 02_constraints.sql
└── verification/
    └── verification_queries.sql

documentation/
├── architecture.md
├── business_process.md
├── database_design.md
├── project_status.md
└── sql_review.md

plsql/
└── README.md
```

The original development SQL files are retained at the repository root as source history. The `database/` scripts are the cleaned canonical database layer for the portfolio project.

## Technical Stack

- Oracle Database
- SQL
- PL/SQL (next implementation phase)
- Oracle SQL Developer
- Git / GitHub

## Current Implementation Boundary

The database layer is implemented and documented. PL/SQL procedures, functions, packages, automated validation, 3-way matching logic, exception handling, and application/UI integration are intentionally **not yet implemented**.

## Next Phase

The next development phase will implement PL/SQL business logic for:

1. Requisition validation
2. Approval processing
3. Purchase-order validation
4. Receipt processing
5. Invoice validation and 3-way matching
6. Payment validation
7. Reusable PL/SQL packages
8. Exception handling and audit automation

## Portfolio Note

This repository is a learning and portfolio project demonstrating Oracle database design and procurement/finance process understanding. It is not presented as an Oracle-certified product or production deployment.
