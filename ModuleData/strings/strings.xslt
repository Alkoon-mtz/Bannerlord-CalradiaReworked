<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
<!-- Aserai -->
    <xsl:template match="string[@id='str_adjective_for_culture.aserai']/@text"> <xsl:attribute name="text">Aseriyun</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_rich_name.aserai']/@text"> <xsl:attribute name="text">Aseriyun</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_name_with_title.aserai']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Sultana{?}Sultan{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_noble_name_with_title.aserai']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Emira{?}Emir{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.aserai']/@text"> <xsl:attribute name="text">an emir</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.aserai_f']/@text"> <xsl:attribute name="text">an emira</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.aserai']/@text"> <xsl:attribute name="text">Sultan</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.aserai_f']/@text"> <xsl:attribute name="text">Sultana</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_term_in_speech.aserai']/@text"> <xsl:attribute name="text">{?RULER.GENDER}the Sultana{?}the Sultan{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_neutral_term_for_culture.aserai']/@text"> <xsl:attribute name="text">Aseriyun</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_adjective_for_faction.aserai']/@text"> <xsl:attribute name="text">Aseriyun</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_short_term_for_faction.aserai']/@text"> <xsl:attribute name="text">Aseriyun</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_formal_name_for_culture.aserai']/@text"> <xsl:attribute name="text">Aseriyun Sultanate</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_informal_name_for_culture.aserai']/@text"> <xsl:attribute name="text">the Aseriyun</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_description.aserai']/@text"> <xsl:attribute name="text">Inhabitant of the desert, they lost parts of their sultanate after the wars with Iustrium</xsl:attribute> </xsl:template>

<!-- Cereann -->
    <xsl:template match="string[@id='str_adjective_for_culture.battania']/@text"> <xsl:attribute name="text">Cereann</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_rich_name.battania']/@text"> <xsl:attribute name="text">Cereanns</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_name_with_title.battania']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Matriarch{?}Patriarch{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_noble_name_with_title.battania']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Elder{?}Elder{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.battania']/@text"> <xsl:attribute name="text">an Elder</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.battania_f']/@text"> <xsl:attribute name="text">an Elder</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.battania']/@text"> <xsl:attribute name="text">Patriarch</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.battania_f']/@text"> <xsl:attribute name="text">Matriarch</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_term_in_speech.battania']/@text"> <xsl:attribute name="text">{?RULER.GENDER}the Matriarch{?}the Patriarch{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_neutral_term_for_culture.battania']/@text"> <xsl:attribute name="text">Cereanns</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_adjective_for_faction.battania']/@text"> <xsl:attribute name="text">Cereann</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_short_term_for_faction.battania']/@text"> <xsl:attribute name="text">Cereanns</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_formal_name_for_culture.battania']/@text"> <xsl:attribute name="text">Union of Cereann</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_informal_name_for_culture.battania']/@text"> <xsl:attribute name="text">the Cereanns</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_description.battania']/@text"> <xsl:attribute name="text">A community withdrawn into itself, trying to survive in their woods</xsl:attribute> </xsl:template>

<!-- Kratorios -->
    <xsl:template match="string[@id='str_adjective_for_culture.empire']/@text"> <xsl:attribute name="text">Kratoria</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_rich_name.empire']/@text"> <xsl:attribute name="text">Kratori</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_name_with_title.empire']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Empress{?}Emperor{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_noble_name_with_title.empire']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Archoness{?}Archon{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.empire']/@text"> <xsl:attribute name="text">Archon</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.empire_f']/@text"> <xsl:attribute name="text">Archoness</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.empire']/@text"> <xsl:attribute name="text">Emperor</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.empire_f']/@text"> <xsl:attribute name="text">Empress</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_term_in_speech.empire']/@text"> <xsl:attribute name="text">{?RULER.GENDER}the Empress{?}the Emperor{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_neutral_term_for_culture.empire']/@text"> <xsl:attribute name="text">Kratori</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_adjective_for_faction.empire']/@text"> <xsl:attribute name="text">Kratoria</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_short_term_for_faction.empire']/@text"> <xsl:attribute name="text">Kratori</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_formal_name_for_culture.empire']/@text"> <xsl:attribute name="text">Kratorios Empire</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_informal_name_for_culture.empire']/@text"> <xsl:attribute name="text">the Kratori</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_description.empire']/@text"> <xsl:attribute name="text">An emerging empire trying to unify the continent</xsl:attribute> </xsl:template>

