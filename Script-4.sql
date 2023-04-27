--Вывести список всех читателей и всех документов и сопоставлять читателей с заказанными ими документами, 
--если таковые имеются из представления readers.
SELECT r.full_name, d.title
FROM readers AS r
FULL OUTER JOIN ordered_documents AS od ON r.reader_id = od.reader_id
FULL OUTER JOIN documents AS d ON od.document_code = d.document_code;
