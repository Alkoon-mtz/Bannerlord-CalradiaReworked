<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- Aserai -->
    <!-- <xsl:template match="Faction[@id='clan_aserai_1']"/> -->
    <!-- <xsl:template match="Faction[@id='clan_aserai_2']"/>
         <xsl:template match="Faction[@id='clan_aserai_3']"/>
         <xsl:template match="Faction[@id='clan_aserai_4']"/>
         <xsl:template match="Faction[@id='clan_aserai_5']"/>
         <xsl:template match="Faction[@id='clan_aserai_6']"/>
         <xsl:template match="Faction[@id='clan_aserai_7']"/>
         <xsl:template match="Faction[@id='clan_aserai_8']"/>
         <xsl:template match="Faction[@id='clan_aserai_9']"/> -->
    
    <!-- Battania -->
    <xsl:template match="Faction[@id='clan_battania_1']"/>
    <!-- <xsl:template match="Faction[@id='clan_battania_1']/@super_faction"><xsl:attribute name="super_faction">Kingdom.empire_w</xsl:attribute> </xsl:template> -->
    <xsl:template match="Faction[@id='clan_battania_2']"/>
    <xsl:template match="Faction[@id='clan_battania_3']"/>
    <xsl:template match="Faction[@id='clan_battania_4']"/>
    <xsl:template match="Faction[@id='clan_battania_5']"/>
    <xsl:template match="Faction[@id='clan_battania_6']"/>
    <xsl:template match="Faction[@id='clan_battania_7']"/>
    <xsl:template match="Faction[@id='clan_battania_8']"/>
    
    <!-- Empire North -->
    <xsl:template match="Faction[@id='clan_empire_north_1']"/>
    <!-- <xsl:template match="Faction[@id='clan_empire_north_1']/@super_faction"><xsl:attribute name="super_faction">Kingdom.empire_w</xsl:attribute> </xsl:template> -->
    <xsl:template match="Faction[@id='clan_empire_north_2']"/>
    <xsl:template match="Faction[@id='clan_empire_north_3']"/>
    <xsl:template match="Faction[@id='clan_empire_north_4']"/>
    <xsl:template match="Faction[@id='clan_empire_north_5']"/>
    <xsl:template match="Faction[@id='clan_empire_north_6']"/>
    <xsl:template match="Faction[@id='clan_empire_north_7']"/>
    <xsl:template match="Faction[@id='clan_empire_north_8']"/>
    <xsl:template match="Faction[@id='clan_empire_north_9']"/>
    
    <!-- Empire South -->
    <xsl:template match="Faction[@id='clan_empire_south_1']"/>
    <!-- <xsl:template match="Faction[@id='clan_empire_south_1']/@super_faction"><xsl:attribute name="super_faction">Kingdom.empire_w</xsl:attribute> </xsl:template> -->
    <xsl:template match="Faction[@id='clan_empire_south_2']"/>
    <xsl:template match="Faction[@id='clan_empire_south_3']"/>
    <xsl:template match="Faction[@id='clan_empire_south_4']"/>
    <xsl:template match="Faction[@id='clan_empire_south_5']"/>
    <xsl:template match="Faction[@id='clan_empire_south_6']"/>
    <xsl:template match="Faction[@id='clan_empire_south_7']"/>
    <xsl:template match="Faction[@id='clan_empire_south_8']"/>
    <xsl:template match="Faction[@id='clan_empire_south_9']"/>
    
    <!-- Empire West -->
    <!-- <xsl:template match="Faction[@id='clan_empire_west_1']"/> -->
    <!-- <xsl:template match="Faction[@id='clan_empire_west_1']/@super_faction"><xsl:attribute name="super_faction">Kingdom.empire_w</xsl:attribute> </xsl:template> -->
    <xsl:template match="Faction[@id='clan_empire_west_2']"/>
    <xsl:template match="Faction[@id='clan_empire_west_3']"/>
    <xsl:template match="Faction[@id='clan_empire_west_4']"/>
    <xsl:template match="Faction[@id='clan_empire_west_5']"/>
    <xsl:template match="Faction[@id='clan_empire_west_6']"/>
    <xsl:template match="Faction[@id='clan_empire_west_7']"/>
    <xsl:template match="Faction[@id='clan_empire_west_8']"/>
    <xsl:template match="Faction[@id='clan_empire_west_9']"/>
    
    <!-- Khuzait -->
    <!-- <xsl:template match="Faction[@id='clan_khuzait_1']"/> -->
    <!-- <xsl:template match="Faction[@id='clan_khuzait_2']"/>
         <xsl:template match="Faction[@id='clan_khuzait_3']"/>
         <xsl:template match="Faction[@id='clan_khuzait_4']"/>
         <xsl:template match="Faction[@id='clan_khuzait_5']"/>
         <xsl:template match="Faction[@id='clan_khuzait_6']"/>
         <xsl:template match="Faction[@id='clan_khuzait_7']"/>
         <xsl:template match="Faction[@id='clan_khuzait_8']"/>
         <xsl:template match="Faction[@id='clan_khuzait_9']"/> -->
    
    <!-- Sturgia -->
    <!-- <xsl:template match="Faction[@id='clan_sturgia_1']"/> -->
    <!-- <xsl:template match="Faction[@id='clan_sturgia_2']"/>
         <xsl:template match="Faction[@id='clan_sturgia_3']"/>
         <xsl:template match="Faction[@id='clan_sturgia_4']"/>
         <xsl:template match="Faction[@id='clan_sturgia_5']"/>
         <xsl:template match="Faction[@id='clan_sturgia_6']"/>
         <xsl:template match="Faction[@id='clan_sturgia_7']"/>
         <xsl:template match="Faction[@id='clan_sturgia_8']"/>
         <xsl:template match="Faction[@id='clan_sturgia_9']"/> -->
    
    <!-- Vlandia -->
    <xsl:template match="Faction[@id='clan_vlandia_1']"/>
    <!-- <xsl:template match="Faction[@id='clan_vlandia_1']/@super_faction"><xsl:attribute name="super_faction">Kingdom.empire_w</xsl:attribute> </xsl:template> -->
    <xsl:template match="Faction[@id='clan_vlandia_2']"/>
    <xsl:template match="Faction[@id='clan_vlandia_3']"/>
    <xsl:template match="Faction[@id='clan_vlandia_4']"/>
    <xsl:template match="Faction[@id='clan_vlandia_5']"/>
    <xsl:template match="Faction[@id='clan_vlandia_6']"/>
    <xsl:template match="Faction[@id='clan_vlandia_7']"/>
    <xsl:template match="Faction[@id='clan_vlandia_8']"/>
    <xsl:template match="Faction[@id='clan_vlandia_9']"/>
    <xsl:template match="Faction[@id='clan_vlandia_10']"/>
    <xsl:template match="Faction[@id='clan_vlandia_11']"/>
</xsl:stylesheet>