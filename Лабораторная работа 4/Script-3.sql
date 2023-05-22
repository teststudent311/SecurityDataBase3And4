--Вывести адрес каждого читального зала и количество документов, которые хранятся в нём
SELECT reading_rooms.room_address, (
    SELECT COUNT(*) FROM documents WHERE documents.reading_room_code = reading_rooms.reading_room_code
) AS document_count
FROM reading_rooms;
