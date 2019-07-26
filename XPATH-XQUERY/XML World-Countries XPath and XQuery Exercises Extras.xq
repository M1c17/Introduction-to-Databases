XPath/XQuery Course_Catalog Extra Exercises
Note: Your solution will need to reference doc("countries.xml") to access the data. 
Reminder: To return the value of an attribute attr, you must use data(@attr),
although just @attr may be used in comparisons. You will need to remember this 
for some later questions as well.

1. Return the area of Mongolia. 

doc("countries.xml")//country[@name= "Mongolia"]/data(@area)

2. Return the names of all cities that have the same name as the country in which they are located.
for $co in doc("countries.xml")//country
for $ci in $co/city
where $ci/name = $co/@name
return $ci/name

3. Return the average population of Russian-speaking countries. 
avg(doc("countries.xml")//country[language = "Russian"]/data(@population))

4. Return the names of all countries that have at least three cities with population greater than 3 million.
doc("countries.xml")//country[count(city[population>3000000]) >= 3]/data(@name)

5.Create a list of French-speaking and German-speaking countries. The result should take the form:
<result>
  <French>
    <country>country-name</country>
    <country>country-name</country>
    ...
  </French>
  <German>
    <country>country-name</country>
    <country>country-name</country>
    ...
  </German>
</result>

<result>
  <French>
   {for $c in doc("countries.xml")//country
   where $c/language = 'French'
   return <country> {$c/data(@name)} </country>}
  </French>
  <German>
    {for $c in doc("countries.xml")//country
   where $c/language = 'German'
   return <country> { $c/data(@name)} </country>}
  </German>
</result>


