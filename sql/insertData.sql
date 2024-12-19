-- Insert authors
INSERT INTO authors (name, bio) VALUES
('Eiichiro Oda', 'Eiichiro Oda em um mangaká conhecido pela criação do mangá One Piece.') RETURNING *;

INSERT INTO authors (name, bio) VALUES
('J. K. Rowling', 'J. K. Rowling é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.') RETURNING *;

INSERT INTO authors (name, bio) VALUES
('Osvaldo Silva', 'Autor e compositor brasileiro.') RETURNING *;

-- Insert books
INSERT INTO books (name, pages, createdAt, updatedAt, authorId) VALUES
('Harry Potter', 325, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2) RETURNING *;

INSERT INTO books (name, pages, createdAt, updatedAt) VALUES
('Jogos Vorazes', 276, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING *;

INSERT INTO books (name, pages, createdAt, updatedAt) VALUES
('One Piece - Volume 1', 120, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING *;

INSERT INTO books (name, pages, createdAt, updatedAt) VALUES
('One Piece - Volume 2', 137, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING *;

-- Insert categories
INSERT INTO categories (name, createdAt, updatedAt) VALUES
('Mangá', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING *;

INSERT INTO categories (name, createdAt, updatedAt) VALUES
('Aventura', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING *;

INSERT INTO categories (name, createdAt, updatedAt) VALUES
('Fantasia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING *;

-- Insert books_categories relationships
INSERT INTO books_categories (bookId, categoryId) VALUES
(1, 2), (2, 2), (3, 2), (4, 2), -- Aventura
(1, 3), (3, 3), (4, 3), -- Fantasia
(3, 1), (4, 1); -- Mangá

-- Insert contact_infos
INSERT INTO contact_infos (phone, email, authorId) VALUES
('(44) 99123-4567', 'osvaldo@osvaldocompany.com', 3) RETURNING *;