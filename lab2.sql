                                    ЗАДАНИЕ 6
CREATE SEQUENCE seq_measure
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_caterer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_deliver
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_employer
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_material
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_section
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_store
  START WITH 1
  INCREMENT BY 1;
CREATE SEQUENCE seq_supply
  START WITH 1
  INCREMENT BY 1
CREATE SEQUENCE seq_group
  START WITH 1
  INCREMENT BY 1

                                    ЗАДАНИЕ 7
INSERT INTO t_measure (id_measure, name)
  VALUES (seq_measure.NEXTVAL, 'ШТ');
INSERT INTO t_measure (id_measure, name)
  VALUES (seq_measure.NEXTVAL, 'М');
INSERT INTO t_measure (id_measure, name)
  VALUES (seq_measure.NEXTVAL, 'СМ');
INSERT INTO t_measure (id_measure, name)
  VALUES (seq_measure.NEXTVAL, 'КГ');
INSERT INTO t_measure (id_measure, name)
  VALUES (seq_measure.NEXTVAL, 'Т');


INSERT INTO t_caterer
  VALUES (seq_caterer.NEXTVAL, 'ООО "1"', '89682654582', '89682654582', 'ШК, 107','ШК, 107','1@bk.ru');
INSERT INTO t_caterer
  VALUES (seq_caterer.NEXTVAL, 'ООО "2"', '89682653452', '89682653452', 'ШК, 107','ШК, 107','2@bk.ru');
INSERT INTO t_caterer
  VALUES (seq_caterer.NEXTVAL, 'ООО "3"', '89682654567', '89682654567', 'Попова, 2','Попова, 2','3@bk.ru');
INSERT INTO t_caterer
  VALUES (seq_caterer.NEXTVAL, 'ООО "4"', '89522654582', '89522654582', 'ШК, 56','ШК, 56','4@bk.ru');
INSERT INTO t_caterer
  VALUES (seq_caterer.NEXTVAL, 'ООО "5"', '89689114582', '89689114582', 'Компрос, 9','Компрос, 9','5@bk.ru');


INSERT INTO t_store 
  VALUES (seq_store.NEXTVAL, '"Все для дома"');
INSERT INTO t_store 
  VALUES (seq_store.NEXTVAL, '"BEST MARKET"');
INSERT INTO t_store 
  VALUES (seq_store.NEXTVAL, '"Универсам"');
INSERT INTO t_store 
  VALUES (seq_store.NEXTVAL, '"Подвал"');
INSERT INTO t_store 
  VALUES (seq_store.NEXTVAL, '"7 шурупов"')
  

INSERT INTO t_employer (id_employer, surname, name, father_name)
  VALUES (seq_employer.NEXTVAL, 'Ефимов', 'Сергей','Вадимович');
INSERT INTO t_employer (id_employer, surname, name, father_name)
  VALUES (seq_employer.NEXTVAL, 'Корнев', 'Дмитрий','Юрьевич');
INSERT INTO t_employer (id_employer, surname, name, father_name)
  VALUES (seq_employer.NEXTVAL, 'Яров', 'Филипп','Давыдович');
INSERT INTO t_employer (id_employer, surname, name, father_name)
  VALUES (seq_employer.NEXTVAL, 'Троицев', 'Павел','Вадимович');
INSERT INTO t_employer (id_employer, surname, name, father_name)
  VALUES (seq_employer.NEXTVAL, 'Ломтев', 'Артем', 'Ильич')


INSERT INTO T_group 
  VALUES (seq_group.NEXTVAL, 'Дерево');
INSERT INTO T_group 
  VALUES (seq_group.NEXTVAL, 'Камень');
INSERT INTO T_group 
  VALUES (seq_group.NEXTVAL, 'Стекло');
INSERT INTO T_group 
  VALUES (seq_group.NEXTVAL, 'Полимеры');
INSERT INTO T_group 
  VALUES (seq_group.NEXTVAL, 'Металл')


INSERT INTO T_MATERIAL 
  VALUES (seq_material.NEXTVAL, 'Доска', '1', '1');
