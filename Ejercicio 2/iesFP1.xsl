<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <body>
                <p>Nombre y apellidos: Ángel García</p>
                <ol>
                    <xsl:for-each select="//ciclo/nombre">
                    <ol>
                        "<xsl:value-of select="."/>"
                        <xsl:if test="position()!=last()"> </xsl:if>
                    </ol>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
