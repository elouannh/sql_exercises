-- on pointe la base de données
use cours_sql;

-- on sélectionne toutes les données de la table library
select * from library;

-- on sélection le login et le mail de student
select login, mail from student;

-- on sélectionne les titres différents de la table chapter
select distinct title from chapter;

-- on met la quatrième date d'anniversaire sur null
update student set birthDate = null where idStudent = 4;

-- on sélectionne les élèves sans date de naissance, et ensuite ceux avec une date de naissance
select * from student where birthDate is null;
select * from student where birthDate is not null;

-- on sélectionne les livres dont le titre commence par 'le'
select * from book where title like 'le%';