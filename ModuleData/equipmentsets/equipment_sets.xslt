<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- <xsl:template match="EquipmentRoster[@id='vla_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='vla_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='vla_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='vla_bat_template_lady']"/>
    <xsl:template match="EquipmentRoster[@id='vla_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='vla_king_template_bat_f']"/> -->

</xsl:stylesheet>