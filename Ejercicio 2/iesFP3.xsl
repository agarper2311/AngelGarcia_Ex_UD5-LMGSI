<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <body>
                <p>Nombre y apellidos: Ángel García</p>
                <ul>
                    <xsl:for-each select="//ciclo/nombre">
                    <li>
                        "<xsl:value-of select="."/>"
                        <xsl:if test="position()!=last()"> </xsl:if>
                    </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>