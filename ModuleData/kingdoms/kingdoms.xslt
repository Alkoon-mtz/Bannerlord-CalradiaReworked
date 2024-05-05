<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Cleaning -->
    <!-- <xsl:template match="Kingdom[@id='empire']"/> -->

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
    <xsl:template match="Kingdom[@id='battania']/@name"> <xsl:attribute name="name">Cereann Union</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@short_name"> <xsl:attribute name="short_name">Cereann</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@title"> <xsl:attribute name="title">Cereann Union</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='battania']/@text"> <xsl:attribute name="text">Trying to survive in their woods</xsl:attribute> </xsl:template>

    <!-- Kratorios -->
    <!-- Colors and Banner -->
    <xsl:template match="Kingdom[@id='empire_s']/@banner_key"> <xsl:attribute name="banner_key">11.4.4.4345.4345.764.764.1.0.0.423.9.9.600.600.764.764.0.0.0.106.9.9.400.400.764.764.0.0.0</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@primary_banner_color"> <xsl:attribute name="primary_banner_color">0xff382188</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@secondary_banner_color"> <xsl:attribute name="secondary_banner_color">0xffFFAD54</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@label_color"> <xsl:attribute name="label_color">FF382188</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@color"> <xsl:attribute name="color">FF382188</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@color2"> <xsl:attribute name="color2">FFFFAD54</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@alternative_color"> <xsl:attribute name="alternative_color">FFFFAD54</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@alternative_color2"> <xsl:attribute name="alternative_color2">FF382188</xsl:attribute> </xsl:template>
    <!-- Name -->
    <xsl:template match="Kingdom[@id='empire_s']/@name"> <xsl:attribute name="name">Kratorios Empire</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@short_name"> <xsl:attribute name="short_name">Kratori</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@title"> <xsl:attribute name="title">Kratorios Empire</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='empire_s']/@text"> <xsl:attribute name="text">An emerging empire trying to unify the continent</xsl:attribute> </xsl:template>

    <!-- Monghatai -->
    <!-- Colors and Banner -->
    <xsl:template match="Kingdom[@id='khuzait']/@banner_key"> <xsl:attribute name="banner_key">11.37.14.4000.4000.764.764.0.0.0.461.14.14.500.500.764.764.1.0.0.504.14.14.100.100.1019.1099.0.0.0.504.14.14.100.100.934.1099.0.0.0.504.14.14.100.100.849.1099.0.0.0.504.14.14.100.100.764.1099.0.0.0.504.14.14.100.100.509.1099.0.0.0.504.14.14.100.100.594.1099.0.0.0.504.14.14.100.100.679.1099.0.0.0.504.14.14.100.100.1019.429.0.1.180.504.14.14.100.100.934.429.0.1.180.504.14.14.100.100.849.429.0.1.180.504.14.14.100.100.764.429.0.1.180.504.14.14.100.100.509.429.0.1.180.504.14.14.100.100.594.429.0.1.180.504.14.14.100.100.679.429.0.1.180</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@primary_banner_color"> <xsl:attribute name="primary_banner_color">0xffF5B365</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@secondary_banner_color"> <xsl:attribute name="secondary_banner_color">0xff8D291A</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@label_color"> <xsl:attribute name="label_color">FFF5B365</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@color"> <xsl:attribute name="color">FFF5B365</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@color2"> <xsl:attribute name="color2">FF8D291A</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@alternative_color"> <xsl:attribute name="alternative_color">FF8D291A</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@alternative_color2"> <xsl:attribute name="alternative_color2">FFF5B365</xsl:attribute> </xsl:template>
    <!-- Name -->
    <xsl:template match="Kingdom[@id='khuzait']/@name"> <xsl:attribute name="name">Monghatai Khanate</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@short_name"> <xsl:attribute name="short_name">Monghatais</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@title"> <xsl:attribute name="title">Monghatai Khanate</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='khuzait']/@text"> <xsl:attribute name="text">Nomadic tribes unified under a single leader</xsl:attribute> </xsl:template>

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
    <xsl:template match="Kingdom[@id='vlandia']/@name"> <xsl:attribute name="name">Scarhok Chiefdom</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@short_name"> <xsl:attribute name="short_name">Scarhokar</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@title"> <xsl:attribute name="title">Scarhok Chiefdom</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='vlandia']/@text"> <xsl:attribute name="text">Coming from the north west, they wrecked everyone by throwing axes</xsl:attribute> </xsl:template>

    <!-- Virkaldr -->
    <!-- Colors and Banner -->
    <xsl:template match="Kingdom[@id='sturgia']/@banner_key"> <xsl:attribute name="banner_key">11.16.72.4922.4922.764.764.1.0.0.514.72.16.300.300.764.834.0.1.180.506.72.16.150.150.914.734.0.1.0.506.72.16.150.150.844.664.0.1.0.506.72.16.150.150.614.734.0.1.0.506.72.16.150.150.684.664.0.1.0.506.72.16.150.150.764.634.0.1.0.504.72.16.25.100.684.564.0.1.0.504.72.16.25.100.614.634.0.1.0.504.72.16.25.100.764.534.0.1.0.504.72.16.25.100.844.564.0.1.0.504.72.16.25.100.914.634.0.1.0.500.72.16.625.625.764.749.0.1.180.434.72.16.300.400.399.754.0.0.0.434.72.16.300.400.1129.754.0.1.0</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@primary_banner_color"> <xsl:attribute name="primary_banner_color">0xff6BD5DC</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@secondary_banner_color"> <xsl:attribute name="secondary_banner_color">0xff00A0BA</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@label_color"> <xsl:attribute name="label_color">FF6BD5DC</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@color"> <xsl:attribute name="color">FF6BD5DC</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@color2"> <xsl:attribute name="color2">FF00A0BA</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@alternative_color"> <xsl:attribute name="alternative_color">FF00A0BA</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@alternative_color2"> <xsl:attribute name="alternative_color2">FF6BD5DC</xsl:attribute> </xsl:template>
    <!-- Name -->
    <xsl:template match="Kingdom[@id='sturgia']/@name"> <xsl:attribute name="name">Virkaldr Jarland</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@short_name"> <xsl:attribute name="short_name">Virkaldir</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@title"> <xsl:attribute name="title">Virkaldr Jarland</xsl:attribute> </xsl:template>
    <xsl:template match="Kingdom[@id='sturgia']/@text"> <xsl:attribute name="text">Living in the hard cold north, seeking for a thing called sun</xsl:attribute> </xsl:template>
</xsl:stylesheet>