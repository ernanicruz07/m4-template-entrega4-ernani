CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio TEXT
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    pages INT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    authorId INT,
    FOREIGN KEY (authorId) REFERENCES authors(id) ON DELETE SET NULL
);

CREATE TABLE contact_infos (
    id SERIAL PRIMARY KEY,
    phone VARCHAR(20),
    email VARCHAR(255),
    authorId INT,
    FOREIGN KEY (authorId) REFERENCES authors(id) ON DELETE CASCADE
);

CREATE TABLE books_categories (
    bookId INT,
    categoryId INT,
    PRIMARY KEY (bookId, categoryId),
    FOREIGN KEY (bookId) REFERENCES books(id) ON DELETE CASCADE,
    FOREIGN KEY (categoryId) REFERENCES categories(id) ON DELETE CASCADE
);