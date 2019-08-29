DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `message` MEDIUMTEXT NOT NULL,
    `username` VARCHAR(45) NOT NULL,
    `avatar` VARCHAR(255) NOT NULL,
    `fk_user_id` INT NULL,
    `date_created` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP
);




insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (1, 'Whaaa I feel like shit! :( ', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2019-09-03 00:05:03', '/images/profile_004-128.jpg', 'jim427', 2);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (2, 'Whats up with Jane?', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', '2019-05-14 10:00:22', '/images/profile_001-128.jpg', 'fgeany1', 6);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (3, 'human-resource', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', '2019-07-23 07:57:53', 'http://dummyimage.com/142x148.png/dddddd/000000', 'estoneley2', 4);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (4, 'Christ woman! Why me! Now go make me a sandwich..', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '2019-08-28 03:56:21', '/images/profile_002-128.jpg', 'shylton3', 6);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (5, 'Realigned', 'Phasellus in felis. Donec semper sapien a libero.', '2018-10-25 02:49:18', '/images/profile_004-128.jpg', 'jim427', 3);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (6, '24 hour', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '2018-10-24 11:58:45', 'http://dummyimage.com/149x137.jpg/ff4444/ffffff', 'jim427', 7);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (7, 'productivity', 'Duis ac nibh.', '2019-08-19 00:46:36', 'http://dummyimage.com/120x102.png/cc0000/ffffff', 'tkopje6', 5);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (8, 'Stand-alone', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', '2018-12-06 03:21:06', '/images/profile_002-128.jpg', 'shylton3', 6);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (9, 'My sandwich is crap.', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', '2018-08-28 09:45:08', '/images/profile_003-128.jpg', 'puku_man', 1);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (10, 'Feeling lost', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', '2019-08-18 19:09:45', 'http://dummyimage.com/143x123.png/cc0000/ffffff', 'ljosuweit9', 1);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (11, 'I did not get extra sauce', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '2019-08-30 21:20:05', 'http://dummyimage.com/111x120.bmp/cc0000/ffffff', 'rgosforda', 2);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (12, '6th generation', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '2018-10-19 07:59:53', '/images/profile_003-128.jpg', 'puku_man', 4);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (13, 'This is crap, they expect me to work for my money!!', 'Integer a nibh.', '2018-11-09 11:01:41', '/images/profile_002-128.jpg', 'shylton3', 1);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (14, 'I hate my job!', 'Pellentesque eget nunc.', '2019-04-04 07:42:33', 'http://dummyimage.com/147x121.bmp/dddddd/000000', 'jsankeyd', 4);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (15, 'knowledge user', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2019-02-18 15:47:59', '/images/profile_004-128.jpg', 'jim427', 4);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (16, 'This burger looks nothing like it does in the picture', 'Donec semper sapien a libero. Nam dui.', '2019-06-30 13:36:16', 'http://dummyimage.com/103x106.jpg/dddddd/000000', 'mmarlowef', 1);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (17, 'bifurcated', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '2019-02-28 15:49:49', '/images/profile_003-128.jpg', 'puku_man', 3);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (18, 'Poor me, somebody say something nice.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '2019-09-02 18:18:56', '/images/profile_002-128.jpg', 'shylton3', 3);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (19, '6th generation', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2019-02-17 15:35:23', '/images/profile_005-128.jpg', 'sue1991', 2);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (20, 'coherent', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', '2019-04-22 21:56:22', 'http://dummyimage.com/102x130.jpg/dddddd/000000', 'eocriganej', 3);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (21, 'FML it is too hard...', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', '2019-09-04 11:32:41', 'http://dummyimage.com/115x146.bmp/5fa2dd/ffffff', 'igallamorek', 1);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (22, 'matrices', 'Nulla nisl.', '2019-05-09 02:10:41', '/images/profile_004-128.jpg', 'jim427', 1);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (23, 'intranet', 'Integer a nibh. In quis justo.', '2019-02-28 20:59:34', '/images/profile_005-128.jpg', 'sue1991', 2);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (24, 'F&#k you', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '2019-01-15 21:55:37', '/images/profile_003-128.jpg', 'puku_man', 2);
insert into posts (id, title, message, date_created, avatar, username, fk_user_id) values (25, 'knowledge user', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2018-08-18 19:48:28', '/images/profile_004-128.jpg', 'jim427', 6);
