/* Editora ADD*/

INSERT INTO Editora VALUES(1, 'Deitel');
INSERT INTO Editora VALUES(2, 'Bookman');
INSERT INTO Editora VALUES(3, 'Novatec'); 
INSERT INTO Editora VALUES(4, 'Elsersier');
INSERT INTO Editora VALUES(5, 'Campus');

/* Autor ADD*/

INSERT INTO Autor VALUES(1, 'Paul Deitel');
INSERT INTO Autor VALUES(2, 'Elmasri Navathe');
INSERT INTO Autor VALUES(3, 'André Milani');
INSERT INTO Autor VALUES(4, 'Peler Norvig');
INSERT INTO Autor VALUES(5, 'Abraham Silberschatz');
INSERT INTO Autor VALUES(6, 'Harvey Deitel');
INSERT INTO Autor VALUES(7, 'Alexander Wald');
INSERT INTO Autor VALUES(8, 'Stuart Roussell'); 
INSERT INTO Autor VALUES(9, 'Henry F. Korth');
INSERT INTO Autor VALUES(10, 'S. Sudarshan'); 

/* Livros ADD*/

INSERT INTO Livro VALUES(1, 'Java como programar',8,28.9,1);
INSERT INTO Livro VALUES(2, 'Android 6',3,55.7,2);
INSERT INTO Livro VALUES(3, 'Sistemas de banco de dados',6,148.0,1);
INSERT INTO Livro VALUES(4, 'PostgreSQL guia do programador',1,55.8,3);
INSERT INTO Livro VALUES(5, 'Inteligência Artificial',1,98.9,5);
INSERT INTO Livro VALUES(6, 'Sistemas de Banco de Dados',6,88.9,5);

/* Livros_autor ADD */

INSERT INTO Livro_Autor VALUES(1,1);
INSERT INTO Livro_Autor VALUES(1,6);
INSERT INTO Livro_Autor VALUES(2,1);
INSERT INTO Livro_Autor VALUES(2,6);
INSERT INTO Livro_Autor VALUES(2,7);
INSERT INTO Livro_Autor VALUES(3,2);
INSERT INTO Livro_Autor VALUES(4,3);
INSERT INTO Livro_Autor VALUES(5,4);
INSERT INTO Livro_Autor VALUES(5,8);
INSERT INTO Livro_Autor VALUES(6,5);
INSERT INTO Livro_Autor VALUES(6,9);
INSERT INTO Livro_Autor VALUES(6,10);

/*Estoque*/
insert into Estoque values(1, 1, 10);
insert into Estoque values(2, 2, 2);
insert into Estoque values(3, 3, 5);
insert into Estoque values(4, 4, 10);
insert into Estoque values(5, 5, 1);
insert into Estoque values(6, 6, 10);
