DELETE FROM user_roles;
DELETE FROM meals;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (datetime, description, calories, user_id)
VALUES ('2004-10-19 10:23:54', 'Завтрак', 300, 100000),
       ('2004-10-19 14:23:54', 'Обед', 500, 100000),
       ('2004-10-20 10:23:54', 'Завтрак', 300, 100000),
       ('2004-10-19 13:23:54', 'Обед',700 ,100001),
       ('2004-10-20 14:23:54', 'Обед',650 ,100001),
       ('2004-10-20 19:23:54', 'Ужин',250 ,100001);