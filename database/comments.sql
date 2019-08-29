DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
    `id` INTEGER PRIMARY KEY AUTOINCREMENT,
    `username` VARCHAR(45) NOT NULL,
    `message` MEDIUMTEXT NOT NULL,
    `date_created` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    `fk_post_id` INTEGER NOT NULL,
    FOREIGN KEY (fk_post_id) REFERENCES posts(id)
  );


insert into comments (id, username, message, date_created, fk_post_id) values (1, 'gcarrick0', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2019-03-23 09:33:41', 21);
insert into comments (id, username, message, date_created, fk_post_id) values (2, 'wilymanov1', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2019-07-30 22:43:18', 17);
insert into comments (id, username, message, date_created, fk_post_id) values (3, 'mdoggerell2', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2018-12-31 19:08:30', 1);
insert into comments (id, username, message, date_created, fk_post_id) values (4, 'aceci3', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2018-10-11 09:59:22', 12);
insert into comments (id, username, message, date_created, fk_post_id) values (5, 'ccappleman4', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2018-10-08 03:34:29', 10);
insert into comments (id, username, message, date_created, fk_post_id) values (6, 'awaszczykowski5', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2019-02-28 13:53:58', 21);
insert into comments (id, username, message, date_created, fk_post_id) values (7, 'gkybird6', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2018-09-20 00:05:04', 4);
insert into comments (id, username, message, date_created, fk_post_id) values (8, 'vgianasi7', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2019-04-03 23:46:34', 5);
insert into comments (id, username, message, date_created, fk_post_id) values (9, 'dholmyard8', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2018-12-30 22:26:07', 19);
insert into comments (id, username, message, date_created, fk_post_id) values (10, 'mpresdee9', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2019-03-18 07:05:02', 19);
insert into comments (id, username, message, date_created, fk_post_id) values (11, 'hcaveneya', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2018-11-24 15:08:53', 10);
insert into comments (id, username, message, date_created, fk_post_id) values (12, 'nmckevinb', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2018-09-27 06:22:36', 13);
insert into comments (id, username, message, date_created, fk_post_id) values (13, 'sfoskinc', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2019-02-13 20:48:23', 10);
insert into comments (id, username, message, date_created, fk_post_id) values (14, 'wspunerd', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2019-07-07 23:38:20', 16);
insert into comments (id, username, message, date_created, fk_post_id) values (15, 'lkidstone', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2019-01-26 00:43:00', 6);
insert into comments (id, username, message, date_created, fk_post_id) values (16, 'gheballf', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2019-08-02 23:37:00', 3);
insert into comments (id, username, message, date_created, fk_post_id) values (17, 'csimeolig', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2018-09-27 12:02:57', 9);
insert into comments (id, username, message, date_created, fk_post_id) values (18, 'bbelmonth', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2018-09-25 01:25:26', 20);
insert into comments (id, username, message, date_created, fk_post_id) values (19, 'cyakunikovi', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2018-11-13 18:40:55', 20);
insert into comments (id, username, message, date_created, fk_post_id) values (20, 'dplewsj', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2018-10-23 17:29:10', 15);
insert into comments (id, username, message, date_created, fk_post_id) values (21, 'agoldmank', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2019-03-24 13:37:09', 4);
insert into comments (id, username, message, date_created, fk_post_id) values (22, 'astonel', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.

Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2019-03-05 02:51:10', 22);
insert into comments (id, username, message, date_created, fk_post_id) values (23, 'fmurnamem', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.', '2019-04-07 01:37:32', 20);
insert into comments (id, username, message, date_created, fk_post_id) values (24, 'jchaineyn', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2019-01-19 07:07:26', 15);
insert into comments (id, username, message, date_created, fk_post_id) values (25, 'bthandio', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2019-06-12 12:27:54', 15);
insert into comments (id, username, message, date_created, fk_post_id) values (26, 'lblaxelandp', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2019-06-01 05:48:10', 25);
insert into comments (id, username, message, date_created, fk_post_id) values (27, 'nternq', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2019-06-08 00:06:42', 9);
insert into comments (id, username, message, date_created, fk_post_id) values (28, 'caustr', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2019-07-21 04:12:52', 25);
insert into comments (id, username, message, date_created, fk_post_id) values (29, 'tgrinyakins', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '2018-08-27 19:50:24', 23);
insert into comments (id, username, message, date_created, fk_post_id) values (30, 'bkayt', 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2018-08-26 22:36:06', 14);
insert into comments (id, username, message, date_created, fk_post_id) values (31, 'jgiggieu', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2018-12-27 15:59:48', 23);
insert into comments (id, username, message, date_created, fk_post_id) values (32, 'nolochanv', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2019-04-20 22:02:05', 6);
insert into comments (id, username, message, date_created, fk_post_id) values (33, 'edumphyw', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.

Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2018-10-06 14:53:25', 17);
insert into comments (id, username, message, date_created, fk_post_id) values (34, 'lsimex', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2019-03-15 07:54:03', 9);
insert into comments (id, username, message, date_created, fk_post_id) values (35, 'cdongally', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2019-05-06 03:12:03', 17);
insert into comments (id, username, message, date_created, fk_post_id) values (36, 'agisckenz', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2018-08-19 17:41:41', 4);
insert into comments (id, username, message, date_created, fk_post_id) values (37, 'onucator10', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2018-10-11 15:53:31', 11);
insert into comments (id, username, message, date_created, fk_post_id) values (38, 'eformby11', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2019-05-05 09:52:21', 5);
insert into comments (id, username, message, date_created, fk_post_id) values (39, 'mpadfield12', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2019-01-07 03:40:58', 25);
insert into comments (id, username, message, date_created, fk_post_id) values (40, 'chalse13', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2019-04-08 21:01:31', 14);
insert into comments (id, username, message, date_created, fk_post_id) values (41, 'skrink14', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2019-05-08 18:17:59', 5);
insert into comments (id, username, message, date_created, fk_post_id) values (42, 'fgiddings15', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2019-05-02 07:11:15', 24);
insert into comments (id, username, message, date_created, fk_post_id) values (43, 'irutledge16', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2019-07-06 15:08:37', 15);
insert into comments (id, username, message, date_created, fk_post_id) values (44, 'mbyfford17', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2019-01-21 17:05:27', 19);
insert into comments (id, username, message, date_created, fk_post_id) values (45, 'anaismith18', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2018-12-22 07:25:37', 8);
insert into comments (id, username, message, date_created, fk_post_id) values (46, 'rchardin19', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2018-09-27 20:44:37', 18);
insert into comments (id, username, message, date_created, fk_post_id) values (47, 'ahuckstepp1a', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', '2018-12-20 06:36:25', 6);
insert into comments (id, username, message, date_created, fk_post_id) values (48, 'cthireau1b', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2019-03-01 14:04:41', 14);
insert into comments (id, username, message, date_created, fk_post_id) values (49, 'gartingstall1c', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2019-04-21 11:32:56', 23);
insert into comments (id, username, message, date_created, fk_post_id) values (50, 'kbaal1d', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2018-12-29 17:39:11', 19);
insert into comments (id, username, message, date_created, fk_post_id) values (51, 'cainslie1e', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2018-12-20 15:39:20', 8);
insert into comments (id, username, message, date_created, fk_post_id) values (52, 'vbrownlea1f', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2019-04-19 20:22:16', 10);
insert into comments (id, username, message, date_created, fk_post_id) values (53, 'bcushe1g', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '2019-02-22 18:39:35', 19);
insert into comments (id, username, message, date_created, fk_post_id) values (54, 'bbrosel1h', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2019-05-26 14:59:21', 2);
insert into comments (id, username, message, date_created, fk_post_id) values (55, 'femblow1i', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2019-02-26 13:45:12', 5);
insert into comments (id, username, message, date_created, fk_post_id) values (56, 'dmacvicar1j', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2019-03-29 09:14:04', 23);
insert into comments (id, username, message, date_created, fk_post_id) values (57, 'amcgroarty1k', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2018-09-09 11:30:02', 17);
insert into comments (id, username, message, date_created, fk_post_id) values (58, 'kcrangle1l', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '2019-01-14 03:17:50', 15);
insert into comments (id, username, message, date_created, fk_post_id) values (59, 'fizakoff1m', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2019-04-09 07:06:37', 22);
insert into comments (id, username, message, date_created, fk_post_id) values (60, 'lshilling1n', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2019-06-07 15:05:05', 8);
insert into comments (id, username, message, date_created, fk_post_id) values (61, 'tthrush1o', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2019-07-13 10:03:19', 14);
insert into comments (id, username, message, date_created, fk_post_id) values (62, 'ethieme1p', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.

Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2018-10-14 14:07:29', 2);
insert into comments (id, username, message, date_created, fk_post_id) values (63, 'ppaddy1q', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2019-03-07 17:46:32', 17);
insert into comments (id, username, message, date_created, fk_post_id) values (64, 'cmence1r', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2019-06-15 03:25:23', 3);
insert into comments (id, username, message, date_created, fk_post_id) values (65, 'scolleran1s', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', '2019-05-02 22:47:26', 11);
insert into comments (id, username, message, date_created, fk_post_id) values (66, 'lroutley1t', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2018-09-28 06:23:14', 24);
insert into comments (id, username, message, date_created, fk_post_id) values (67, 'jdimberline1u', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.

Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2019-06-04 21:13:53', 5);
insert into comments (id, username, message, date_created, fk_post_id) values (68, 'kdowd1v', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2019-01-12 13:32:51', 11);
insert into comments (id, username, message, date_created, fk_post_id) values (69, 'cstringer1w', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2019-05-03 06:34:46', 16);
insert into comments (id, username, message, date_created, fk_post_id) values (70, 'ktreagust1x', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2018-12-28 08:43:57', 21);
insert into comments (id, username, message, date_created, fk_post_id) values (71, 'jmarcham1y', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2018-12-20 13:13:51', 18);
insert into comments (id, username, message, date_created, fk_post_id) values (72, 'dhannan1z', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2019-05-10 15:15:34', 23);
insert into comments (id, username, message, date_created, fk_post_id) values (73, 'sellicombe20', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2019-04-16 06:57:32', 15);
insert into comments (id, username, message, date_created, fk_post_id) values (74, 'cjaquet21', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.

Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2018-12-03 21:45:25', 25);
insert into comments (id, username, message, date_created, fk_post_id) values (75, 'fdudhill22', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2019-01-16 13:45:56', 13);
insert into comments (id, username, message, date_created, fk_post_id) values (76, 'dglencros23', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '2018-12-07 08:25:54', 14);
insert into comments (id, username, message, date_created, fk_post_id) values (77, 'gbrooks24', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2018-12-26 18:15:14', 21);
insert into comments (id, username, message, date_created, fk_post_id) values (78, 'eperrygo25', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2019-05-23 04:39:46', 25);
insert into comments (id, username, message, date_created, fk_post_id) values (79, 'wlukacs26', 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2019-05-29 17:11:17', 11);
insert into comments (id, username, message, date_created, fk_post_id) values (80, 'sambrosi27', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2018-09-15 04:36:09', 16);
insert into comments (id, username, message, date_created, fk_post_id) values (81, 'pjonathon28', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2018-09-03 16:35:26', 24);
insert into comments (id, username, message, date_created, fk_post_id) values (82, 'tphaup29', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2018-11-17 22:01:31', 17);
insert into comments (id, username, message, date_created, fk_post_id) values (83, 'aberresford2a', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2019-08-06 15:29:44', 18);
insert into comments (id, username, message, date_created, fk_post_id) values (84, 'vmee2b', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2018-08-19 00:07:00', 18);
insert into comments (id, username, message, date_created, fk_post_id) values (85, 'ksuter2c', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '2018-10-31 21:32:55', 4);
insert into comments (id, username, message, date_created, fk_post_id) values (86, 'lpiwell2d', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2019-04-12 22:29:38', 14);
insert into comments (id, username, message, date_created, fk_post_id) values (87, 'fsteward2e', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2018-10-25 06:51:03', 7);
insert into comments (id, username, message, date_created, fk_post_id) values (88, 'rmogenot2f', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2019-01-04 04:09:52', 17);
insert into comments (id, username, message, date_created, fk_post_id) values (89, 'mdacosta2g', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2018-09-16 07:08:44', 25);
insert into comments (id, username, message, date_created, fk_post_id) values (90, 'mjoskowicz2h', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2018-11-05 15:19:46', 22);
insert into comments (id, username, message, date_created, fk_post_id) values (91, 'bledgeway2i', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2019-03-08 18:50:29', 19);
insert into comments (id, username, message, date_created, fk_post_id) values (92, 'frollins2j', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2019-01-06 11:03:12', 2);
insert into comments (id, username, message, date_created, fk_post_id) values (93, 'kmahy2k', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.

In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2019-01-17 06:17:58', 6);
insert into comments (id, username, message, date_created, fk_post_id) values (94, 'bhollindale2l', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2019-07-04 06:36:32', 16);
insert into comments (id, username, message, date_created, fk_post_id) values (95, 'sbarthelmes2m', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2019-03-19 03:01:46', 21);
insert into comments (id, username, message, date_created, fk_post_id) values (96, 'kstather2n', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', '2019-01-06 20:20:25', 10);
insert into comments (id, username, message, date_created, fk_post_id) values (97, 'fpurveys2o', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.

Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2019-02-03 04:45:01', 24);
insert into comments (id, username, message, date_created, fk_post_id) values (98, 'apopelay2p', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2019-03-27 23:19:59', 18);
insert into comments (id, username, message, date_created, fk_post_id) values (99, 'kbrouwer2q', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2019-04-16 04:55:16', 7);
insert into comments (id, username, message, date_created, fk_post_id) values (100, 'dcuddihy2r', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2019-02-06 10:21:51', 19);
