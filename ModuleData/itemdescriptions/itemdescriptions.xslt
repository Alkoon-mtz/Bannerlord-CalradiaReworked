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
            <AvailablePiece id="normand_axe_craft_01_head" />
            <AvailablePiece id="normand_axe_craft_01_handle" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="WeaponDescription[@id='OneHandedAxe']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="normand_axe_craft_01_head" />
            <AvailablePiece id="normand_axe_craft_01_handle" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="WeaponDescription[@id='TwoHandedSword']/AvailablePieces">
        <xsl:copy>
            <xsl:apply-templates/>
            <AvailablePiece id="vlandian_blade_3_x2" />
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
