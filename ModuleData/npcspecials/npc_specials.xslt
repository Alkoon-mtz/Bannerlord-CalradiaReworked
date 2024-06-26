<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_3']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_4']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_5']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_6']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_7']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_8']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_9']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_aserai_10']"/>

    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_3']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_4']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_5']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_6']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_7']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_8']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_battania_9']"/>

    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_3']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_4']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_5']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_6']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_7']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_8']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_9']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_10']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_empire_11']"/>

    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_3']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_4']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_5']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_6']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_7']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_8']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_9']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_khuzait_10']"/>

    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_3']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_4']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_5']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_6']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_7']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_8']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_sturgia_9']"/>

    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_3']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_4']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_5']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_6']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_7']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_8']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_9']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_10']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_11']"/>
    <xsl:template match="NPCCharacter[@id='spc_wanderer_vlandia_12']"/>

    <!-- Mercenary/Outlaw -->
    <xsl:template match="NPCCharacter[@id='spc_ghilman_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_ghilman_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_ghilman_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_ghilman_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_legion_of_the_betrayed_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_legion_of_the_betrayed_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_legion_of_the_betrayed_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_legion_of_the_betrayed_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_skolderbrotva_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_skolderbrotva_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_skolderbrotva_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_skolderbrotva_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_company_of_the_boar_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_company_of_the_boar_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_company_of_the_boar_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_company_of_the_boar_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_beni_zilal_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_beni_zilal_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_beni_zilal_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_beni_zilal_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_wolfskins_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_wolfskins_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_wolfskins_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_wolfskins_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_brotherhood_of_woods_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_brotherhood_of_woods_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_brotherhood_of_woods_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_brotherhood_of_woods_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_hidden_hand_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_hidden_hand_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_hidden_hand_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_hidden_hand_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_lakepike_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_lakepike_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_lakepike_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_lakepike_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_embers_of_flame_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_embers_of_flame_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_embers_of_flame_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_embers_of_flame_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_jawwal_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_jawwal_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_jawwal_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_jawwal_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_karakhuzaits_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_karakhuzaits_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_karakhuzaits_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_karakhuzaits_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_forest_people_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_forest_people_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_forest_people_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_forest_people_leader_3']"/>

    <xsl:template match="NPCCharacter[@id='spc_eleftheroi_leader_0']"/>
    <xsl:template match="NPCCharacter[@id='spc_eleftheroi_leader_1']"/>
    <xsl:template match="NPCCharacter[@id='spc_eleftheroi_leader_2']"/>
    <xsl:template match="NPCCharacter[@id='spc_eleftheroi_leader_3']"/>
</xsl:stylesheet>