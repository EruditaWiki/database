-- Drop all existing tables
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

-- Table: categories
CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Table: users
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  profile_image VARCHAR(255) DEFAULT '/Erudita/app/assets/default-users.jpg',
  role VARCHAR(255) NOT NULL DEFAULT 'user'
);

-- Table: articles
CREATE TABLE articles (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  author_id INTEGER REFERENCES users(id),
  category_id INTEGER REFERENCES categories(id),
  cover_image_url VARCHAR(255) DEFAULT '/Erudita/app/assets/default-articles.jpg',
  views INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT current_timestamp,
  updated_at TIMESTAMP DEFAULT current_timestamp
);

-- Create the messages table
CREATE TABLE messages (
  id SERIAL PRIMARY KEY,
  author_id INTEGER REFERENCES users(id),
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);
