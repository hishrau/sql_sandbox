CREATE TABLE faculty_name (
  id   SERIAL PRIMARY KEY,
  name VARCHAR(40) 
);

CREATE TABLE subject_type (
  id   SERIAL PRIMARY KEY,
  name VARCHAR(40) 
);

CREATE TABLE students (
  id         SERIAL PRIMARY KEY,
  name       VARCHAR(40) ,
  faculty_id   INT     NULL REFERENCES faculty_name (id)
);


CREATE TABLE mark (
  id   SERIAL PRIMARY KEY,
  student_id   INT     NULL REFERENCES students (id),
  subject_id   INT    NULL REFERENCES subject_type (id),
  mark INT
);

INSERT INTO faculty_name (name)
VALUES ('Gryffindor'), ('Hufflepuff'),('Ravenclaw'), ('Slytherin');

INSERT INTO students (name,faculty_id)
Values ('Marietta Edgecombe',1),
('Mandy Brocklehurst',2),
('Michael Corner',2),
('Stephen Cornfoot',1),
('Kevin Entwhistle',2),
('Anthony Goldstein',3),
('Alena Irkhina',2),
('Morag McDougal',1),
('Padma Patil',2),
('Lisa Turpin',3),
('Luna Lovegood',3),
('Orla Quirke',1),
('Stewart Ackerley',4),
('Susan Bones',4),
('Eleanor Branstone',4),
('Owen Cauldwell',2),
('Justin Finch-Fletchley',4),
('Wayne Hopkins',4),
('Megan Jones',3),
('Laura Madley',1),
('Kevin Whitby',3),
('Rose Zeller',3),
('Terence Higgs',4),
('Adrian Pucey',4),
('Tracey Davis',1),
('Lilian Moon',2),
('Daphne Greengrass',1),
('Andrei Osadchii',3),
('Astoria Greengrass',2),
('Malcolm Baddock',3),
('Graham Pritchard',4),
('Roger Davies',1);

INSERT INTO subject_type (name)
VALUES ('Defense Against the Dark Arts'), ('Charms'),('Transfiguration'), ('Potions'), ('Herbology'), ('History of Magic'), ('Astronomy'), ('Flying'), ('Muggle Art');

INSERT INTO mark (student_id,subject_id,mark)
(select * from
(select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5) union
select ceil(RAND()*32), ceil(RAND()*9)  ,ceil(RAND()*5))s) 
;