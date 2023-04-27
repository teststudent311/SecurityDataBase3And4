--Вывести список читателей и документов, которые они заказали, если такие читатели имеются
--из представления documents.
SELECT r.full_name, d.title
FROM documents AS d
LEFT OUTER JOIN ordered_documents AS od ON d.document_code = od.document_code
LEFT OUTER JOIN readers AS r ON od.reader_id = r.reader_id;
