-- on pointe la base de données
use cours_sql;

-- on ajoute des données dans les tables
insert into manager(lastName, firstName, phone) values
                                                    ('Rook', 'Jean', '12345678'),
                                                    ('Karl', 'François', '87654321'),
                                                    ('Fredd', 'Michel', '10101010');

insert into library(name, address, nbPlace, idManager) values
                                                           ('Bibliothèque de Paris', 'Paris', 100, 1),
                                                           ('Bibliothèque de Lyon', 'Lyon', 50, 2),
                                                           ('Bibliothèque de Marseille', 'Marseille', 75, 3);

insert into book(title, author, idLibrary) values
                                               ('Le seigneur des anneaux', 'J.R.R. Tolkien', 1),
                                               ('Le seigneur des anneaux 2', 'J.R.R. Tolkien', 1),
                                               ('Le seigneur des anneaux 3', 'J.R.R. Tolkien', 1),
                                               ('Le seigneur des anneaux 4', 'J.R.R. Tolkien', 1);

insert into chapter(title, idBook) values
                                       ('Le seigneur des anneaux chapitre 1', 1),
                                       ('Le seigneur des anneaux 2 chapitre 1', 2),
                                       ('Le seigneur des anneaux 3 chapitre 1', 3),
                                       ('Le seigneur des anneaux 4 chapitre 1', 4);

insert into student(login, lastName, firstName, mail, birthDate) values
                                                                     ('djean', 'Dupont', 'Jean', 'dupontjean@mail.com', '1990-01-01'),
                                                                     ('mfrancois', 'François', 'Michel', 'francoismichel@mail.com', '1992-07-04'),
                                                                     ('lcarine', 'Lemarchand', 'Carine', 'lemarchandcarine@mail.com', '1991-02-04'),
                                                                     ('hmistigri', 'Hassoul', 'Mistigri', 'hassoulmistigri@mail.com', '1999-05-09');

insert into library_student(idLibrary, idStudent) values
                                                      (1, 1),
                                                      (1, 2),
                                                      (1, 3),
                                                      (1, 4);