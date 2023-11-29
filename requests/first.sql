-- on reset la database
drop database if exists cours_sql;
create database if not exists cours_sql;

-- on la pointe
use cours_sql;

-- on crée les tables
create table manager (
    idManager int(11) primary key not null auto_increment,
    lastName varchar(100) not null,
    firstName varchar(100) not null,
    phone varchar(20)
) engine=INNODB;

create table library (
    idLibrary int(11) primary key not null auto_increment,
    name varchar(100) not null,
    address varchar(100) not null,
    nbPlace int(11) null,
    idManager int(11) not null,
    constraint fk_library_idManager foreign key (idManager) references manager(idManager)
) engine=INNODB;

create table student (
    idStudent int primary key not null auto_increment,
    login varchar(10) not null ,
    lastName varchar(100) not null ,
    firstName varchar(100) not null ,
    mail varchar(25) null,
    birthDate DATE null
) engine=INNODB;

create table book (
    idBook int(11) primary key not null auto_increment,
    title varchar(100) not null,
    author varchar(100) not null,
    idLibrary int(11) not null,
    constraint fk_book_idLibrary foreign key (idLibrary) references library(idLibrary)
) engine=INNODB;

create table chapter (
    idChapter int(11) primary key not null auto_increment,
    title varchar(100) not null,
    idBook int(11) not null,
    constraint fk_chapter_idBook foreign key (idBook) references book(idBook)
) engine=INNODB;

create table library_student (
    idLibrary int(11) not null,
    idStudent int(11) not null,
    constraint fk_library_student_idLibrary foreign key (idLibrary) references library(idLibrary),
    constraint fk_library_student_idStudent foreign key (idStudent) references student(idStudent)
) engine=INNODB;

-- on ajoute des contraintes de clés primaires et d'unicité
alter table library_student add constraint pk_library_student_idLibrary_idStudent primary key (idLibrary, idStudent);
alter table student add constraint uc_student_mail unique (mail);