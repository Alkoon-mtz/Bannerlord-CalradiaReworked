<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match='CraftingPiece[@id="spear_blade_16"]/BladeData/@stack_amount'> <xsl:attribute name='stack_amount'>10</xsl:attribute> </xsl:template>
    <xsl:template match='CraftingPiece[@id="spear_blade_10"]/BladeData/@stack_amount'> <xsl:attribute name='stack_amount'>10</xsl:attribute> </xsl:template>
    <xsl:template match='CraftingPiece[@id="spear_blade_27"]/BladeData/@stack_amount'> <xsl:attribute name='stack_amount'>10</xsl:attribute> </xsl:template>
    <xsl:template match='CraftingPiece[@id="spear_blade_19"]/BladeData/@stack_amount'> <xsl:attribute name='stack_amount'>10</xsl:attribute> </xsl:template>
    <xsl:template match='CraftingPiece[@id="spear_blade_42"]/BladeData/@stack_amount'> <xsl:attribute name='stack_amount'>10</xsl:attribute> </xsl:template>

    <xsl:template match='CraftingPiece[@id="axe_craft_4_head"]/BladeData/Swing/@damage_factor'> <xsl:attribute name='damage_factor'>4.25</xsl:attribute> </xsl:template>
</xsl:stylesheet>