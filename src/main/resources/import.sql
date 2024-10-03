INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$QdMDnkrg3oj1fkRvjzn7i.rvK7880k7kG1BnGXATHg6HiFGhoXGju');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$QdMDnkrg3oj1fkRvjzn7i.rvK7880k7kG1BnGXATHg6HiFGhoXGju');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$QdMDnkrg3oj1fkRvjzn7i.rvK7880k7kG1BnGXATHg6HiFGhoXGju');

/* Padrão do spring security */
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9IUMiBUfucWPl5p1p6eleNS0j4rsFPh8yWw&s', 'https://upload.wikimedia.org/wikipedia/commons/8/8a/HTML5.png');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp CSS3', 'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg', 'https://cdn.icon-icons.com/icons2/2389/PNG/512/css_shiled_logo_icon_145359.png');

