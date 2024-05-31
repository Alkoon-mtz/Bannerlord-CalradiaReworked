<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="WeaponDescription[@id='ThrowingAxe']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="axe_craft_26_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t2_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t3_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t4_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t5_head" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="WeaponDescription[@id='OneHandedAxe']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="scarhok_axe_craft_8_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t2_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t3_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t4_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t5_head" />
            <AvailablePiece id="scarhok_axe_craft_t3_head" />
            <AvailablePiece id="scarhok_axe_craft_t4_head" />
            <AvailablePiece id="scarhok_axe_craft_t5_head" />
            <AvailablePiece id="scarhok_axe_craft_t6_head" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="WeaponDescription[@id='TwoHandedAxe']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="scarhok_throwing_axe_craft_t2_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t3_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t4_head" />
            <AvailablePiece id="scarhok_throwing_axe_craft_t5_head" />
            <AvailablePiece id="aseriyun_axe_head_t3" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="WeaponDescription[@id='TwoHandedSword']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="rekgeist_blade_elite_t5" />
            <AvailablePiece id="rekgeist_blade_elite_t4" />
            <AvailablePiece id="monghatai_blade_t5" />
            <AvailablePiece id="monghatai_blade_t4" />
            <AvailablePiece id="monghatai_blade_t3" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="WeaponDescription[@id='OneHandedPolearm']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="rekgeist_blade_pike_t5" />
            <AvailablePiece id="rekgeist_blade_pike_t4" />
            <AvailablePiece id="rekgeist_blade_pike_t3" />
            <AvailablePiece id="kratorios_spear_blade_t5" />
            <AvailablePiece id="kratorios_spear_blade_t4" />
            <AvailablePiece id="kratorios_spear_blade_t3" />
        </xsl:copy>
    </xsl:template>
    <xsl:template match="WeaponDescription[@id='TwoHandedPolearm']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="rekgeist_blade_pike_t5" />
            <AvailablePiece id="rekgeist_blade_pike_t4" />
            <AvailablePiece id="rekgeist_blade_pike_t3" />
            <AvailablePiece id="kratorios_spear_blade_t5" />
            <AvailablePiece id="kratorios_spear_blade_t4" />
            <AvailablePiece id="kratorios_spear_blade_t3" />
            <AvailablePiece id="guandao_blade_t6" />
            <AvailablePiece id="guandao_blade_t4" />
            <AvailablePiece id="halberd_head_t3" />
        </xsl:copy>
    </xsl:template>
    <xsl:template match="WeaponDescription[@id='TwoHandedPolearm_Couchable']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="rekgeist_blade_pike_t5" />
            <AvailablePiece id="rekgeist_blade_pike_t4" />
            <AvailablePiece id="rekgeist_blade_pike_t3" />
            <AvailablePiece id="kratorios_spear_blade_t5" />
            <AvailablePiece id="kratorios_spear_blade_t4" />
            <AvailablePiece id="kratorios_spear_blade_t3" />
            <AvailablePiece id="halberd_head_t3" />
        </xsl:copy>
    </xsl:template>
    <xsl:template match="WeaponDescription[@id='TwoHandedPolearm_Pike']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="rekgeist_blade_pike_t5" />
            <AvailablePiece id="rekgeist_blade_pike_t4" />
            <AvailablePiece id="rekgeist_blade_pike_t3" />
            <AvailablePiece id="kratorios_spear_blade_t5" />
            <AvailablePiece id="kratorios_spear_blade_t4" />
            <AvailablePiece id="kratorios_spear_blade_t3" />
            <AvailablePiece id="halberd_head_t3" />
        </xsl:copy>
    </xsl:template>
    <xsl:template match="WeaponDescription[@id='TwoHandedPolearm_Bracing']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="rekgeist_blade_pike_t5" />
            <AvailablePiece id="rekgeist_blade_pike_t4" />
            <AvailablePiece id="rekgeist_blade_pike_t3" />
            <AvailablePiece id="kratorios_spear_blade_t5" />
            <AvailablePiece id="kratorios_spear_blade_t4" />
            <AvailablePiece id="kratorios_spear_blade_t3" />
            <AvailablePiece id="halberd_head_t3" />
            <AvailablePiece id="spear_handle_16" />
        </xsl:copy>
    </xsl:template>


</xsl:stylesheet>
