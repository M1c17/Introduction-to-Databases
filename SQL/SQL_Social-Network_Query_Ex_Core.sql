/**
SQL Social-Network Query Exercises

1.Find the names of all students who are friends with someone named Gabriel. **/

select H2.name
from Friend as F, Highschooler as H1, Highschooler as H2
where H1.ID = F.ID1 and H2.ID = F.ID2 and H1.name = 'Gabriel';

/**
2.For every student who likes someone 2 or more grades younger than themselves,
return that student's name and grade, and the name and grade of the student they like. **/

select H1.name, H1.grade, H2.name, H2.grade
from Highschooler as H1, Highschooler as H2, Likes as L
where H1.grade >= (H2.grade + 2) and H1.ID = L.ID1 and H2.ID = L.ID2;

/**
3. For every pair of students who both like each other, return the name and grade of both students.
Include each pair only once, with the two names in alphabetical order. **/

select distinct H1.name, H1.grade, H2.name, H2.grade
from Highschooler as H1,  Highschooler as H2, 
(select L1.ID1, L1.ID2
from Likes as L1, Likes as L2
where L1.ID2 = L2.ID1 and L1.ID1 = L2.ID2) as Likes
where H1.ID = Likes.ID1 and H2.ID = Likes.ID2 and
H1.name < H2.name;

/**
4. Find all students who do not appear in the Likes table (as a student who likes or is liked)
and return their names and grades. Sort by grade, then by name within each grade. **/

select H.name, H.grade
from Highschooler as H
where H.ID not in
(select L.ID1 as ID from Likes as L
union
select L.ID2 as ID from Likes as L)
order by H.grade, H.name;

/**
5. For every situation where student A likes student B, but we have no information about whom B likes
(that is, B does not appear as an ID1 in the Likes table), return A and B's names and grades. **/

select H1.name, H1.grade, H2.name, H2.grade
from Highschooler as H1, Highschooler as H2,
(select ID1, ID2 from Likes 
where ID2 not in (select ID1 from Likes)) as L
where H1.ID = L.ID1 and H2.ID = L.ID2;

/**
6. Find names and grades of students who only have friends in the same grade.
 Return the result sorted by grade, then by name within each grade. **/

select distinct H.name, H.grade 
from Highschooler as H natural join
(select F.ID1 as ID
from Friend as F
where F.ID1 not in 
(select F.ID1 
from Friend as F, Highschooler as H1, Highschooler as H2
where F.ID1 = H1.ID and F.ID2 = H2.ID and H1.grade <> H2.grade)) as NG
where H.ID = NG.ID
order by H.grade, H.name;

/**
7. For each student A who likes a student B where the two are not friends, find if they have a friend C in common
(who can introduce them!). For all such trios, return the name and grade of A, B, and C. **/

select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade
from Highschooler as H1, Highschooler as H2, Highschooler as H3,
Friend as F1, Friend as F2,
(select L.ID1, L.ID2 from Likes as L
except
select L.ID1, L.ID2 
from Likes as L, Friend as F
where L.ID1 = F.ID1 and L.ID2 = F.ID2) as NF

where H1.ID = F1.ID1 and F1.ID1 = NF.ID1 and
	  H2.ID = F2.ID1 and F2.ID1 = NF.ID2 and
      H3.ID = F2.ID2 and F2.ID2 = F1.ID2;

/**
8. Find the difference between the number of students in the school and the number of different first names. **/

select abs(Fname.co - Snumber.co) 
from 
(select count(*) as co from (select distinct H.name from Highschooler as H)) as Fname,
(select count(*) as co from Highschooler) as Snumber;

/**
9. Find the name and grade of all students who are liked by more than one other student. **/

select H.name, H.grade
from Highschooler as H, 
(select L.ID2 as ID from Likes as L
group by L.ID2
having count(L.ID2) > 1) as Likes
where H.ID = Likes.ID;