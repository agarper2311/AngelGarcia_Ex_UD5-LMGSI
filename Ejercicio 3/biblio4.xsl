<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Catálogo de Libros</h2>
                <table border="1">
                    <tr>
                        <th>Título</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="titulo"/>
                        <tr>
                            <td>
                                <xsl:if test="precio > 100">
                                    <xsl:attribute name="style">color: red;</xsl:attribute>
                                </xsl:if>
                                <xsl:value-of select="titulo"/>
                                <xsl:if test="precio > 100">
                                    <xsl:text> (Caro)</xsl:text>
                                </xsl:if>
                            </td>
                            <td>
                                <xsl:for-each select="autor">
                                    <xsl:value-of select="nombre"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="apellido"/>
                                    <xsl:if test="position() != last()">, </xsl:if>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="editor">
                                    <xsl:value-of select="nombre"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="apellido"/>
                                    <xsl:if test="afiliacion">
                                        <xsl:text>, </xsl:text>
                                        <xsl:value-of select="afiliacion"/>
                                    </xsl:if>
                                    <xsl:if test="position() != last()">; </xsl:if>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
