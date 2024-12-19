-- Select all books
SELECT * FROM books;

-- Select all books in the "Fantasia" category
SELECT b.* FROM books b
JOIN books_categories bc ON b.id = bc.bookId
JOIN categories c ON bc.categoryId = c.id
WHERE c.name = 'Fantasia';

-- Select all books with their respective categories
SELECT b.id AS bookId, b.name AS bookName, c.id AS categoryId, c.name AS categoryName
FROM books b
JOIN books_categories bc ON b.id = bc.bookId
JOIN categories c ON bc.categoryId = c.id;

-- Select the book "Harry Potter" with author information
SELECT b.id AS bookId, b.name AS bookName, a.id AS authorId, a.name AS authorName, a.bio AS authorBio
FROM books b
JOIN authors a ON b.authorId = a.id
WHERE b.name = 'Harry Potter';