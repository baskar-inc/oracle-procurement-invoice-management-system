# Architecture

## Current Architecture

Business Process
      |
      v
Procurement Transaction Layer
      |
      +--> Requisition
      |       |
      |       v
      |   Requisition Lines
      |       |
      |       v
      |   Purchase Order
      |       |
      |       v
      |   PO Lines
      |       |
      |       v
      |   Receipts
      |       |
      |       v
      |   Receipt Lines
      |       |
      |       v
      |   Supplier Invoices
      |       |
      |       v
      |   Invoice Lines
      |       |
      |       v
      |   Payments
      |
      +--> Approval History
      |
      +--> Audit History

Master Data
  |-- Departments -> Employees
  |-- Suppliers -> Supplier Sites
  `-- Items

## Implementation Boundary

The repository currently represents the database layer and sample transaction data. PL/SQL business logic is the next implementation layer and is intentionally not marked as complete.
