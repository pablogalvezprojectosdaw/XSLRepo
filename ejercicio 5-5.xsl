<?xml version="1.0" encoding = "ISO-8859-1"?>
<xsl:stylesheet version ="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> Ejemplo templates </h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="libreria">
        <h2> Mi biblioteca personal </h2>
        <table>
            <tr bgcolor="#00F0FF">
                <th> Codigo ISBN </th>
                <th> Titulo </th>
                <th> Autor </th>
                <th> Precio </th>
                <th> Numero de Paginas </th>
            </tr>
            <xsl:apply-templates select="libro"/>
        </table>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
            <xsl:apply-templates select="ibsn"/>
            <xsl:apply-templates select="titulo"/>
            <xsl:apply-templates select="autor"/>
            <xsl:apply-templates select="precio"/>
            <xsl:choose>
                <xsl:when test="numPaginas &gt; 150">
                    <xsl:apply-templates select="numPaginas"/>
                </xsl:when>
                <xsl:otherwise>
                    <td bgcolor="#00F0FF">
                        <xsl:value-of select="numPaginas"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
        </tr>
    </xsl:template>
    <xsl:template match="ibsn">
        <td bgcolor="00F0FF">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    <xsl:template match="titulo">
        <td bgcolor="00F0FF">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    <xsl:template match="autor">
        <td bgcolor="00F0FF">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    <xsl:template match="precio">
        <td bgcolor="00F0FF">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
    <xsl:template match="numPaginas">
        <td bgcolor="#FF0000">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
</xsl:stylesheet>