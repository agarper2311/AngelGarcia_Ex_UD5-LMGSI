<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <body>
                <h1><xsl:value-of select="/ies/@nombre"/></h1>
                <table border="1">
                    <tr>
                        <th>Nombre del Ciclo</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td>
                                <xsl:attribute name="style">
                                    <xsl:choose>
                                        <xsl:when test="decretoTitulo/@año &gt; 2009">color:green;</xsl:when>
                                        <xsl:when test="decretoTitulo/@año = 2009">color:blue;</xsl:when>
                                        <xsl:otherwise>color:red;</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="decretoTitulo/@año"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
