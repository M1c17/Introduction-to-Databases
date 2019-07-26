/**
1. Find the titles of all movies directed by Steven Spielberg. **/
select title
from Movie
where director = 'Steven Spielberg';

/**
2. Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. **/
select distinct year 
from Movie natural join
(select mID from Rating where stars = 4 or stars = 5) as Rating;

/**
3. Find the titles of all movies that have no ratings. **/
select title
from Movie 
where mID not in (select mID from Rating) ;

/**
4. Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date. **/
select name 
from Reviewer 
where rID in (select rID from Rating where ratingDate is NULL);

/**
5. Write a query to return the ratings data in a more readable format:
 reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. **/
select Re.name, Mo.title, Ra.stars, Ra.ratingDate
from Movie as Mo, Rating as Ra, Reviewer as Re
where Re.rID = Ra.rID and Mo.mID = Ra.mID
order by name, title, stars;

/**
6. For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time,
 return the reviewer's name and the title of the movie. **/
select name, title
from Reviewer as Re, Movie as Mo, Rating as R1, Rating as R2
where Re.rID = R1.rID and Re.rID = R2.rID and
Mo.mID = R1.mID and Mo.mID = R2.mID and
R1.stars < R2.stars and R1.ratingDate < R2.ratingDate;

/**
7. For each movie that has at least one rating, find the highest number of stars that movie received.
 Return the movie title and number of stars. Sort by movie title. **/
select * 
from (select title, max(stars)
	  from Movie natural join Rating natural join Reviewer
      group by title) as Maxstars
order by title;

/**
8. For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie.
 Sort by rating spread from highest to lowest, then by movie title.**/
select title, (max(stars) - min(stars)) as spread
    from Rating natural join Movie
    where Rating.mID = Movie.mID
    group by title
    order by spread DESC, title ASC;

/**
9. Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980.
 (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after.
  Don't just calculate the overall average rating before and after 1980.) **/
select avgbefore1980 - avgafter1980
from
(select avg(avgS) as avgbefore1980
from 
(select title, avg(stars) as avgS from Rating natural join
 Movie where year < 1980 group by title))
join
(select avg(avgS) as avgafter1980
from
(select title, avg(stars) as avgS from Rating natural join
 Movie where year > 1980 group by title));
