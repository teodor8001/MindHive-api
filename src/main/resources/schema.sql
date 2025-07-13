DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username varchar(36) NOT NULL UNIQUE,
    email varchar(36) NOT NULL UNIQUE,
    password varchar(100) NOT NULL,
    role ENUM('USER', 'ADMIN') NOT NULL,
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE questions (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    content varchar(100) NOT NULL,
    likes INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE comments (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    content varchar(200) NOT NULL,
    username varchar(100) NOT NULL,
    likes INT DEFAULT 0,
    question_id BIGINT,
    FOREIGN KEY(question_id) REFERENCES questions(id)
);

CREATE TABLE likes (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username varchar(36) NOT NULL UNIQUE,
    question_id char(36) NOT NULL UNIQUE,
    user_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);