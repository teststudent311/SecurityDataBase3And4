--Вывести список читателей и документов, которые они заказали, если такие имеются
--из представления readers.
SELECT r.full_name, d.title
FROM readers AS r
LEFT OUTER JOIN ordered_documents AS od ON r.reader_id = od.reader_id
LEFT OUTER JOIN documents AS d ON od.document_code = d.document_code;
