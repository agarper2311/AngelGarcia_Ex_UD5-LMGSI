<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Nombre y apellidos: <xsl:value-of select="bib/student"/></h2>
        <ul>
          <xsl:for-each select="bib/book">
            <li>
              <xsl:value-of select="title"/> - 
              "<xsl:value-of select="publisher"/>" 
              (<xsl:value-of select="year"/>)
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
