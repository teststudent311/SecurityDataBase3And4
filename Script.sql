--Вывести список читателей и документов, которые они заказали
--из представления readers.
SELECT r.full_name, d.title
FROM readers AS r
INNER JOIN ordered_documents AS od ON r.reader_id = od.reader_id
INNER JOIN documents AS d ON od.document_code = d.document_code;
