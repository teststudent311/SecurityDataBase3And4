--Вывести документы, которые были опубликованы позже, чем средний год публикации
SELECT document_code, title, publication_year
FROM documents
WHERE publication_year > (SELECT AVG(publication_year) FROM documents);
