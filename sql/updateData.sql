-- Update the name of the book "Harry Potter"
UPDATE books SET name = 'Harry Potter e o Prisioneiro de Azkaban' WHERE name = 'Harry Potter';

-- Update both volumes of One Piece to relate to the author Eiichiro Oda
UPDATE books SET authorId = 1 WHERE name IN ('One Piece - Volume 1', 'One Piece - Volume 2');