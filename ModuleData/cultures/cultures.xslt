<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- Scarhok -->
    <xsl:template match="Culture[@id='vlandia']/@name"> <xsl:attribute name="name">Scarhok</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@color"> <xsl:attribute name="color">0xff830000</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@color2"> <xsl:attribute name="color2">0xff0D0D0D</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@faction_banner_key"> <xsl:attribute name="faction_banner_key">11.142.116.1536.1536.764.764.1.0.0.140.116.142.300.300.939.764.1.1.0.140.116.142.300.300.764.764.1.1.0.140.116.142.300.300.589.764.1.1.0</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@elite_basic_troop"> <xsl:attribute name="elite_basic_troop">NPCCharacter.scarhok_boukhal</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@basic_troop"> <xsl:attribute name="basic_troop">NPCCharacter.scarhok_recruit</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@villager_party_template"> <xsl:attribute name="villager_party_template">PartyTemplate.scarhok_villager_template</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@default_party_template"> <xsl:attribute name="default_party_template">PartyTemplate.scarhok_kingdom_hero_party_template</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@elite_caravan_party_template"> <xsl:attribute name="elite_caravan_party_template">PartyTemplate.scarhok_elite_caravan_template</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@caravan_party_template"> <xsl:attribute name="caravan_party_template">PartyTemplate.scarhok_caravan_template</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@militia_party_template"> <xsl:attribute name="militia_party_template">PartyTemplate.scarhok_militia_template</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@rebels_party_template"> <xsl:attribute name="rebels_party_template">PartyTemplate.scarhok_rebels_template</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@villager"> <xsl:attribute name="villager">NPCCharacter.villager_scarhok</xsl:attribute> </xsl:template>
    <xsl:template match="Culture[@id='vlandia']/@vassal_reward_party_template"> <xsl:attribute name="vassal_reward_party_template">PartyTemplate.scarhok_vassal_reward_troops</xsl:attribute> </xsl:template>
    <!-- <xsl:template match="Culture[@id='vlandia']/basic_mercenary_troops"> <basic_mercenary_troops> <template name="NPCCharacter.western_mercenary_1" /> </basic_mercenary_troops> </xsl:template> -->
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