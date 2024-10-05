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

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', 2);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML5', 'Trilha para aprendizado de HTML5', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9IUMiBUfucWPl5p1p6eleNS0j4rsFPh8yWw&s', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum HTML5', 'Tirar dúvidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9IUMiBUfucWPl5p1p6eleNS0j4rsFPh8yWw&s', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9IUMiBUfucWPl5p1p6eleNS0j4rsFPh8yWw&s', 0, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha CSS3', 'Trilha para aprendizado de CSS3', 4, 'https://upload.wikimedia.org/wikipedia/commons/d/d5/CSS3_logo_and_wordmark.svg', 1, 2);

INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Introdução ao HTML', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9IUMiBUfucWPl5p1p6eleNS0j4rsFPh8yWw&s', 1, null);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Tags do HTML', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9IUMiBUfucWPl5p1p6eleNS0j4rsFPh8yWw&s', 1, 1);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Semântica do HTML', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9IUMiBUfucWPl5p1p6eleNS0j4rsFPh8yWw&s', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (1, 1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, avaliable, only_Update) VALUES (2, 1,TIMESTAMP WITH TIME ZONE '2020-11-20T13:10:00Z', null, true, false);


INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio', 'https://www.youtube.com/watch?v=rMuHty2zn_4');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '', 'https://www.youtube.com/watch?v=rMuHty2zn_4');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do Capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '', 'https://www.youtube.com/watch?v=rMuHty2zn_4');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T03:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
