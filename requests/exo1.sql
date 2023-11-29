-- on pointe la base de données
use cours_sql;

-- select tous les livres qui contiennent seigneur avec like
select * from library where name like '%seigneur%';

-- select tous les students dont le mail se termine par fr avec like
select * from student where mail like '%fr';

-- sélectionne tous les student qui ont les id 1 et 4 avec in
select * from student where idStudent in (1,4);

-- sélectionne tous les student qui n'ont les pas les id 1 et 4 avec in
select * from student where idStudent not in (1,4);

-- sélectionne tous les étudiants qui ont une date de naissance comprise entre 2002-01-01 et 2002-12-31
-- avec between
-- avec >= et <=
select * from student where birthDate between '2002-01-01' and '2002-12-31';
select * from student where birthDate >= '2002-01-01' and birthDate <= '2002-12-31';

-- limite le nombre d'enregistrement de la table student à 2
select * from student limit 2;

-- limite le nombre d'enregistrement de la table student entre 2 et 3
select * from student limit 2 offset 1;

-- trie les book suivant la colonne titre par ordre croissant (par défaut)
select * from book order by title;

-- trie les  book suivant la colonne titre par ordre décroissant
select * from book order by title desc;

-- trie sur 2 colonnes lastName, firstName de la table student
select * from student order by lastName, firstName;

-- compte le nombre d'enregistrement dans la table student
-- affiche un nom de colonne nbStudent en utilisant as

-- compte le nombre de chapitre par livre

-- compte le nombre de chapitre par livre et ne récupère que ceux qui on plus de 8 chapitres

-- select les student de facon aléatoire en utilisant la fonction rand()

-- affiche que 2 nombres après la virgule en utilisant la fonction truncate

-- arrondi à l'entier supérieur : affiche 6 en utilisant la fonction ceil()

-- arrondi à l'entier inférieur : affiche 5 en utilisant la fonction floor()

-- select la date + heure du jour en utilisant la fonction now()

-- select la date du jour en utilisant la fonction curdate()

-- manipulation de chaine de caractère en utilisant la fonction concat()
-- concatène le prénom et le nom d'un student

-- sélectionne les students qui ont au moins 8 caractères dans leur prénom
-- en utilisant la fonction length

-- affiche le nombre de jours entre maintenant et la date de naissance
-- en utilisant datediff()

-- affiche le jour de naissance (lundi, mardi, ...)
-- en utilisant dayofweek()

-- select que les student qui sont nés en 2002
-- en utilisant year()

-- select les student qui sont dans des library qui ont un nombre de place > 400
-- avec une sous requête

-- select les student qui sont dans des bibliothèques dont le nom du manager contient lebreton
-- avec une sous requête

-- select les student qui sont dans une bibliothèque
-- avec inner join

-- Exo 1 : Écrire la jointure qui permet de récupérer le nom des
-- librairies qui ont pour directeur un directeur dont le nom de
-- famille est xxxxx.

-- Exo 2 : Écrire la jointure qui permet de récupérer le titre des chapitres
-- d'un livre dont le titre comporte la chaîne xxxxx.

-- Exo 3 : Écrire la jointure qui permet de récupérer les titres des livres
-- d'une bibliothèque dont le nom contient xxxxx.

-- Exo 4 : tester le left join sur les exos précédent

-- 2.1

-- 2.2

-- 3.2

-- Exo 5 :  Écrire la jointure qui permet de récupérer
-- les login des étudiants qui ne sont ni affectés à la biblio xxxxx ni à la biblio yyyyy.
-- Pour cela Ajouter si besoin une nouvelle bibliothèque sans étudiant

-- Exo 6 : Écrire la jointure qui permet de récupérer
-- le nombre d’étudiants inscrits à la biblio xxxxx.

-- Exo 7 : Jointure à 4 tables : Tables manager, book, chapter, library.
-- A partir du prénom/nom d’un manager, récupérer la liste des chapitres
-- des livres qui appartiennent à la bibliothèque du manager donné.

-- Exo 8 : Affiche la liste des bibliothèques (id, nom) qui possède plus de 3 étudiants