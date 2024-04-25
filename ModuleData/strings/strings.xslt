<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
<!-- Scarhok -->
    <xsl:template match="string[@id='str_adjective_for_culture.vlandia']/@text"> <xsl:attribute name="text">Scarhokar</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_rich_name.vlandia']/@text"> <xsl:attribute name="text">Scarhokars</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_name_with_title.vlandia']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Chieftess{?}Chief{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_noble_name_with_title.vlandia']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Gwrin{?}Gwrag{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.vlandia']/@text"> <xsl:attribute name="text">Gwrag</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.vlandia_f']/@text"> <xsl:attribute name="text">Gwrin</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.vlandia']/@text"> <xsl:attribute name="text">Chief</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.vlandia_f']/@text"> <xsl:attribute name="text">Chieftess</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_term_in_speech.vlandia']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Chieftess{?}Chief{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_neutral_term_for_culture.vlandia']/@text"> <xsl:attribute name="text">Scarhokars</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_adjective_for_faction.vlandia']/@text"> <xsl:attribute name="text">Scarhokars</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_short_term_for_faction.vlandia']/@text"> <xsl:attribute name="text">Scarhokars</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_formal_name_for_culture.vlandia']/@text"> <xsl:attribute name="text">Chiefdom of Scarhok</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_informal_name_for_culture.vlandia']/@text"> <xsl:attribute name="text">Scarhokars</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_description.vlandia']/@text"> <xsl:attribute name="text">Coming from the north west, they wrecked everyone by throwing axes</xsl:attribute> </xsl:template>
</xsl:stylesheet>