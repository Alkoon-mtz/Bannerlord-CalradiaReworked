<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
<!-- Scarhok -->
    <!-- Colors and Banner -->
    <xsl:template match="Kingdom[@id='vlandia']/@banner_key"> <xsl:attribute name="banner_key">11.142.116.1536.1536.764.764.1.0.0.140.116.142.300.300.939.764.1.1.0.140.116.142.300.300.764.764.1.1.0.140.116.142.300.300.589.764.1.1.0</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@primary_banner_color"> <xsl:attribute name="primary_banner_color">0xff830000</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@secondary_banner_color"> <xsl:attribute name="secondary_banner_color">0xff0D0D0D</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@label_color"> <xsl:attribute name="label_color">FF830000</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@color"> <xsl:attribute name="color">FF830000</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@color2"> <xsl:attribute name="color2">FF0D0D0D</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@alternative_color"> <xsl:attribute name="alternative_color">FF0D0D0D</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@alternative_color2"> <xsl:attribute name="alternative_color2">FF830000</xsl:attribute> </xsl:template>
    <!-- Name -->
    <xsl:template match="Kingdom[@id='vlandia']/@name"> <xsl:attribute name="name">Chiefdom of Scarhok</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@short_name"> <xsl:attribute name="short_name">Scarhokar</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@title"> <xsl:attribute name="title">Chiefdom of Scarhok</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@text"> <xsl:attribute name="text">Coming from the north west, they wrecked everyone by throwing axes</xsl:attribute> </xsl:template>
</xsl:stylesheet>