<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- <xsl:template match="Faction[@id='clan_empire_north_1']"/> -->
    <xsl:template match="Faction[@id='clan_empire_north_2']"/>
    <xsl:template match="Faction[@id='clan_empire_north_3']"/>
    <xsl:template match="Faction[@id='clan_empire_north_4']"/>
    <xsl:template match="Faction[@id='clan_empire_north_5']"/>
    <xsl:template match="Faction[@id='clan_empire_north_6']"/>
    <xsl:template match="Faction[@id='clan_empire_north_7']"/>
    <xsl:template match="Faction[@id='clan_empire_north_8']"/>
    <xsl:template match="Faction[@id='clan_empire_north_9']"/>
    
    <xsl:template match="Faction[@id='clan_empire_north_1']/@super_faction"><xsl:attribute name="super_faction">Kingdom.empire_s</xsl:attribute> </xsl:template>
    <!-- <xsl:template match="Faction[@id='clan_empire_north_1']">
        <Faction id="clan_empire_north_1"
                 name="Warmia"
                 tier="5"
                 owner="Hero.lord_1_1"
                 culture="Culture.empire"
                 super_faction="Kingdom.empire_s"
                 is_noble="true"
                 banner_key="11.2.140.1836.1836.768.788.1.0.-30.449.35.127.402.517.764.762.1.0.180" />
    </xsl:template> -->
</xsl:stylesheet>