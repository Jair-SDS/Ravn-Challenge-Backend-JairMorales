DO $$

DECLARE var_id_authors INT;
DECLARE var_id_libro INT;

BEGIN
	
INSERT INTO authors (name, date_of_birth) VALUES ('Lorelai Gilmore','1943-09-28 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '7658591458095') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Pedro',24.90);
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Juan',24.90);
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Maria',24.90);
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '5904904941993') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Jose',29.90);

INSERT INTO authors (name, date_of_birth) VALUES ('William Faulkner','1878-02-22 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '5483481091135') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Pedro',34.90);
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Juan',34.90);
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '2641756346363') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Jose',29.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Oscar Wilde','1915-05-23 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '4942259227462') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',34.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Franz Kafka','1932-06-22 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '9436444571928') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Ully',34.90);
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Fernando',34.90);
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '8228129270353') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Jhon',29.90);

INSERT INTO authors (name, date_of_birth) VALUES ('William Shakespeare','1971-02-12 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '6909913235285') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',54.90);

INSERT INTO authors (name, date_of_birth) VALUES ('James Joyce','1916-01-23 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '7390963165766') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',34.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Philip K. Dick','1960-11-28 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '9573602681829') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',64.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Gabriel García Márquez','1932-12-24 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '8177228438600') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Pedro',34.90);
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Juan',34.90);
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '4068987524915') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Jose',19.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Paulo Coelho','1959-04-28 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '1824039897627') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',54.90);

INSERT INTO authors (name, date_of_birth) VALUES ('George Orwell','1943-02-25 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '4008297893554') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',34.90);

INSERT INTO authors (name, date_of_birth) VALUES ('William Butler Yeats','1959-08-12 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '5905676439022') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',64.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Fiódor Dostoievski','1932-09-03 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '6300531007559') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Pedro',24.90);
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Juan',24.90);
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Maria',24.90);
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '4070276486118') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Jose',29.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Haruki Murakami','1946-05-14 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '0654657603802') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',54.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Charles Dickens','1944-03-28 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '7974655159433') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',34.90);

INSERT INTO authors (name, date_of_birth) VALUES ('Aldous Huxley','1946-01-24 00:00:00') RETURNING id INTO var_id_authors;
INSERT INTO books (author_id, isbn) VALUES (var_id_authors, '7655050750363') RETURNING id INTO var_id_libro;
INSERT INTO sale_items (book_id, customer_name, item_price) VALUES (var_id_libro, 'Saul',64.90);

END $$;