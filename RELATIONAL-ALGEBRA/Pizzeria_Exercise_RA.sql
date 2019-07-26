/** 1. Find all pizzas eaten by at least one female over the age of 20 **/

select *
from (select * from PERSON where age > 20 and gender ='female') as females natural join Eats;

/** 2. Find the names of all females who eat at least one pizza served by Straw Hat. (Note: The pizza need not be eaten at Straw Hat.)  **/

select name
from (select * from Person where gender = 'female') as females
natural join 
(select * from Frequents where pizzeria = 'Straw Hat') as pizzeria
where females.name = pizzeria.name;

/** 3. Find all pizzerias that serve at least one pizza for less than $10 that either Amy or Fay (or both) eat. **/

select pizzeria
from (select * from Serves where price < 10) as Serves
natural join Eats
where name in (select name from Person where name = 'Amy'or name = 'Fay');

/** 4. Find all pizzerias that serve at least one pizza for less than $10 that both Amy and Fay eat. **/

select distinct pizzeria 
from (select * from Serves where price < 10) as Serves
natural join (select pizza from Eats where name ='Amy') as Amy
natural join (select pizza from Eats where name ='Fay') as Fay;

/** 5. Find the names of all people who eat at least one pizza served by Dominos but who do not frequent Dominos. **/
select distinct name
from (select * from Serves where pizzeria = 'Dominos') as Serves 
natural join 
Eats
where name not in  
(select name from Frequents where pizzeria = 'Dominos');

/** 6. Find all pizzas that are eaten only by people younger than 24, or that cost less than $10 everywhere they're served. **/
(select pizza
from Serves
where pizza not in (select pizza from Serves where price > 10))
union
(select pizza
from Eats
where pizza not in (select pizza from Person natural join Eats where age >= 24));

/** 7. Find the age of the oldest person (or people) who eat mushroom pizza. **/

select distinct *
from (select * from Eats natural join Person where pizza = 'mushroom') as pizza
where age >= all (select age from Eats natural join Person where pizza = 'mushroom');

/** 8. Find all pizzerias that serve only pizzas eaten by people over 30. **/

select distinct pizzeria
from Serves
natural join 
(select pizza from Person natural join Eats where age > 30) as older
where pizzeria not in 
(select pizzeria
from Serves
natural join 
(select pizza from Eats where pizza not in 
(select pizza from Person natural join Eats where age > 30)) as nolder);

/** 9. Find all pizzerias that serve every pizza eaten by people over 30. **/
