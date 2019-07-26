XML Course-Catalog XSLT Exercises

1. Your solution should fill in the following stylesheet:
<?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match= "/Course_Catalog/Department/Title">
        <xsl:copy-of select="."/>
        </xsl:template >
        <xsl:template match= "text()"/>
    </xsl:stylesheet>

*** Other solution:
    <?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="Department">
    <Title> <xsl:value-of select="Title" /> </Title>
    </xsl:template>
  </xsl:stylesheet>

2. Return a list of department elements with no attributes and two subelements each:
 the department title and the entire Chair subelement structure.

 <?xml version="1.0" encoding="ISO-8859-1"?>
    <xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
        <xsl:for-each select="//Department">
            <Department>
                <Title> <xsl:value-of select="Title" /> </Title>
                <xsl:copy-of select="Chair" />
            </Department>
        </xsl:for-each >
        </xsl:template>
    </xsl:stylesheet>