XML World-Countries XSLT Exercises Extras

1.Find all country names containing the string "stan"; 
return each one within a "Stan" element. (Note: To specify quotes within an already-quoted
XPath expression, use quot;.)

<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match= 'country[contains(@name, "stan")]'>
            <Stan>
                <xsl:value-of select='data(@name)'/>
            </Stan>
        </xsl:template>
        <xsl:template match='text()' />
    </xsl:stylesheet>


2.Remove from the data all countries with area greater than 40,000 and all countries with no cities listed.
Otherwise the structure of the data should be the same. 

<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="*|@*|text()">
        <xsl:copy>
            <xsl:apply-templates select="*|@*|text()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="//country">
        <xsl:for-each select=".">
            <xsl:if test="not(./@area > 40000) and count(./city) > 0">
                <xsl:copy-of select="."/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>