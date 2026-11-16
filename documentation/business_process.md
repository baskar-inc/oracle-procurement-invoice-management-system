# Business Process

## Procurement-to-Payment Flow

The database model represents the following business flow:

1. Requisition
2. Requisition Lines
3. Approval
4. Purchase Order
5. PO Lines
6. Receipt
7. Receipt Lines
8. Supplier Invoice
9. Invoice Validation / Approval
10. Payment
11. Audit History

The model connects the procurement transaction records through foreign keys so the lifecycle can be represented from an employee request through supplier payment.

## Important Distinction

This document describes the business flow represented by the database model. It does not claim that the complete workflow is automated through PL/SQL.

PL/SQL procedures, functions, packages, and business validations remain pending work.
