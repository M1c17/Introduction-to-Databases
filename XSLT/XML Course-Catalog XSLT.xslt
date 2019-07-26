XML Course-Catalog XSLT Exercises Extras

1.Return all courses with enrollment greater than 500. Retain the structure of Course elements from the original data. 

<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="Course[@Enrollment &gt; 500]">
         <xsl:copy-of select="." />
        </xsl:template>
        <xsl:template match="text()" />
     </xsl:stylesheet>

2. Remove from the data all courses with enrollment greater than 60, or with no enrollment listed.
 Otherwise the structure of the data should be the same.

<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="*|@*|text()">
           <xsl:copy>
              <xsl:apply-templates select="*|@*|text()" />
           </xsl:copy>
        </xsl:template>
        <xsl:template match="Course[@Enrollment &gt; 60 or not(@Enrollment)]"/>
    </xsl:stylesheet>

3. Create a summarized version of the EE part of the course catalog.
For each course in EE, return a Course element, with its Number and Title as attributes,
its Description as a subelement, and the last name of each instructor as an Instructor subelement.
Discard all information about department titles, chairs, enrollment, and prerequisites,
as well as all courses in departments other than EE. 
(Note: To specify quotes within an already-quoted XPath expression, use quot;.) 

<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
          <xsl:for-each select="//Department[@Code = 'EE']//Course">
              <Course Number= "{./@Number}" Title= "{./Title}">
                  <xsl:copy-of select="./Description"/>
                  <xsl:for-each select="./Instructors/(Professor | Lecturer)//Last_Name">
                      <Instructor>
                          <xsl:value-of select="."/>
                      </Instructor>
                  </xsl:for-each>
              </Course>
          </xsl:for-each>
        </xsl:template>
        <xsl:template match='text()' />
    </xsl:stylesheet>

4. Create an HTML table with one-pixel border that lists all CS department courses with enrollment greater than 200.
Each row should contain three cells: the course number in italics, course title in bold, and enrollment.
Sort the rows alphabetically by course title. No header is needed. (Note: For formatting, just use "table border=1",
and "<b>" and "<i>" tags for bold and italics respectively. To specify quotes within an already-quoted XPath expression,
use quot;.) 

<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
            <table border="1">
                <xsl:for-each select="//Department[@Code = 'CS']//Course[@Enrollment &gt; 200]">
                    <xsl:sort select="./Title" data-type="text"/>
                    <tr>
                        <td><i><xsl:value-of select="./@Number"/></i></td>
                        <td><b><xsl:value-of select="./Title" /></b></td>
                        <td><xsl:value-of select="./@Enrollment"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </xsl:template>
    </xsl:stylesheet> 

