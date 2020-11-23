<!--  xsl stylesheet declaration with xsl namespace:   
Namespace tells the xlst processor about which   
element is to be processed and which is used for output purpose only   
 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!--  xsl template declaration:    
template tells the xlst processor about the section of xml   
document which is to be formatted. It takes an XPath expression.   
In our case, it is matching document root element and will   
tell processor to process the entire document with this template.   
 -->
<xsl:template match="/">
<!--  HTML tags   
         Used for formatting purpose. Processor will skip them and browser   
            will simply render them.   
       -->
<html>
<body>
<h3>Rating Wise NetFlix Series</h3>
<table border="5">
<tr bgcolor="orange">
<th>name</th>
<th>ratings</th>
<th>genre</th>
<th>director</th>
</tr>
<!--  for-each processing instruction   
               Looks for each element matching the XPath expression   
                -->
<xsl:for-each select="film/series">
<tr>
<td>
<!--  value-of processing instruction   
                        process the value of the element matching the XPath expression   
                         -->
<xsl:value-of select="name"/>
</td>
<td>
<xsl:value-of select="ratings"/>
</td>
<td>
<xsl:value-of select="genre"/>
</td>
<td>
<xsl:value-of select="director"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