INSERT INTO T_MATERIAL 
  VALUES (seq_material.NEXTVAL, 'Брус', '1', '1');
INSERT INTO T_MATERIAL 
  VALUES (seq_material.NEXTVAL, 'Лист железа', '1', '5');
INSERT INTO T_MATERIAL 
  VALUES (seq_material.NEXTVAL, 'Плитка', '1', '2');
INSERT INTO T_MATERIAL 
  VALUES (seq_material.NEXTVAL, 'Плитка', '1', '4')


INSERT INTO T_INPRICE 
  VALUES (1, '05.01.2017', 12);
INSERT INTO T_INPRICE 
  VALUES (2, '06.01.2017', 13);
INSERT INTO T_INPRICE 
  VALUES (3, '07.01.2017', 11);
INSERT INTO T_INPRICE   
  VALUES (4, '08.01.2017', 14);
INSERT INTO T_INPRICE 
  VALUES (5, '09.01.2017', 11)


INSERT INTO T_SECTION 
  VALUES ('1', 'Цех1', '1');
INSERT INTO T_SECTION 
  VALUES ('2', 'Цех4', '4');
INSERT INTO T_SECTION 
  VALUES ('3', 'Цех5', '2');
INSERT INTO T_SECTION 
  VALUES ('4', 'Цех3', '5');
  INSERT INTO T_SECTION 
  VALUES ('5', 'Цех2', '3')


INSERT INTO T_SURPLUS 
  VALUES ('1', '2', '10', '12.08.2016');
INSERT INTO T_SURPLUS 
  VALUES ('2', '1', '40', '17.08.2016');
INSERT INTO T_SURPLUS 
  VALUES ('3', '3', '20', '11.03.2016');
INSERT INTO T_SURPLUS 
  VALUES ('4', '4', '20', '25.05.2016');
INSERT INTO T_SURPLUS 
  VALUES ('5', '5', '30', '20.07.2016');


INSERT INTO T_SUPPLY
  VALUES ('1', '2', '1', '4', '12.08.2016', '50');
INSERT INTO T_SUPPLY 
  VALUES ('2', '1', '4', '5', '17.08.2016', '4');
INSERT INTO T_SUPPLY 
  VALUES ('3', '3', '2', '3', '11.03.2016', '15');
INSERT INTO T_SUPPLY 
  VALUES ('4', '4', '4', '1', '25.05.2016', '53');
INSERT INTO T_SUpply 
  VALUES ('5', '5', '1', '2', '20.07.2016', '10');


INSERT INTO T_DELIVER
  VALUES (1, 2, 1, 4, '05.01.2017');
INSERT INTO T_DELIVER
  VALUES (2, 1, 3, 5, '05.01.2017');
INSERT INTO T_DELIVER
  VALUES (3, 5, 2, 1, '05.01.2017');
INSERT INTO T_DELIVER
  VALUES (4, 4, 4, 2, '05.01.2017');
INSERT INTO T_DELIVER
  VALUES (5, 3, 5, 3, '05.01.2017')

                                    ЗАДАНИЕ 8
DELETE FROM t_inprice WHERE PRICE_DATE > '31.12.2000'
                                    ЗАДАНИЕ 9
DELETE FROM T_MEASURE WHERE NAME LIKE '_'
                                    ЗАДАНИЕ 10
UPDATE T_SURPLUS SET VOLUME = 0 WHERE ID_STORE = 1
                                    ЗАДАНИЕ 11
UPDATE T_EMPLOYER SET 
  BERTHDATE = '05.10.1985',
  MARRIAGE = 'MARRIED' 
  WHERE ID_EMPLOYER = 3 
  
                                    ЗАДАНИЕ 12 
UPDATE T_CATERER SET 
  PHONE = 89045987562
  WHERE ID_CATERER = 2 
  
                                    ЗАДАНИЕ 13                                
UPDATE T_INPRICE SET 
  PRICE = PRICE * 0.75
  WHERE PRICE_DATE >= '01.01.2017'
  AND PRICE_DATE <= '31.12.2017' 