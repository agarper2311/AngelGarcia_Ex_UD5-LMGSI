<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <body>
                <h2>Catálogo de Libros</h2>
                <table border="1">
                    <tr>
                        <th>Precio</th>
                        <th>Título</th>
                        <th>Año de Publicación</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" data-type="text" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="precio"/></td>
                            <td>
                                <xsl:attribute name="style">
                                    <xsl:if test="precio > 100">background-color:red;</xsl:if>
                                </xsl:attribute>
                                <xsl:value-of select="titulo"/>
                            </td>
                            <td><i><xsl:value-of select="@año"/></i></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
