ALTER TABLE xxsupplier_sites
ADD CONSTRAINT fk_supplier_sites_suppliers
FOREIGN KEY (supplier_id)
REFERENCES xxsuppliers (supplier_id)
/

ALTER TABLE xxrequisitions
ADD CONSTRAINTS fk_requisitions_employees
FOREIGN KEY (requested_by)
REFERENCES xxemployees (employee_id)
/

ALTER TABLE xxrequisitions       --Constraint NAme Rename
RENAME CONSTRAINT fk_requisitions_employees TO fk_req_emp_requested_by
/

ALTER TABLE xxrequisitions
ADD CONSTRAINT fk_req_emp_approved_by
FOREIGN KEY (approved_by)
REFERENCES xxemployees (employee_id)
/

ALTER TABLE xxrequisition_lines
ADD CONSTRAINT fk_req_line_req_req_id
FOREIGN KEY (requisition_id)
REFERENCES xxrequisitions(requisition_id)
/

ALTER TABLE xxrequisition_lines
ADD CONSTRAINT fk_req_lines_items_item_id
FOREIGN KEY (item_id)
REFERENCES xxitems(item_id)
/

ALTER TABLE xxpurchase_order
ADD (
      CONSTRAINT fk_po_sup_sup_id
            FOREIGN KEY (supplier_id)
            REFERENCES xxsuppliers(supplier_id),
      CONSTRAINT fk_po_supsite_sup_site_id
            FOREIGN KEY (supplier_site_id)
            REFERENCES xxsupplier_sites(supplier_site_id),
      CONSTRAINT fk_po_emp_buyer_id
            FOREIGN KEY (buyer_id)
            REFERENCES xxemployees(employee_id),
      CONSTRAINT fk_po_emp_approved_by
            FOREIGN KEY (approved_by)
            REFERENCES xxemployees(employee_id))
/

ALTER TABLE xxpo_lines
ADD (
     CONSTRAINT fk_pol_po_po_id
          FOREIGN KEY (purchase_order_id)
          REFERENCES xxpurchase_order(purchase_order_id),
     CONSTRAINT fk_pol_items_iten_id
          FOREIGN KEY (item_id)
          REFERENCES xxitems(item_id))
/

ALTER TABLE xxreceipts
ADD (
     CONSTRAINT fk_receipts_po_id_po
          FOREIGN KEY (purchase_order_id)
          REFERENCES xxpurchase_order (purchase_order_id),
     CONSTRAINT fk_receipts_supp_supp_id
          FOREIGN KEY (supplier_id)
          REFERENCES xxsuppliers(supplier_id),
     CONSTRAINT fk_receipts_emp_received_by
          FOREIGN KEY (received_by)
          REFERENCES xxemployees(employee_id))
/

ALTER TABLE xxreceipt_lines
ADD(
    CONSTRAINT fk_rec_lin_receipts_receipt_id
          FOREIGN KEY (receipt_id)
          REFERENCES xxreceipts(receipt_id),
    CONSTRAINT fk_rec_lin_po_lines_po_line_id
          FOREIGN KEY (po_line_id)
          REFERENCES xxpo_lines(po_line_id))
/

ALTER TABLE xxinvoices
ADD (
      CONSTRAINT fk_inv_sup_supplier_id
          FOREIGN KEY (supplier_id)
          REFERENCES xxsuppliers(supplier_id),
      CONSTRAINT fk_inv_sup_sites_sup_site_id
          FOREIGN KEY (supplier_site_id)
          REFERENCES xxsupplier_sites(supplier_site_id))
/

ALTER TABLE xxinvoice_lines
ADD (
     CONSTRAINT fk_inv_line_inv_inv_id
         FOREIGN KEY (invoice_id)
         REFERENCES xxinvoices(invoice_id),
     CONSTRAINT fk_inv_line_po_line_po_line_id
         FOREIGN KEY (po_line_id)
         REFERENCES xxpo_lines(po_line_id),
     CONSTRAINT fk_inv_line_items_item_id
         FOREIGN KEY (item_id)
         REFERENCES xxitems(item_id))
/

ALTER TABLE xxpayments
ADD (
     CONSTRAINT fk_payments_invoices_inv_id
         FOREIGN KEY (invoice_id)
         REFERENCES xxinvoices(invoice_id),
     CONSTRAINT fk_payments_suppliers_sup_id
         FOREIGN KEY (supplier_id)
         REFERENCES xxsuppliers(supplier_id))
/

ALTER TABLE xxapproval_history
ADD CONSTRAINT fk_approv_hist_emp_approver_id
        FOREIGN KEY (approver_id)
        REFERENCES xxemployees(employee_id)
/

ALTER TABLE xxaudit_history
ADD CONSTRAINT fk_audit_hist_changed_by
        FOREIGN KEY (changed_by)
        REFERENCES xxemployees (employee_id)
/

commit


DESC xxpurchase_orderSUPPIER_IDSUPPIER_IDSUPPIER_ID
/


ALTER TABLE xxpurchase_order
RENAME COLUMN SUPPIER_ID TO supplier_id
/


SELECT * FROM user_constraints
WHERE table_name LIKE 'XX%' 
ORDER BY last_change DESC