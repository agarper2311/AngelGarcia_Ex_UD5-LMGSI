<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Nombre y Apellidos: Angel Garcia</h2>
                <ol>
                    <xsl:for-each select="//autor">
                        <xsl:sort select="apellido"/>
                        <li>
                            <xsl:value-of select="apellido"/>,
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="nombre"/>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
