/**
1.Find the names of all reviewers who rated Gone with the Wind.  **/

select distinct name
from Reviewer as Re natural join Rating as Ra natural join
(select * from Movie where title = "Gone with the Wind" ) as Mo
where Re.rID = Ra.rID and 
Ra.mID = Mo.mID;

/**
2. For any rating where the reviewer is the same as the director of the movie,
 return the reviewer name, movie title, and number of stars. **/

select name, title, stars
from Reviewer as Re, Rating as Ra, Movie as Mo
where Re.rID = Ra.rID and 
Ra.mID = Mo.mID and name = director;

/**
3. Return all reviewer names and movie names together in a single list, alphabetized.
 (Sorting by the first name of the reviewer and first word in the title is fine;
  no need for special processing on last names or removing "The".) **/

select name
from Reviewer
union
select title 
from Movie
order by name;

/**
4. Find the titles of all movies not reviewed by Chris Jackson. **/
select title 
from Movie
where title not in 
(select title 
from Movie natural join Reviewer natural join Rating 
where name = 'Chris Jackson');

/**
5. For all pairs of reviewers such that both reviewers gave a rating to the same movie,
return the names of both reviewers. Eliminate duplicates,
don't pair reviewers with themselves, and include each pair only once. For each pair,
return the names in the pair in alphabetical order. **/

select distinct Re1.name, Re2.name
from Reviewer as Re1, Reviewer as Re2, Rating as Ra1, Rating as Ra2
where Ra1.mID = Ra2.mID and Re1.rID = Ra1.rID and Re2.rID = Ra2.rID
and Re1.name < Re2.name;

/**
6. For each rating that is the lowest (fewest stars) currently in the database,
 return the reviewer name, movie title, and number of stars. **/

select name, title, stars
from (select * 
		from Rating
        where stars in (select min(stars) from Rating)) as Ra 
natural join Movie natural join Reviewer;

/**
7. List movie titles and average ratings, from highest-rated to lowest-rated.
 If two or more movies have the same average rating, list them in alphabetical order.**/

select title, avg(stars) as avg_rating
from Rating as Ra, Movie as Mo
where Ra.mID = Mo.mID
group by title
order by avg_rating DESC;

/**
8. Find the names of all reviewers who have contributed three or more ratings.
 (As an extra challenge, try writing the query without HAVING or without COUNT.)**/

select distinct Re.name
from Reviewer as Re, Rating Ra
where Re.rID = Ra.rID
group by Re.rID
having count(Ra.mID) >= 3;

/**
9. Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them,
along with the director name. Sort by director name, then movie title. (As an extra challenge,
try writing the query both with and without COUNT.) **/

select title, director
from Movie as Mo
natural join 
(select director
from Movie as Mo
group by director
having count(*) > 1) as Md
where Mo.director = Md.director
order by Mo.director, title;

select M1.title, M1.director
from Movie as M1, Movie as M2
where M1.director = M2.director and M1.title <> M2.title
order by M1.director, M1.title;

/**
12. For each director, return the director's name together with the title(s) of the movie(s)
they directed that received the highest rating among all of their movies, and the value of that rating.
Ignore movies whose director is NULL. **/

select distinct Mo.director, Mo.title, Mo1.max_stars
from Movie as Mo, Rating as Ra,
(select Mo.director, max(stars) as max_stars
from Movie as Mo, Rating as Ra
where Mo.mID = Ra.mID
group by Mo.director) as Mo1
where Ra.stars = Mo1.max_stars and Mo.director = Mo1.director and
Mo.mID = Ra.mID;

