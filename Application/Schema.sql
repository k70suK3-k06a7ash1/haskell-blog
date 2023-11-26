-- Your database schema. Use the Schema Designer at http://localhost:8001/ to add some tables.
CREATE TABLE posts (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL
);
CREATE TABLE articles (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    author TEXT NOT NULL,
    content TEXT NOT NULL
);
