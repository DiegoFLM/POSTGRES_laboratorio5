CREATE DATABASE lab5;

/*1.1*/

CREATE TABLE tabla1 (A char(1), B char(1), PRIMARY KEY(A));

CREATE TABLE tabla3 (C char(1), D integer, E char(1), PRIMARY KEY(C, D));

CREATE TABLE tabla2 (A char(1), C char(1), D integer, 
        PRIMARY KEY(A, C, D), 
        FOREIGN KEY (A) REFERENCES tabla1(A),
        FOREIGN KEY (C, D) REFERENCES tabla3(C, D)
        );


/*1.2*/        

INSERT INTO tabla1(A, B) VALUES ('a', 'b');
INSERT INTO tabla1(A, B) VALUES ('c', 'd');

INSERT INTO tabla3(C, D, E) VALUES ('w', 5, 'x');
INSERT INTO tabla3(C, D, E) VALUES ('y', 8, 'z');

INSERT INTO tabla2(A, C, D) VALUES ('a', 'w', 5);
INSERT INTO tabla2(A, C, D) VALUES ('c', 'y', 8);








