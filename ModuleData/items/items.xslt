<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Iustrium -->
    <xsl:template match="Item[@id='AR_monk_robe_a']/@culture"><xsl:attribute name='culture'>Culture.iustrium</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_a']/ItemComponent/Armor/@body_armor"><xsl:attribute name='body_armor'>25</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_a']/ItemComponent/Armor/@leg_armor"><xsl:attribute name='leg_armor'>10</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_a']/ItemComponent/Armor/@arm_armor"><xsl:attribute name='arm_armor'>10</xsl:attribute></xsl:template>

    <xsl:template match="Item[@id='AR_monk_robe_c2']/@culture"><xsl:attribute name='culture'>Culture.iustrium</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_c2']/ItemComponent/Armor/@body_armor"><xsl:attribute name='body_armor'>30</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_c2']/ItemComponent/Armor/@leg_armor"><xsl:attribute name='leg_armor'>13</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_c2']/ItemComponent/Armor/@arm_armor"><xsl:attribute name='arm_armor'>13</xsl:attribute></xsl:template>

    <xsl:template match="Item[@id='AR_monk_robe_c']/@culture"><xsl:attribute name='culture'>Culture.iustrium</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_c']/ItemComponent/Armor/@body_armor"><xsl:attribute name='body_armor'>35</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_c']/ItemComponent/Armor/@leg_armor"><xsl:attribute name='leg_armor'>16</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='AR_monk_robe_c']/ItemComponent/Armor/@arm_armor"><xsl:attribute name='arm_armor'>16</xsl:attribute></xsl:template>

    <xsl:template match="Item[@id='TV_monk_robe_d']/@culture"><xsl:attribute name='culture'>Culture.iustrium</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='TV_monk_robe_d']/ItemComponent/Armor/@body_armor"><xsl:attribute name='body_armor'>45</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='TV_monk_robe_d']/ItemComponent/Armor/@leg_armor"><xsl:attribute name='leg_armor'>20</xsl:attribute></xsl:template>
    <xsl:template match="Item[@id='TV_monk_robe_d']/ItemComponent/Armor/@arm_armor"><xsl:attribute name='arm_armor'>20</xsl:attribute></xsl:template>
</xsl:stylesheet>