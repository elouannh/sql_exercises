-- on pointe la base de données
use cours_sql;

-- on change le nombre de places pour les trois premières libraries
update library set nbPlace = 400 where idLibrary = 1;
update library set nbPlace = 500 where idLibrary = 2;
update library set nbPlace = 600 where idLibrary = 3;

-- on met le login et la date de naissance de l'étudiant 2 à jour
update student set login = 'amineti', birthDate = '1999-01-01' where idStudent = 2;

-- on delete le chapitre 60
delete from chapter where idChapter = 60;