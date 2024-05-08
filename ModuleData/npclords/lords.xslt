<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- Aserai -->
    <!-- Battania -->
    
    <!-- Empire North -->
    <!-- <xsl:template match="NPCCharacter[@id='lord_1_1']"/> -->
    <!-- <xsl:template match="NPCCharacter[@id='lord_1_2']"/> -->
    <xsl:template match="NPCCharacter[@id='lord_1_41']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_411']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_31']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_21']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_4']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_22']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_42']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_32']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_422']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_4']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_5']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_6']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_5']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_7']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_8']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_6']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_33']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_43']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_9']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_10']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_11']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_12']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_13']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_20']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_64']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_14']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_17']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_50']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_66']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_15']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_1_16']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_51']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_67']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_58']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_70']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE7_u']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE8_l']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE8_s']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE8_c1']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE8_c2']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_56']"/>
    <xsl:template match="NPCCharacter[@id='lord_1_56_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE9_l']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE9_s']"/>
    <xsl:template match="NPCCharacter[@id='lord_NE9_d']"/>
    
    <!-- Empire South -->
    <!-- Empire West -->
    <!-- Khuzait -->
    <!-- Stugia -->
    
    <!-- Vlandia -->
    <!-- <xsl:template match="NPCCharacter[@id='lord_4_1']"/> -->
    <!-- <xsl:template match="NPCCharacter[@id='lord_4_2']"/> -->
    <xsl:template match="NPCCharacter[@id='lord_4_7']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_10']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_13']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_14']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_141']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_15']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_3_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_4']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_8']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_11']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_6']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_6_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_5']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_9']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_12']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_121']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_16']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_16_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_17']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_18']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_181']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_19']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_25']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_25_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_21']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_20']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_20_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_22']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_22_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_23']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_23_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_23_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_23_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_24']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_24_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_24_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_24_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_24_4']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_26']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_26_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_27']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_27_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_V9_u']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_28']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_28_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_4_28_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_V11_l']"/>    
    <xsl:template match="NPCCharacter[@id='lord_V11_u']"/>
    <xsl:template match="NPCCharacter[@id='lord_V11_c1']"/>
    <xsl:template match="NPCCharacter[@id='lord_V11_c2']"/>
</xsl:stylesheet>