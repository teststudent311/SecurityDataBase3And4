--Вывести список документов, которые еще не были заказаны ни одним читателем.
SELECT document_code
FROM documents
EXCEPT
SELECT document_code
FROM ordered_documents;
