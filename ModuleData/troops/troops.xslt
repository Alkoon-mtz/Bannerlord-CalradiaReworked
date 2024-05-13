<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- <xsl:template match="NPCCharacter[@id='aserai_militia_spearman']"/>
    <xsl:template match="NPCCharacter[@id='aserai_militia_archer']"/>
    <xsl:template match="NPCCharacter[@id='aserai_militia_veteran_spearman']"/>
    <xsl:template match="NPCCharacter[@id='aserai_militia_veteran_archer']"/> -->

    <xsl:template match="NPCCharacter[@id='battanian_militia_spearman']"/>
    <xsl:template match="NPCCharacter[@id='battanian_militia_archer']"/>
    <xsl:template match="NPCCharacter[@id='battanian_militia_veteran_spearman']"/>
    <xsl:template match="NPCCharacter[@id='battanian_militia_veteran_archer']"/>

    <xsl:template match="NPCCharacter[@id='imperial_militia_spearman']"/>
    <xsl:template match="NPCCharacter[@id='imperial_militia_archer']"/>
    <xsl:template match="NPCCharacter[@id='imperial_militia_veteran_spearman']"/>
    <xsl:template match="NPCCharacter[@id='imperial_militia_veteran_archer']"/>

    <xsl:template match="NPCCharacter[@id='khuzait_militia_spearman']"/>
    <xsl:template match="NPCCharacter[@id='khuzait_militia_archer']"/>
    <xsl:template match="NPCCharacter[@id='khuzait_militia_veteran_spearman']"/>
    <xsl:template match="NPCCharacter[@id='khuzait_militia_veteran_archer']"/>

    <!-- <xsl:template match="NPCCharacter[@id='sturgian_militia_spearman']"/>
    <xsl:template match="NPCCharacter[@id='sturgian_militia_archer']"/>
    <xsl:template match="NPCCharacter[@id='sturgian_militia_veteran_spearman']"/>
    <xsl:template match="NPCCharacter[@id='sturgian_militia_veteran_archer']"/> -->

    <xsl:template match="NPCCharacter[@id='vlandian_militia_spearman']"/>
    <xsl:template match="NPCCharacter[@id='vlandian_militia_archer']"/>
    <xsl:template match="NPCCharacter[@id='vlandian_militia_veteran_spearman']"/>
    <xsl:template match="NPCCharacter[@id='vlandian_militia_veteran_archer']"/>

</xsl:stylesheet>