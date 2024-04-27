<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Cereann -->
    <!-- Colors and Banner -->
    <xsl:template match="Kingdom[@id='battania']/@banner_key"> <xsl:attribute name="banner_key">11.2.2.4345.4345.764.764.1.0.0.500.80.2.600.600.764.764.0.0.0.415.80.2.195.195.764.592.0.0.45.415.80.2.195.195.764.936.0.0.45.415.80.2.195.195.592.764.0.0.45.415.80.2.195.195.936.764.0.0.45.527.80.2.75.100.834.694.0.0.45.527.80.2.75.100.694.694.0.1.315.527.80.2.75.100.694.834.0.0.-135.527.80.2.75.100.834.834.0.1.135.510.80.2.150.75.689.594.0.0.90.510.80.2.150.75.839.594.0.0.90.510.80.2.150.75.934.689.0.0.0.510.80.2.150.75.934.839.0.0.0.510.80.2.150.75.839.934.0.0.90.510.80.2.150.75.689.934.0.0.90.510.80.2.150.75.594.839.0.0.0.510.80.2.150.75.594.689.0.0.0.413.80.2.150.150.764.764.0.0.50</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@primary_banner_color"> <xsl:attribute name="primary_banner_color">0xff284E19</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@secondary_banner_color"> <xsl:attribute name="secondary_banner_color">0xffD08E54</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@label_color"> <xsl:attribute name="label_color">FF284E19</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@color"> <xsl:attribute name="color">FF284E19</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@color2"> <xsl:attribute name="color2">FFD08E54</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@alternative_color"> <xsl:attribute name="alternative_color">FFD08E54</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@alternative_color2"> <xsl:attribute name="alternative_color2">FF284E19</xsl:attribute> </xsl:template>
    <!-- Name -->
    <xsl:template match="Kingdom[@id='battania']/@name"> <xsl:attribute name="name">Union of Cereann</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@short_name"> <xsl:attribute name="short_name">Cereann</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@title"> <xsl:attribute name="title">Union of Cereann</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@text"> <xsl:attribute name="text">Trying to survive in their woods</xsl:attribute> </xsl:template>

    <!-- Scarhok -->
    <!-- Colors and Banner -->
    <xsl:template match="Kingdom[@id='vlandia']/@banner_key"> <xsl:attribute name="banner_key">11.142.116.1536.1536.764.764.1.0.0.140.116.116.300.300.939.764.0.1.0.140.116.116.300.300.764.764.0.1.0.140.116.116.300.300.589.764.0.1.0</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@primary_banner_color"> <xsl:attribute name="primary_banner_color">0xff830808</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@secondary_banner_color"> <xsl:attribute name="secondary_banner_color">0xff0B0C11</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@label_color"> <xsl:attribute name="label_color">FF830808</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@color"> <xsl:attribute name="color">FF830808</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@color2"> <xsl:attribute name="color2">FF0B0C11</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@alternative_color"> <xsl:attribute name="alternative_color">FF0B0C11</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@alternative_color2"> <xsl:attribute name="alternative_color2">FF830808</xsl:attribute> </xsl:template>
    <!-- Name -->
    <xsl:template match="Kingdom[@id='vlandia']/@name"> <xsl:attribute name="name">Chiefdom of Scarhok</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@short_name"> <xsl:attribute name="short_name">Scarhokar</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@title"> <xsl:attribute name="title">Chiefdom of Scarhok</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@text"> <xsl:attribute name="text">Coming from the north west, they wrecked everyone by throwing axes</xsl:attribute> </xsl:template>
</xsl:stylesheet>