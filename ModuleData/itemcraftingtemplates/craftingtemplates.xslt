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
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t2_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t3_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t4_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t5_head"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='OneHandedAxe']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="Scarhok_axe_craft_8_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t2_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t3_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t4_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t5_head"/>
            <UsablePiece piece_id="Scarhok_axe_craft_t3_head"/>
            <UsablePiece piece_id="Scarhok_axe_craft_t4_head"/>
            <UsablePiece piece_id="Scarhok_axe_craft_t5_head"/>
            <UsablePiece piece_id="Scarhok_axe_craft_t6_head"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='TwoHandedAxe']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t2_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t3_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t4_head"/>
            <UsablePiece piece_id="Scarhok_throwing_axe_craft_t5_head"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='TwoHandedSword']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="vlandian_blade_3_x2"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>