CREATE TABLE IF NOT EXISTS ${schema~}.Paragraphs
(
    id serial PRIMARY KEY,
    book_id serial references ${schema~}.Texts(id),
    paragraph text,
    deleted BOOLEAN NOT NULL DEFAULT false,
    created timestamp with time zone not null default current_timestamp
);