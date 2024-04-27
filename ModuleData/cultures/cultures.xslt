<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    <!-- Cereann -->
    <xsl:template match="Culture[@id='battania']/@name"><xsl:attribute name="name">Cereann</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@color"><xsl:attribute name="color">0xff284E19</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@color2"><xsl:attribute name="color2">0xffD08E54</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@faction_banner_key"><xsl:attribute name="faction_banner_key">11.2.2.4345.4345.764.764.1.0.0.500.80.2.600.600.764.764.0.0.0.415.80.2.195.195.764.592.0.0.45.415.80.2.195.195.764.936.0.0.45.415.80.2.195.195.592.764.0.0.45.415.80.2.195.195.936.764.0.0.45.527.80.2.75.100.834.694.0.0.45.527.80.2.75.100.694.694.0.1.315.527.80.2.75.100.694.834.0.0.-135.527.80.2.75.100.834.834.0.1.135.510.80.2.150.75.689.594.0.0.90.510.80.2.150.75.839.594.0.0.90.510.80.2.150.75.934.689.0.0.0.510.80.2.150.75.934.839.0.0.0.510.80.2.150.75.839.934.0.0.90.510.80.2.150.75.689.934.0.0.90.510.80.2.150.75.594.839.0.0.0.510.80.2.150.75.594.689.0.0.0.413.80.2.150.150.764.764.0.0.50</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@elite_basic_troop"><xsl:attribute name="elite_basic_troop">NPCCharacter.cereann_stuaghair</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@basic_troop"><xsl:attribute name="basic_troop">NPCCharacter.cereann_recruit</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@villager_party_template"><xsl:attribute name="villager_party_template">PartyTemplate.cereann_villager_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@default_party_template"><xsl:attribute name="default_party_template">PartyTemplate.cereann_kingdom_hero_party_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@elite_caravan_party_template"><xsl:attribute name="elite_caravan_party_template">PartyTemplate.cereann_elite_caravan_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@caravan_party_template"><xsl:attribute name="caravan_party_template">PartyTemplate.cereann_caravan_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@militia_party_template"><xsl:attribute name="militia_party_template">PartyTemplate.cereann_militia_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@rebels_party_template"><xsl:attribute name="rebels_party_template">PartyTemplate.cereann_rebels_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@villager"><xsl:attribute name="villager">NPCCharacter.villager_cereann</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='battania']/@vassal_reward_party_template"><xsl:attribute name="vassal_reward_party_template">PartyTemplate.cereann_vassal_reward_troops</xsl:attribute></xsl:template>

    <!-- Kratorios -->
    <xsl:template match="Culture[@id='empire']/@name"><xsl:attribute name="name">Kratorios</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@color"><xsl:attribute name="color">0xff382188</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@color2"><xsl:attribute name="color2">0xffFFAD54</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@faction_banner_key"><xsl:attribute name="faction_banner_key">11.4.4.4345.4345.764.764.1.0.0.423.9.9.600.600.764.764.0.0.0.106.9.9.400.400.764.764.0.0.0</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@elite_basic_troop"><xsl:attribute name="elite_basic_troop">NPCCharacter.kratorios_vallistras</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@basic_troop"><xsl:attribute name="basic_troop">NPCCharacter.kratorios_recruit</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@villager_party_template"><xsl:attribute name="villager_party_template">PartyTemplate.kratorios_villager_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@default_party_template"><xsl:attribute name="default_party_template">PartyTemplate.kratorios_kingdom_hero_party_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@elite_caravan_party_template"><xsl:attribute name="elite_caravan_party_template">PartyTemplate.kratorios_elite_caravan_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@caravan_party_template"><xsl:attribute name="caravan_party_template">PartyTemplate.kratorios_caravan_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@militia_party_template"><xsl:attribute name="militia_party_template">PartyTemplate.kratorios_militia_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@rebels_party_template"><xsl:attribute name="rebels_party_template">PartyTemplate.kratorios_rebels_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@villager"><xsl:attribute name="villager">NPCCharacter.villager_kratorios</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='empire']/@vassal_reward_party_template"><xsl:attribute name="vassal_reward_party_template">PartyTemplate.kratorios_vassal_reward_troops</xsl:attribute></xsl:template>

    <!-- Scarhok -->
    <xsl:template match="Culture[@id='vlandia']/@name"><xsl:attribute name="name">Scarhok</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@color"><xsl:attribute name="color">0xff830808</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@color2"><xsl:attribute name="color2">0xff0D0D0D</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@faction_banner_key"><xsl:attribute name="faction_banner_key">11.142.116.1536.1536.764.764.1.0.0.140.116.142.300.300.939.764.1.1.0.140.116.142.300.300.764.764.1.1.0.140.116.142.300.300.589.764.1.1.0</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@elite_basic_troop"><xsl:attribute name="elite_basic_troop">NPCCharacter.scarhok_boukhal</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@basic_troop"><xsl:attribute name="basic_troop">NPCCharacter.scarhok_recruit</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@villager_party_template"><xsl:attribute name="villager_party_template">PartyTemplate.scarhok_villager_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@default_party_template"><xsl:attribute name="default_party_template">PartyTemplate.scarhok_kingdom_hero_party_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@elite_caravan_party_template"><xsl:attribute name="elite_caravan_party_template">PartyTemplate.scarhok_elite_caravan_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@caravan_party_template"><xsl:attribute name="caravan_party_template">PartyTemplate.scarhok_caravan_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@militia_party_template"><xsl:attribute name="militia_party_template">PartyTemplate.scarhok_militia_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@rebels_party_template"><xsl:attribute name="rebels_party_template">PartyTemplate.scarhok_rebels_template</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@villager"><xsl:attribute name="villager">NPCCharacter.villager_scarhok</xsl:attribute></xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@vassal_reward_party_template"><xsl:attribute name="vassal_reward_party_template">PartyTemplate.scarhok_vassal_reward_troops</xsl:attribute></xsl:template>
    <!-- <xsl:template match="Culture[@id='vlandia']/basic_mercenary_troops"><basic_mercenary_troops><template name="NPCCharacter.western_mercenary_1" /></basic_mercenary_troops></xsl:template> -->
    <!-- <xsl:template match="Culture[@id='vlandia']/cultural_feats">
         <cultural_feats>
         <feat id="vlandian_renown_mercenary_income" />
         <feat id="vlandian_villages_production_bonus" />
         <feat id="vlandian_increased_army_influence_cost" />
         <feat id="VlandianPositiveFeatThree" />
         <feat id="VlandianPositiveFeatFour" />
         <feat id="VlandianNegativeFeatTwo" />
         </cultural_feats>
         </xsl:template> -->
         
</xsl:stylesheet>