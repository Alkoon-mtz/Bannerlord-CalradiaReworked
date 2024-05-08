<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- Aserai -->
    <!-- <xsl:template match="NPCCharacter[@id='lord_3_1']"/> -->
    <!-- <xsl:template match="NPCCharacter[@id='lord_3_2']"/> -->
    <!-- <xsl:template match="NPCCharacter[@id='dead_lord_3_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_7']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_10']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_13']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_13_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_13_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_8']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_11']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_3_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_4']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_5']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_51']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_12']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_20']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_20_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_20_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_6']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_9']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_14']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_14_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_15']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_15_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_15_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_16']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_16_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_17']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_17_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_17_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_21']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_21_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_18']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_18_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_18_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_18_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_18_4']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_19']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_19_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_19_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_19_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_23']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_23_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_22']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_22_1']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_22_2']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_22_3']"/>
    <xsl:template match="NPCCharacter[@id='lord_3_22_4']"/>
    <xsl:template match="NPCCharacter[@id='lord_A9_l']"/>
    <xsl:template match="NPCCharacter[@id='lord_A9_s']"/>
    <xsl:template match="NPCCharacter[@id='lord_A9_c']"/>
    <xsl:template match="NPCCharacter[@id='lord_A9_u']"/> -->
    
    <!-- Battania -->
    <!-- <xsl:template match="Hero[@id='lord_5_1']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_5_3_1']"/>
    <xsl:template match="Hero[@id='lord_5_4']"/>
    <xsl:template match="Hero[@id='lord_5_5']"/>
    <xsl:template match="Hero[@id='lord_5_6']"/>
    <xsl:template match="Hero[@id='lord_5_19']"/>
    <xsl:template match="Hero[@id='lord_5_14']"/>
    <xsl:template match="Hero[@id='lord_5_14_1']"/>
    <xsl:template match="Hero[@id='lord_5_22']"/>
    <xsl:template match="Hero[@id='lord_5_16']"/>
    <xsl:template match="Hero[@id='lord_5_16_1']"/>
    <xsl:template match="Hero[@id='lord_5_17']"/>
    <xsl:template match="Hero[@id='lord_5_17_1']"/>
    <xsl:template match="Hero[@id='lord_B8_l']"/>
    <xsl:template match="Hero[@id='lord_5_1_1']"/>
    <xsl:template match="Hero[@id='lord_5_3']"/>
    <xsl:template match="Hero[@id='lord_5_3_2']"/>
    <xsl:template match="Hero[@id='lord_5_5_1']"/>
    <xsl:template match="Hero[@id='lord_5_7']"/>
    <xsl:template match="Hero[@id='lord_5_8']"/>
    <xsl:template match="Hero[@id='lord_5_9']"/>
    <xsl:template match="Hero[@id='lord_5_91']"/>
    <xsl:template match="Hero[@id='lord_5_10']"/>
    <xsl:template match="Hero[@id='lord_5_11']"/>
    <xsl:template match="Hero[@id='lord_5_12']"/>
    <xsl:template match="Hero[@id='lord_5_13']"/>
    <xsl:template match="Hero[@id='lord_5_13_1']"/>
    <xsl:template match="Hero[@id='lord_5_131']"/>
    <xsl:template match="Hero[@id='lord_5_15']"/>
    <xsl:template match="Hero[@id='lord_5_15_1']"/>
    <xsl:template match="Hero[@id='lord_5_15_2']"/>
    <xsl:template match="Hero[@id='lord_5_15_3']"/>
    <xsl:template match="Hero[@id='lord_5_16_2']"/>
    <xsl:template match="Hero[@id='lord_5_18']"/>
    <xsl:template match="Hero[@id='lord_5_18_1']"/>
    <xsl:template match="Hero[@id='lord_5_20']"/>
    <xsl:template match="Hero[@id='lord_5_21']"/>
    <xsl:template match="Hero[@id='lord_5_21_1']"/>
    <xsl:template match="Hero[@id='lord_5_21_2']"/>
    <xsl:template match="Hero[@id='lord_B8_s']"/>
    <xsl:template match="Hero[@id='lord_B8_c']"/> -->
    
    <!-- Empire North -->
    <!-- <xsl:template match="Hero[@id='lord_1_1']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_1_2']"/> -->
    <xsl:template match="Hero[@id='lord_1_41']"/>
    <xsl:template match="Hero[@id='lord_1_411']"/>
    <xsl:template match="Hero[@id='lord_1_31']"/>
    <xsl:template match="Hero[@id='lord_1_1_1']"/>
    <xsl:template match="Hero[@id='lord_1_1_2']"/>
    <xsl:template match="Hero[@id='lord_1_21']"/>
    <xsl:template match="Hero[@id='lord_1_3']"/>
    <xsl:template match="Hero[@id='lord_1_4']"/>
    <xsl:template match="Hero[@id='lord_1_22']"/>
    <xsl:template match="Hero[@id='lord_1_42']"/>
    <xsl:template match="Hero[@id='lord_1_32']"/>
    <xsl:template match="Hero[@id='lord_1_422']"/>
    <xsl:template match="Hero[@id='lord_1_1_3']"/>
    <xsl:template match="Hero[@id='lord_1_1_4']"/>
    <xsl:template match="Hero[@id='lord_1_1_5']"/>
    <xsl:template match="Hero[@id='lord_1_1_6']"/>
    <xsl:template match="Hero[@id='lord_1_5']"/>
    <xsl:template match="Hero[@id='lord_1_1_7']"/>
    <xsl:template match="Hero[@id='lord_1_1_8']"/>
    <xsl:template match="Hero[@id='lord_1_6']"/>
    <xsl:template match="Hero[@id='lord_1_33']"/>
    <xsl:template match="Hero[@id='lord_1_43']"/>
    <xsl:template match="Hero[@id='lord_1_1_9']"/>
    <xsl:template match="Hero[@id='lord_1_1_10']"/>
    <xsl:template match="Hero[@id='lord_1_1_11']"/>
    <xsl:template match="Hero[@id='lord_1_1_12']"/>
    <xsl:template match="Hero[@id='lord_1_1_13']"/>
    <xsl:template match="Hero[@id='lord_1_20']"/>
    <xsl:template match="Hero[@id='lord_1_64']"/>
    <xsl:template match="Hero[@id='lord_1_1_14']"/>
    <xsl:template match="Hero[@id='lord_1_1_17']"/>
    <xsl:template match="Hero[@id='lord_1_50']"/>
    <xsl:template match="Hero[@id='lord_1_66']"/>
    <xsl:template match="Hero[@id='lord_1_1_15']"/>
    <xsl:template match="Hero[@id='lord_1_1_16']"/>
    <xsl:template match="Hero[@id='lord_1_51']"/>
    <xsl:template match="Hero[@id='lord_1_67']"/>
    <xsl:template match="Hero[@id='lord_1_58']"/>
    <xsl:template match="Hero[@id='lord_1_70']"/>
    <xsl:template match="Hero[@id='lord_NE7_u']"/>
    <xsl:template match="Hero[@id='lord_NE8_l']"/>
    <xsl:template match="Hero[@id='lord_NE8_s']"/>
    <xsl:template match="Hero[@id='lord_NE8_c1']"/>
    <xsl:template match="Hero[@id='lord_NE8_c2']"/>
    <xsl:template match="Hero[@id='lord_1_56']"/>
    <xsl:template match="Hero[@id='lord_1_56_1']"/>
    <xsl:template match="Hero[@id='lord_NE9_l']"/>
    <xsl:template match="Hero[@id='lord_NE9_s']"/>
    <xsl:template match="Hero[@id='lord_NE9_d']"/>
    
    <!-- Empire South -->
    <!-- <xsl:template match="Hero[@id='lord_1_14']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_1_27']"/>
    <xsl:template match="Hero[@id='lord_1_27_1']"/>
    <xsl:template match="Hero[@id='lord_1_27_2']"/>
    <xsl:template match="Hero[@id='lord_1_27_3']"/>
    <xsl:template match="Hero[@id='lord_1_37']"/>
    <xsl:template match="Hero[@id='lord_1_47']"/>
    <xsl:template match="Hero[@id='lord_1_47_1']"/>
    <xsl:template match="Hero[@id='lord_1_47_2']"/>
    <xsl:template match="Hero[@id='lord_1_47_3']"/>
    <xsl:template match="Hero[@id='lord_1_15']"/>
    <xsl:template match="Hero[@id='lord_1_155']"/>
    <xsl:template match="Hero[@id='lord_1_16']"/>
    <xsl:template match="Hero[@id='lord_1_28']"/>
    <xsl:template match="Hero[@id='lord_1_38']"/>
    <xsl:template match="Hero[@id='lord_1_48']"/>
    <xsl:template match="Hero[@id='lord_1_48_1']"/>
    <xsl:template match="Hero[@id='lord_1_48_2']"/>
    <xsl:template match="Hero[@id='lord_1_48_3']"/>
    <xsl:template match="Hero[@id='lord_1_177']"/>
    <xsl:template match="Hero[@id='lord_1_29']"/>
    <xsl:template match="Hero[@id='lord_1_17']"/>
    <xsl:template match="Hero[@id='lord_1_18']"/>
    <xsl:template match="Hero[@id='lord_1_39']"/>
    <xsl:template match="Hero[@id='lord_1_30']"/>
    <xsl:template match="Hero[@id='lord_1_30_1']"/>
    <xsl:template match="Hero[@id='lord_1_49']"/>
    <xsl:template match="Hero[@id='lord_1_49_1']"/>
    <xsl:template match="Hero[@id='lord_1_49_2']"/>
    <xsl:template match="Hero[@id='lord_1_30_2']"/>
    <xsl:template match="Hero[@id='lord_1_30_3']"/>
    <xsl:template match="Hero[@id='lord_1_56_2']"/>
    <xsl:template match="Hero[@id='lord_1_63_2']"/>
    <xsl:template match="Hero[@id='lord_1_63_3']"/>
    <xsl:template match="Hero[@id='lord_1_63']"/>
    <xsl:template match="Hero[@id='lord_1_63_1']"/>
    <xsl:template match="Hero[@id='lord_1_74']"/>
    <xsl:template match="Hero[@id='lord_1_74_1']"/>
    <xsl:template match="Hero[@id='lord_1_54']"/>
    <xsl:template match="Hero[@id='lord_1_54_1']"/>
    <xsl:template match="Hero[@id='lord_1_68']"/>
    <xsl:template match="Hero[@id='lord_1_68_1']"/>
    <xsl:template match="Hero[@id='lord_1_69_2']"/>
    <xsl:template match="Hero[@id='lord_1_69']"/>
    <xsl:template match="Hero[@id='lord_1_69_1']"/>
    <xsl:template match="Hero[@id='lord_1_55']"/>
    <xsl:template match="Hero[@id='lord_1_55_1']"/>
    <xsl:template match="Hero[@id='lord_1_72']"/>
    <xsl:template match="Hero[@id='lord_1_72_1']"/>
    <xsl:template match="Hero[@id='lord_SE8_c']"/>
    <xsl:template match="Hero[@id='lord_SE9_l']"/>
    <xsl:template match="Hero[@id='lord_SE9_s']"/>
    <xsl:template match="Hero[@id='lord_SE9_c1']"/>
    <xsl:template match="Hero[@id='lord_SE9_c2']"/> -->
    
    <!-- Empire West -->
    <!-- <xsl:template match="Hero[@id='lord_1_7']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_1_8']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_1_75']"/>
    <xsl:template match="Hero[@id='lord_1_34']"/>
    <xsl:template match="Hero[@id='lord_1_24']"/>
    <xsl:template match="Hero[@id='lord_1_44']"/>
    <xsl:template match="Hero[@id='lord_1_9']"/>
    <xsl:template match="Hero[@id='lord_1_10']"/>
    <xsl:template match="Hero[@id='lord_1_35']"/>
    <xsl:template match="Hero[@id='lord_1_25']"/>
    <xsl:template match="Hero[@id='lord_1_23']"/>
    <xsl:template match="Hero[@id='lord_1_11']"/>
    <xsl:template match="Hero[@id='lord_1_111']"/>
    <xsl:template match="Hero[@id='lord_1_12']"/>
    <xsl:template match="Hero[@id='lord_1_36']"/>
    <xsl:template match="Hero[@id='lord_1_26']"/>
    <xsl:template match="Hero[@id='lord_1_40']"/>
    <xsl:template match="Hero[@id='lord_1_40_1']"/>
    <xsl:template match="Hero[@id='lord_1_46']"/>
    <xsl:template match="Hero[@id='lord_1_46_1']"/>
    <xsl:template match="Hero[@id='lord_1_45']"/>
    <xsl:template match="Hero[@id='lord_1_45_1']"/>
    <xsl:template match="Hero[@id='lord_1_45_2']"/>
    <xsl:template match="Hero[@id='lord_1_45_3']"/>
    <xsl:template match="Hero[@id='lord_1_57']"/>
    <xsl:template match="Hero[@id='lord_1_57_1']"/>
    <xsl:template match="Hero[@id='lord_1_57_2']"/>
    <xsl:template match="Hero[@id='lord_1_52']"/>
    <xsl:template match="Hero[@id='lord_1_52_1']"/>
    <xsl:template match="Hero[@id='lord_1_52_2']"/>
    <xsl:template match="Hero[@id='lord_1_62']"/>
    <xsl:template match="Hero[@id='lord_1_62_1']"/>
    <xsl:template match="Hero[@id='lord_1_53']"/>
    <xsl:template match="Hero[@id='lord_1_73']"/>
    <xsl:template match="Hero[@id='lord_1_73_1']"/>
    <xsl:template match="Hero[@id='lord_1_71']"/>
    <xsl:template match="Hero[@id='lord_WE8_c']"/>
    <xsl:template match="Hero[@id='lord_WE8_u']"/>
    <xsl:template match="Hero[@id='lord_WE9_l']"/>
    <xsl:template match="Hero[@id='lord_WE9_u']"/>
    <xsl:template match="Hero[@id='lord_WE9_u2']"/> -->
    
    <!-- Khuzait -->
    <!-- <xsl:template match="Hero[@id='lord_6_1']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_6_2']"/> -->
    <!-- <xsl:template match="Hero[@id='dead_lord_6_1']"/>
    <xsl:template match="Hero[@id='lord_6_7']"/>
    <xsl:template match="Hero[@id='lord_6_10']"/>
    <xsl:template match="Hero[@id='lord_6_101']"/>
    <xsl:template match="Hero[@id='lord_6_13']"/>
    <xsl:template match="Hero[@id='dead_lord_6_2']"/>
    <xsl:template match="Hero[@id='lord_6_3']"/>
    <xsl:template match="Hero[@id='lord_6_4']"/>
    <xsl:template match="Hero[@id='lord_6_8']"/>
    <xsl:template match="Hero[@id='lord_6_81']"/>
    <xsl:template match="Hero[@id='lord_6_11']"/>
    <xsl:template match="Hero[@id='dead_lord_6_3']"/>
    <xsl:template match="Hero[@id='dead_lord_6_4']"/>
    <xsl:template match="Hero[@id='lord_6_5']"/>
    <xsl:template match="Hero[@id='lord_6_51']"/>
    <xsl:template match="Hero[@id='lord_6_9']"/>
    <xsl:template match="Hero[@id='lord_6_12']"/>
    <xsl:template match="Hero[@id='lord_6_15']"/>
    <xsl:template match="Hero[@id='lord_6_15_1']"/>
    <xsl:template match="Hero[@id='lord_6_15_2']"/>
    <xsl:template match="Hero[@id='lord_6_6']"/>
    <xsl:template match="Hero[@id='lord_6_16']"/>
    <xsl:template match="Hero[@id='lord_6_16_1']"/>
    <xsl:template match="Hero[@id='lord_6_16_2']"/>
    <xsl:template match="Hero[@id='lord_6_24']"/>
    <xsl:template match="Hero[@id='lord_6_17']"/>
    <xsl:template match="Hero[@id='lord_6_17_1']"/>
    <xsl:template match="Hero[@id='lord_6_17_2']"/>
    <xsl:template match="Hero[@id='lord_6_21']"/>
    <xsl:template match="Hero[@id='lord_6_21_1']"/>
    <xsl:template match="Hero[@id='lord_6_18']"/>
    <xsl:template match="Hero[@id='lord_6_18_1']"/>
    <xsl:template match="Hero[@id='lord_6_18_2']"/>
    <xsl:template match="Hero[@id='lord_6_22']"/>
    <xsl:template match="Hero[@id='lord_6_22_1']"/>
    <xsl:template match="Hero[@id='lord_6_19']"/>
    <xsl:template match="Hero[@id='lord_6_19_1']"/>
    <xsl:template match="Hero[@id='lord_6_19_2']"/>
    <xsl:template match="Hero[@id='lord_6_23']"/>
    <xsl:template match="Hero[@id='lord_6_20']"/>
    <xsl:template match="Hero[@id='lord_6_20_1']"/>
    <xsl:template match="Hero[@id='lord_K8_u']"/>
    <xsl:template match="Hero[@id='lord_K9_l']"/>
    <xsl:template match="Hero[@id='lord_K9_s']"/>
    <xsl:template match="Hero[@id='lord_K9_c1']"/>
    <xsl:template match="Hero[@id='lord_K9_c2']"/> -->
    
    <!-- Stugia -->
    <!-- <xsl:template match="Hero[@id='lord_2_1']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_2_2']"/> -->
    <!-- <xsl:template match="Hero[@id='dead_lord_2_1']"/>
    <xsl:template match="Hero[@id='dead_lord_2_2']"/>
    <xsl:template match="Hero[@id='lord_2_13_1']"/>
    <xsl:template match="Hero[@id='lord_2_13_2']"/>
    <xsl:template match="Hero[@id='lord_2_13_3']"/>
    <xsl:template match="Hero[@id='lord_2_13_4']"/>
    <xsl:template match="Hero[@id='lord_2_7']"/>
    <xsl:template match="Hero[@id='lord_2_7_1']"/>
    <xsl:template match="Hero[@id='lord_2_10']"/>
    <xsl:template match="Hero[@id='lord_2_13']"/>
    <xsl:template match="Hero[@id='lord_2_3']"/>
    <xsl:template match="Hero[@id='lord_2_4']"/>
    <xsl:template match="Hero[@id='lord_2_4_1']"/>
    <xsl:template match="Hero[@id='lord_2_8']"/>
    <xsl:template match="Hero[@id='lord_2_11']"/>
    <xsl:template match="Hero[@id='lord_2_111']"/>
    <xsl:template match="Hero[@id='lord_2_5']"/>
    <xsl:template match="Hero[@id='lord_2_6']"/>
    <xsl:template match="Hero[@id='lord_2_9']"/>
    <xsl:template match="Hero[@id='lord_2_12']"/>
    <xsl:template match="Hero[@id='lord_2_14']"/>
    <xsl:template match="Hero[@id='lord_2_121']"/>
    <xsl:template match="Hero[@id='lord_2_14_1']"/>
    <xsl:template match="Hero[@id='lord_2_14_2']"/>
    <xsl:template match="Hero[@id='lord_2_14_3']"/>
    <xsl:template match="Hero[@id='lord_2_16']"/>
    <xsl:template match="Hero[@id='lord_2_16_1']"/>
    <xsl:template match="Hero[@id='lord_2_21']"/>
    <xsl:template match="Hero[@id='lord_2_21_1']"/>
    <xsl:template match="Hero[@id='lord_2_17']"/>
    <xsl:template match="Hero[@id='lord_2_17_1']"/>
    <xsl:template match="Hero[@id='lord_2_22']"/>
    <xsl:template match="Hero[@id='lord_2_22_1']"/>
    <xsl:template match="Hero[@id='lord_2_24']"/>
    <xsl:template match="Hero[@id='lord_2_24_1']"/>
    <xsl:template match="Hero[@id='lord_2_18']"/>
    <xsl:template match="Hero[@id='lord_2_18_1']"/>
    <xsl:template match="Hero[@id='lord_2_23']"/>
    <xsl:template match="Hero[@id='lord_2_23_1']"/>
    <xsl:template match="Hero[@id='lord_2_15']"/>
    <xsl:template match="Hero[@id='lord_2_15_1']"/>
    <xsl:template match="Hero[@id='lord_2_15_2']"/>
    <xsl:template match="Hero[@id='lord_2_15_3']"/>
    <xsl:template match="Hero[@id='lord_2_15_4']"/>
    <xsl:template match="Hero[@id='lord_2_19']"/>
    <xsl:template match="Hero[@id='lord_2_19_1']"/>
    <xsl:template match="Hero[@id='lord_2_20']"/>
    <xsl:template match="Hero[@id='lord_2_20_1']"/>
    <xsl:template match="Hero[@id='lord_S8_u']"/>
    <xsl:template match="Hero[@id='lord_S9_l']"/>
    <xsl:template match="Hero[@id='lord_S9_m']"/>
    <xsl:template match="Hero[@id='lord_S9_c']"/>
    <xsl:template match="Hero[@id='lord_S9_u']"/> -->
    
    <!-- Vlandia -->
    <!-- <xsl:template match="Hero[@id='lord_4_1']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_4_2']"/> -->
    <!-- <xsl:template match="Hero[@id='lord_4_7']"/>
    <xsl:template match="Hero[@id='lord_4_10']"/>
    <xsl:template match="Hero[@id='lord_4_13']"/>
    <xsl:template match="Hero[@id='lord_4_14']"/>
    <xsl:template match="Hero[@id='lord_4_141']"/>
    <xsl:template match="Hero[@id='lord_4_15']"/>
    <xsl:template match="Hero[@id='lord_4_3']"/>
    <xsl:template match="Hero[@id='lord_4_3_1']"/>
    <xsl:template match="Hero[@id='lord_4_4']"/>
    <xsl:template match="Hero[@id='lord_4_8']"/>
    <xsl:template match="Hero[@id='lord_4_11']"/>
    <xsl:template match="Hero[@id='lord_4_6']"/>
    <xsl:template match="Hero[@id='lord_4_6_1']"/>
    <xsl:template match="Hero[@id='lord_4_5']"/>
    <xsl:template match="Hero[@id='lord_4_9']"/>
    <xsl:template match="Hero[@id='lord_4_12']"/>
    <xsl:template match="Hero[@id='lord_4_121']"/>
    <xsl:template match="Hero[@id='lord_4_16']"/>
    <xsl:template match="Hero[@id='lord_4_16_1']"/>
    <xsl:template match="Hero[@id='lord_4_17']"/>
    <xsl:template match="Hero[@id='lord_4_18']"/>
    <xsl:template match="Hero[@id='lord_4_181']"/>
    <xsl:template match="Hero[@id='lord_4_19']"/>
    <xsl:template match="Hero[@id='lord_4_25']"/>
    <xsl:template match="Hero[@id='lord_4_25_1']"/>
    <xsl:template match="Hero[@id='lord_4_21']"/>
    <xsl:template match="Hero[@id='lord_4_20']"/>
    <xsl:template match="Hero[@id='lord_4_20_1']"/>
    <xsl:template match="Hero[@id='lord_4_22']"/>
    <xsl:template match="Hero[@id='lord_4_22_1']"/>
    <xsl:template match="Hero[@id='lord_4_23']"/>
    <xsl:template match="Hero[@id='lord_4_23_1']"/>
    <xsl:template match="Hero[@id='lord_4_23_2']"/>
    <xsl:template match="Hero[@id='lord_4_23_3']"/>
    <xsl:template match="Hero[@id='lord_4_24']"/>
    <xsl:template match="Hero[@id='lord_4_24_1']"/>
    <xsl:template match="Hero[@id='lord_4_24_2']"/>
    <xsl:template match="Hero[@id='lord_4_24_3']"/>
    <xsl:template match="Hero[@id='lord_4_24_4']"/>
    <xsl:template match="Hero[@id='lord_4_26']"/>
    <xsl:template match="Hero[@id='lord_4_26_1']"/>
    <xsl:template match="Hero[@id='lord_4_27']"/>
    <xsl:template match="Hero[@id='lord_4_27_1']"/>
    <xsl:template match="Hero[@id='lord_V9_u']"/>
    <xsl:template match="Hero[@id='lord_4_28']"/>
    <xsl:template match="Hero[@id='lord_4_28_1']"/>
    <xsl:template match="Hero[@id='lord_4_28_2']"/>
    <xsl:template match="Hero[@id='lord_V11_l']"/>
    <xsl:template match="Hero[@id='lord_V11_u']"/>
    <xsl:template match="Hero[@id='lord_V11_c1']"/>
    <xsl:template match="Hero[@id='lord_V11_c2']"/> -->
</xsl:stylesheet>