# SQL Review

## Review Result

The supplied SQL was reviewed before treating the repository as a company-facing portfolio project.

### Issues identified in the original working scripts

1. **DDL typo history**
   - `ststus` was renamed to `status`.
   - `catagory` was renamed to `item_category`.
   - `xxrequesition_lines` was renamed to `xxrequisition_lines`.
   - `suppier_id` was renamed to `supplier_id`.
   - These historical corrections remain visible in the original source files.

2. **Oracle syntax cleanup required**
   - The original FK script contains `ADD CONSTRAINTS`; Oracle syntax requires `ADD CONSTRAINT`.
   - The original table script combines `RENAME COLUMN` and `DROP COLUMN` in one ALTER TABLE statement; the canonical schema separates those operations.
   - The original FK script contains an accidental malformed DESC command.

3. **Missing canonical table definitions**
   - The original table-creation file did not contain definitions for all transaction/history tables referenced by the DML and FK scripts.
   - The canonical `database/ddl/01_create_tables.sql` now provides the complete table layer required by the current data model.

4. **Verification query correction**
   - The original payment verification query referenced `payments` instead of `xxpayments`.
   - The canonical verification query uses `xxpayments`.

5. **Naming consistency**
   - The canonical schema uses corrected names such as `requisition_date` and `short_description` instead of preserving development typos in the final database design.

6. **Sample-data reconciliation**
   - The original sample data contains header/line amount discrepancies that are useful as development-test scenarios but should not be presented as validated accounting results.
   - Verification queries explicitly calculate variances so those discrepancies are visible.

## Quality Boundary

The repository now has a clean canonical database design, but the project is **not yet production-ready software**. PL/SQL business logic, automated validations, exception handling, security, deployment scripts, and application/UI layers remain future work.
