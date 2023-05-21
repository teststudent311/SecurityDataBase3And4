--Вывести документ, год публикации которого будет минимальным
SELECT document_code, title, publication_year 
FROM documents
WHERE publication_year = (
    SELECT MIN(publication_year
) FROM documents);


--Вывести код документ и дату заказа документа, дата заказа которого будет максимальной
SELECT document_code, order_date
FROM ordered_documents
WHERE order_date = (
    SELECT MAX(order_date) FROM ordered_documents
);
