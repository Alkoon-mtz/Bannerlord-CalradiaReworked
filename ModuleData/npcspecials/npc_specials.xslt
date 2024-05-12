<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_3']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_4']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_5']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_6']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_7']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_8']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_9']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_10']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_11']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_12']"/>

</xsl:stylesheet>