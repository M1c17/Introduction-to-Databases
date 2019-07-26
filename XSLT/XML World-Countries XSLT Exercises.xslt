XML World-Countries XSLT Exercises

1. Return all countries with population between 9 and 10 million. Retain the structure of country elements from the original data. 

<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="country">
            <xsl:for-each select=".">
                <xsl:if test="@population &gt; 9000000 and @population &lt; 10000000">
                    <xsl:copy-of select="."/>
                </xsl:if>
             </xsl:for-each>
        </xsl:template>
    </xsl:stylesheet>

2. Create a table using HTML constructs that lists all countries that have more than 3 languages.
Each row should contain the country name in bold, population, area, and number of languages.
Sort the rows in descending order of number of languages. No header is needed for the table,
but use <table border="1"> to make it format nicely, should you choose to check your result in a browser.
(Hint: You may find the data-type and order attributes of <xsl:sort> to be useful.)

<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
            <html>
                <table border="1">
                    <xsl:for-each select="countries/country[count(language) &gt; 3]">
                        <xsl:sort order="descending" select="data(count(language))" data-type="number"/>
                        <tr>
                            <td><b><xsl:value-of select="./@name"/></b></td>
                            <td><xsl:value-of select="./@population"/></td>
                            <td><xsl:value-of select="./@area"/></td>
                            <td><xsl:value-of select="count(./language)"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </html> 
        </xsl:template>
    </xsl:stylesheet>

3. Create an alternate version of the countries database: for each country, 
include its name and population as sublements, and the number of languages and number of cities as attributes
(called "languages" and "cities" respectively). 

<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <countries>
            <xsl:apply-templates />
        </countries>
    </xsl:template>
    
    <xsl:template match="country">
        <xsl:for-each select=".">
            <xsl:variable name="cl" select="count(./language)"/>
            <xsl:variable name="cc" select="count(./city)"/>
            <country>
                <xsl:attribute name="cities">
                    <xsl:value-of select="$cc"/>
                </xsl:attribute>
                    <xsl:attribute name="languages">
                    <xsl:value-of select="$cl"/>
                </xsl:attribute>
                <name><xsl:value-of select="./@name"/></name>
                <population><xsl:value-of select="./@population"/></population>
            </country>
         </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>