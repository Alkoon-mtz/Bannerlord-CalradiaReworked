<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='ThrowingAxe']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="axe_craft_26_head" />
            <UsablePiece piece_id="normand_axe_craft_01_head"/>
            <UsablePiece piece_id="normand_axe_craft_01_handle"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='OneHandedAxe']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="normand_axe_craft_01_head"/>
            <UsablePiece piece_id="normand_axe_craft_01_handle"/>
        </xsl:copy>
    </xsl:template>

    <!-- <xsl:template match="//CraftingTemplate[@id='ThrowingAxe']//UsablePiece[not(following-sibling::UsablePiece)]">
        <xsl:copy-of select="."/>
        <UsablePiece piece_id="normand_axe_craft_01_head"/>
        <UsablePiece piece_id="normand_axe_craft_01_handle"/>
        <UsablePiece piece_id="imperial_axe_t3"/>
    </xsl:template> -->
</xsl:stylesheet>