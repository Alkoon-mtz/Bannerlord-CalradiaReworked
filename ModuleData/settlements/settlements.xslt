<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="Settlement[@id='town_S1']/@owner">
        <xsl:attribute name='owner'>Faction.clan_rekgeist_1</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='town_S1']/@culture">
        <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_S1_1']/@culture">
        <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute>
    </xsl:template>
    <xsl:template match="Settlement[@id='village_S1_3']/@culture">
        <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute>
    </xsl:template>

</xsl:stylesheet>

