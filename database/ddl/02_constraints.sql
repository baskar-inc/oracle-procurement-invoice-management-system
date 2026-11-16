-- Oracle Procurement & Invoice Management System
-- Canonical foreign-key definitions

ALTER TABLE xxemployees
    ADD CONSTRAINT fk_emp_department
    FOREIGN KEY (department_id)
    REFERENCES xxdepartments(department_id);

ALTER TABLE xxsupplier_sites
    ADD CONSTRAINT fk_supplier_site_supplier
    FOREIGN KEY (supplier_id)
    REFERENCES xxsuppliers(supplier_id);

ALTER TABLE xxrequisitions
    ADD CONSTRAINT fk_req_requested_by
    FOREIGN KEY (requested_by)
    REFERENCES xxemployees(employee_id);

ALTER TABLE xxrequisitions
    ADD CONSTRAINT fk_req_approved_by
    FOREIGN KEY (approved_by)
    REFERENCES xxemployees(employee_id);

ALTER TABLE xxrequisition_lines
    ADD CONSTRAINT fk_req_line_req
    FOREIGN KEY (requisition_id)
    REFERENCES xxrequisitions(requisition_id);

ALTER TABLE xxrequisition_lines
    ADD CONSTRAINT fk_req_line_item
    FOREIGN KEY (item_id)
    REFERENCES xxitems(item_id);

ALTER TABLE xxpurchase_order
    ADD CONSTRAINT fk_po_supplier
    FOREIGN KEY (supplier_id)
    REFERENCES xxsuppliers(supplier_id);

ALTER TABLE xxpurchase_order
    ADD CONSTRAINT fk_po_supplier_site
    FOREIGN KEY (supplier_site_id)
    REFERENCES xxsupplier_sites(supplier_site_id);

ALTER TABLE xxpurchase_order
    ADD CONSTRAINT fk_po_buyer
    FOREIGN KEY (buyer_id)
    REFERENCES xxemployees(employee_id);

ALTER TABLE xxpurchase_order
    ADD CONSTRAINT fk_po_approved_by
    FOREIGN KEY (approved_by)
    REFERENCES xxemployees(employee_id);

ALTER TABLE xxpo_lines
    ADD CONSTRAINT fk_po_line_po
    FOREIGN KEY (purchase_order_id)
    REFERENCES xxpurchase_order(purchase_order_id);

ALTER TABLE xxpo_lines
    ADD CONSTRAINT fk_po_line_item
    FOREIGN KEY (item_id)
    REFERENCES xxitems(item_id);

ALTER TABLE xxreceipts
    ADD CONSTRAINT fk_receipt_po
    FOREIGN KEY (purchase_order_id)
    REFERENCES xxpurchase_order(purchase_order_id);

ALTER TABLE xxreceipts
    ADD CONSTRAINT fk_receipt_supplier
    FOREIGN KEY (supplier_id)
    REFERENCES xxsuppliers(supplier_id);

ALTER TABLE xxreceipts
    ADD CONSTRAINT fk_receipt_received_by
    FOREIGN KEY (received_by)
    REFERENCES xxemployees(employee_id);

ALTER TABLE xxreceipt_lines
    ADD CONSTRAINT fk_receipt_line_receipt
    FOREIGN KEY (receipt_id)
    REFERENCES xxreceipts(receipt_id);

ALTER TABLE xxreceipt_lines
    ADD CONSTRAINT fk_receipt_line_po_line
    FOREIGN KEY (po_line_id)
    REFERENCES xxpo_lines(po_line_id);

ALTER TABLE xxinvoices
    ADD CONSTRAINT fk_invoice_supplier
    FOREIGN KEY (supplier_id)
    REFERENCES xxsuppliers(supplier_id);

ALTER TABLE xxinvoices
    ADD CONSTRAINT fk_invoice_supplier_site
    FOREIGN KEY (supplier_site_id)
    REFERENCES xxsupplier_sites(supplier_site_id);

ALTER TABLE xxinvoice_lines
    ADD CONSTRAINT fk_invoice_line_invoice
    FOREIGN KEY (invoice_id)
    REFERENCES xxinvoices(invoice_id);

ALTER TABLE xxinvoice_lines
    ADD CONSTRAINT fk_invoice_line_po_line
    FOREIGN KEY (po_line_id)
    REFERENCES xxpo_lines(po_line_id);

ALTER TABLE xxinvoice_lines
    ADD CONSTRAINT fk_invoice_line_item
    FOREIGN KEY (item_id)
    REFERENCES xxitems(item_id);

ALTER TABLE xxpayments
    ADD CONSTRAINT fk_payment_invoice
    FOREIGN KEY (invoice_id)
    REFERENCES xxinvoices(invoice_id);

ALTER TABLE xxpayments
    ADD CONSTRAINT fk_payment_supplier
    FOREIGN KEY (supplier_id)
    REFERENCES xxsuppliers(supplier_id);

ALTER TABLE xxapproval_history
    ADD CONSTRAINT fk_approval_approver
    FOREIGN KEY (approver_id)
    REFERENCES xxemployees(employee_id);

ALTER TABLE xxaudit_history
    ADD CONSTRAINT fk_audit_changed_by
    FOREIGN KEY (changed_by)
    REFERENCES xxemployees(employee_id);

COMMIT;
