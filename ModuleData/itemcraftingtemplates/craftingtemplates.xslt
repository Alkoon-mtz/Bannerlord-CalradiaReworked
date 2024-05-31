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
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t2_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t3_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t4_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t5_head"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='OneHandedAxe']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="scarhok_axe_craft_8_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t2_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t3_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t4_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t5_head"/>
            <UsablePiece piece_id="scarhok_axe_craft_t3_head"/>
            <UsablePiece piece_id="scarhok_axe_craft_t4_head"/>
            <UsablePiece piece_id="scarhok_axe_craft_t5_head"/>
            <UsablePiece piece_id="scarhok_axe_craft_t6_head"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='TwoHandedAxe']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t2_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t3_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t4_head"/>
            <UsablePiece piece_id="scarhok_throwing_axe_craft_t5_head"/>
            <UsablePiece piece_id="aseriyun_axe_head_t3"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='TwoHandedSword']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="rekgeist_blade_elite_t5"/>
            <UsablePiece piece_id="rekgeist_blade_elite_t4"/>
            <UsablePiece piece_id="monghatai_blade_t5"/>
            <UsablePiece piece_id="monghatai_blade_t4"/>
            <UsablePiece piece_id="monghatai_blade_t3"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="CraftingTemplate[@id='TwoHandedPolearm']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="rekgeist_blade_pike_t5"/>
            <UsablePiece piece_id="rekgeist_blade_pike_t4"/>
            <UsablePiece piece_id="rekgeist_blade_pike_t3"/>
            <UsablePiece piece_id="kratorios_spear_blade_t5"/>
            <UsablePiece piece_id="kratorios_spear_blade_t4"/>
            <UsablePiece piece_id="kratorios_spear_blade_t3"/>
            <UsablePiece piece_id="guandao_blade_t6"/>
            <UsablePiece piece_id="guandao_blade_t4"/>
            <UsablePiece piece_id="halberd_head_t3" />
        </xsl:copy>
    </xsl:template>
    <xsl:template match="CraftingTemplate[@id='Pike']/UsablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <UsablePiece piece_id="rekgeist_blade_pike_t5"/>
            <UsablePiece piece_id="rekgeist_blade_pike_t4"/>
            <UsablePiece piece_id="rekgeist_blade_pike_t3"/>
            <UsablePiece piece_id="kratorios_spear_blade_t5"/>
            <UsablePiece piece_id="kratorios_spear_blade_t4"/>
            <UsablePiece piece_id="kratorios_spear_blade_t3"/>
            <UsablePiece piece_id="halberd_head_t3" />
            <UsablePiece piece_id="spear_handle_16" />
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>