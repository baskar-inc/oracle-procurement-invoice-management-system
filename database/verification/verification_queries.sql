-- Verification queries for the canonical schema

SELECT table_name
FROM user_tables
WHERE table_name LIKE 'XX%'
ORDER BY table_name;

SELECT constraint_name, table_name, constraint_type, status
FROM user_constraints
WHERE table_name LIKE 'XX%'
ORDER BY table_name, constraint_name;

SELECT r.requisition_id,
       r.requisition_number,
       r.total_amount AS header_amount,
       SUM(rl.quantity * rl.estimated_price) AS line_amount,
       r.total_amount - SUM(rl.quantity * rl.estimated_price) AS variance
FROM xxrequisitions r
JOIN xxrequisition_lines rl
  ON rl.requisition_id = r.requisition_id
GROUP BY r.requisition_id, r.requisition_number, r.total_amount
ORDER BY r.requisition_id;

SELECT po.purchase_order_id,
       po.po_number,
       po.total_amount AS header_amount,
       SUM(CASE WHEN pol.status <> 'CANCELLED' THEN pol.line_amount ELSE 0 END) AS line_amount,
       po.total_amount -
       SUM(CASE WHEN pol.status <> 'CANCELLED' THEN pol.line_amount ELSE 0 END) AS variance
FROM xxpurchase_order po
JOIN xxpo_lines pol
  ON pol.purchase_order_id = po.purchase_order_id
GROUP BY po.purchase_order_id, po.po_number, po.total_amount
ORDER BY po.purchase_order_id;

SELECT i.invoice_id,
       i.invoice_number,
       i.invoice_amount AS header_amount,
       SUM(il.line_amount + NVL(il.tax_amount, 0)) AS line_amount,
       i.invoice_amount - SUM(il.line_amount + NVL(il.tax_amount, 0)) AS variance
FROM xxinvoices i
JOIN xxinvoice_lines il
  ON il.invoice_id = i.invoice_id
GROUP BY i.invoice_id, i.invoice_number, i.invoice_amount
ORDER BY i.invoice_id;

SELECT i.invoice_id,
       i.invoice_number,
       i.invoice_amount,
       NVL(SUM(CASE WHEN p.status = 'COMPLETED' THEN p.payment_amount ELSE 0 END), 0) AS paid_amount,
       i.invoice_amount -
       NVL(SUM(CASE WHEN p.status = 'COMPLETED' THEN p.payment_amount ELSE 0 END), 0) AS outstanding_amount
FROM xxinvoices i
LEFT JOIN xxpayments p
  ON p.invoice_id = i.invoice_id
GROUP BY i.invoice_id, i.invoice_number, i.invoice_amount
ORDER BY i.invoice_id;