<!-- Monghatai -->
    <xsl:template match="string[@id='str_adjective_for_culture.khuzait']/@text"> <xsl:attribute name="text">Monghatai</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_rich_name.khuzait']/@text"> <xsl:attribute name="text">Monghatais</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_name_with_title.khuzait']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Khatan{?}Khan{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_noble_name_with_title.khuzait']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Agtai{?}Gai{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.khuzait']/@text"> <xsl:attribute name="text">a gai</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.khuzait_f']/@text"> <xsl:attribute name="text">an agtai</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.khuzait']/@text"> <xsl:attribute name="text">Khan</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.khuzait_f']/@text"> <xsl:attribute name="text">Khatan</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_term_in_speech.khuzait']/@text"> <xsl:attribute name="text">{?RULER.GENDER}the Khatan{?}the Khan{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_neutral_term_for_culture.khuzait']/@text"> <xsl:attribute name="text">Monghatais</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_adjective_for_faction.khuzait']/@text"> <xsl:attribute name="text">Monghatai</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_short_term_for_faction.khuzait']/@text"> <xsl:attribute name="text">Monghatais</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_formal_name_for_culture.khuzait']/@text"> <xsl:attribute name="text">Khanate of Monghatai</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_informal_name_for_culture.khuzait']/@text"> <xsl:attribute name="text">the Monghatais</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_description.khuzait']/@text"> <xsl:attribute name="text">Nomadic tribes unified under a single leader</xsl:attribute> </xsl:template>

<!-- Lysellois -->
    <xsl:template match="string[@id='str_adjective_for_culture.vlandia']"/>
    <xsl:template match="string[@id='str_culture_rich_name.vlandia']"/>
    <xsl:template match="string[@id='str_faction_ruler_name_with_title.vlandia']"/>
    <xsl:template match="string[@id='str_faction_noble_name_with_title.vlandia']"/>
    <xsl:template match="string[@id='str_faction_official.vlandia']"/>
    <xsl:template match="string[@id='str_faction_official.vlandia_f']"/>
    <xsl:template match="string[@id='str_faction_ruler.vlandia']"/>
    <xsl:template match="string[@id='str_faction_ruler.vlandia_f']"/>
    <xsl:template match="string[@id='str_faction_ruler_term_in_speech.vlandia']"/>
    <xsl:template match="string[@id='str_neutral_term_for_culture.vlandia']"/>
    <xsl:template match="string[@id='str_adjective_for_faction.vlandia']"/>
    <xsl:template match="string[@id='str_short_term_for_faction.vlandia']"/>
    <xsl:template match="string[@id='str_faction_formal_name_for_culture.vlandia']"/>
    <xsl:template match="string[@id='str_faction_informal_name_for_culture.vlandia']"/>
    <xsl:template match="string[@id='str_culture_description.vlandia']"/>

<!-- Virkaldr -->
    <xsl:template match="string[@id='str_adjective_for_culture.sturgia']/@text"> <xsl:attribute name="text">Virkaldir</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_rich_name.sturgia']/@text"> <xsl:attribute name="text">Virkaldirs</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_name_with_title.sturgia']/@text"> <xsl:attribute name="text">{?RULER.GENDER}High Jarl{?}High Jarl{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_noble_name_with_title.sturgia']/@text"> <xsl:attribute name="text">{?RULER.GENDER}Konur{?}Madur{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.sturgia']/@text"> <xsl:attribute name="text">Madur</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_official.sturgia_f']/@text"> <xsl:attribute name="text">Konur</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.sturgia']/@text"> <xsl:attribute name="text">High Jarl</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler.sturgia_f']/@text"> <xsl:attribute name="text">High Jarl</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_ruler_term_in_speech.sturgia']/@text"> <xsl:attribute name="text">{?RULER.GENDER}the High Jarl{?}the High Jarl{\?} {RULER.NAME}</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_neutral_term_for_culture.sturgia']/@text"> <xsl:attribute name="text">Virkaldirs</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_adjective_for_faction.sturgia']/@text"> <xsl:attribute name="text">Virkaldir</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_short_term_for_faction.sturgia']/@text"> <xsl:attribute name="text">Virkaldirs</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_formal_name_for_culture.sturgia']/@text"> <xsl:attribute name="text">Jarland of Virkaldr</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_faction_informal_name_for_culture.sturgia']/@text"> <xsl:attribute name="text">the Virkaldirs</xsl:attribute> </xsl:template>
    <xsl:template match="string[@id='str_culture_description.sturgia']/@text"> <xsl:attribute name="text">Living in the hard cold north, they make up for their lack of agriculture by pillaging</xsl:attribute> </xsl:template>
</xsl:stylesheet>