--Вывести список всех документов, опубликованных до 2012 года, и всех документов, которые хранятся в читальном зале 2.
SELECT document_code, title, publication_year
FROM documents
WHERE publication_year < '2012'

UNION

SELECT document_code, title, publication_year
FROM documents
WHERE reading_room_code = '2';
