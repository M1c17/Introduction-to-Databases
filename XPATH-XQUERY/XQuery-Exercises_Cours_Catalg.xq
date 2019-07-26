/**
In these exercises, you will be working with a small XML data set drawn from the Stanford course catalog.
There are multiple departments, each with a department chair, some courses, and professors and/or lecturers
who teach courses. The XML data is here. 

Instructions: Each problem asks you to write a query in XPath or XQuery.
When you click "Check Answer" our back-end runs your query against the sample database using Saxon.
It displays the result and compares your answer against the correct one. When you're satisfied with your solution
for a given problem, click the "Submit" button to check your answer. 

You may perform these exercises as many times as you like, so we strongly encourage you to keep working with them
until you complete the exercises with full credit. **/

1. Return all Title elements (of both departments and courses).
XPath
doc("courses.xml")//Title
XQuery
let $course_ref := doc("courses.xml")/Course_Catalog
return $course_ref//Title

2. Return last names of all department chairs.
XPath
doc("courses.xml")//Chair//Last_Name
XQuery
let $course_ref := doc("courses.xml")/Course_Catalog
return $course_ref//Chair//Last_Name

3. Return titles of courses with enrollment greater than 500.
XPath
doc("courses.xml")//Course[data(@Enrollment > 500)]/Title
XQuery
let $course_ref := doc("courses.xml")/Course_Catalog
return $course_ref//Course[data(@Enrollment) > 500]/Title

4. Return titles of departments that have some course that 
takes "CS106B" as a prerequisite. 
XPath
doc("courses.xml")/Course_Catalog/Department[Course/Prerequisites/Prereq = "CS106B"]/Title

5. Return last names of all professors or lecturers who use a middle initial.
 Don't worry about eliminating duplicates.
XPath
doc("courses.xml")//(Professor|Lecturer)[Middle_Initial]/Last_Name

6. Return the count of courses that have a cross-listed course (i.e., that have "Cross-listed" in their description).
XPath
doc("courses.xml")/Course_Catalog/count(Department/Course[contains(Description, "Cross-listed")])
XQuery
let $course_ref := doc("courses.xml")/Course_Catalog
return count($course_ref//Course[contains(data(Description), "Cross-listed")])

7. Return the average enrollment of all courses in the CS department.
XPath 
doc("courses.xml")//Department[@Code="CS"]/avg(Course/@Enrollment)

8. Return last names of instructors teaching at least one course that has "system" in its description and enrollment greater than 100.
XPath
doc("courses.xml")//Course[@Enrollment > 100 and contains (Description, "system")]/Instructors//Last_Name
XQuery
let $cat_ref := doc("courses.xml")/Course_Catalog
return $cat_ref//Course[contains(Description, "system") and data(@Enrollment) > 100]/Instructors/*/Last_Name

9. Return the title of the course with the largest enrollment. 
XPath
doc("courses.xml")//Course[@Enrollment = max(doc("courses.xml")//Course/@Enrollment)]/Title
XQuery
let $cat_ref := doc("courses.xml")/Course_Catalog
return $cat_ref//Course[data(@Enrollment) = max($cat_ref//Course/@Enrollment)]/Title
