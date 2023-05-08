--Вывести список документов, которые были заказаны читателями и хранятся в читальном зале 2.
SELECT document_code
FROM ordered_documents

INTERSECT

SELECT document_code
FROM documents
WHERE reading_room_code = '2';
