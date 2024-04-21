<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Rekgeist -->
    <!-- Cities -->
    <xsl:template match="Settlement[@id='town_S1']/@owner"><xsl:attribute name='owner'>Faction.clan_rekgeist_1</xsl:attribute></xsl:template>
    <xsl:template match="Settlement[@id='town_S1']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_S1_1']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_S1_3']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_S7']/@owner"> <xsl:attribute name='owner'>Faction.clan_rekgeist_1</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_S7']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_S7_1']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_S7_2']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_S3']/@owner"> <xsl:attribute name='owner'>Faction.clan_rekgeist_1</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_S3']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_S3_1']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_S3_2']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_EN1']/@owner"> <xsl:attribute name='owner'>Faction.clan_rekgeist_1</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_EN1']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_EN1_1']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_EN1_2']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_EN1_3']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_EN2']/@owner"> <xsl:attribute name='owner'>Faction.clan_rekgeist_1</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='town_EN2']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_EN2_1']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_EN2_2']/@culture"> <xsl:attribute name='culture'>Culture.rekgeist</xsl:attribute> </xsl:template>
    <!-- Castles -->
    <!-- Lysellois -->
    <!-- Cities -->
    <xsl:template match="Settlement[@id='town_V1']/@owner"><xsl:attribute name='owner'>Faction.clan_lysellois_1</xsl:attribute></xsl:template>
    <xsl:template match="Settlement[@id='town_V1']/@culture"> <xsl:attribute name='culture'>Culture.lysellois</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_V1_1']/@culture"> <xsl:attribute name='culture'>Culture.lysellois</xsl:attribute> </xsl:template>
    <xsl:template match="Settlement[@id='village_V1_2']/@culture"> <xsl:attribute name='culture'>Culture.lysellois</xsl:attribute> </xsl:template>
    <!-- Castles -->
</xsl:stylesheet>

