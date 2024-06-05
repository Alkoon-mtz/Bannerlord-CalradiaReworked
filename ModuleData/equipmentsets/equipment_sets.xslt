<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes"/>
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="EquipmentRoster[@id='ase_bat_template_bedouin']"/>
    <xsl:template match="EquipmentRoster[@id='ase_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='ase_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='ase_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='ase_bat_template_lady']"/>
    <!-- <xsl:template match="EquipmentRoster[@id='ase_noncom_template_default']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='ase_noncom_template_bedouin']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='ase_noncom_template_flamboyant']"/> -->
    <xsl:template match="EquipmentRoster[@id='ase_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='ase_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_0_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_0_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_1_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_1_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_2_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_2_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_3_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_3_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_4_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_4_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_5_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_5_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_6_aserai']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_6_aserai']"/>

    <xsl:template match="EquipmentRoster[@id='bat_bat_template_wild']"/>
    <xsl:template match="EquipmentRoster[@id='bat_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='bat_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='bat_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='bat_bat_template_lady']"/>
    <!-- <xsl:template match="EquipmentRoster[@id='bat_noncom_template_default']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='bat_noncom_template_wild']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='bat_noncom_template_flamboyant']"/> -->
    <xsl:template match="EquipmentRoster[@id='bat_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='bat_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_0_battania']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_0_battania']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_1_battania']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_1_battania']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_2_battania']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_2_battania']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_3_battania']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_3_battania']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_4_battania']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_4_battania']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_5_battania']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_5_battania']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_6_battania']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_6_battania']"/>
    
    <xsl:template match="EquipmentRoster[@id='emp_bat_template_stoic']"/>
    <xsl:template match="EquipmentRoster[@id='emp_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='emp_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='emp_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='emp_bat_template_lady']"/>
    <!-- <xsl:template match="EquipmentRoster[@id='emp_bat_template_southfrontier']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='emp_bat_template_northfrontier']"/> -->
    <xsl:template match="EquipmentRoster[@id='s_emp_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='s_emp_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='w_emp_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='w_emp_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='n_emp_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='n_emp_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_0_empire']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_0_empire']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_1_empire']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_1_empire']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_2_empire']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_2_empire']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_3_empire']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_3_empire']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_4_empire']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_4_empire']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_5_empire']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_5_empire']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_6_empire']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_6_empire']"/>
    
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_nomad']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_lady']"/>
    <!-- <xsl:template match="EquipmentRoster[@id='khu_noncom_template_default']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='khu_noncom_template_flamboyant']"/> -->
    <xsl:template match="EquipmentRoster[@id='khu_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='khu_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_0_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_0_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_1_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_1_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_2_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_2_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_3_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_3_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_4_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_4_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_5_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_5_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_6_khuzait']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_6_khuzait']"/>
    
    <xsl:template match="EquipmentRoster[@id='stu_bat_template_woodsman']"/>
    <xsl:template match="EquipmentRoster[@id='stu_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='stu_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='stu_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='stu_bat_template_lady']"/>
    <!-- <xsl:template match="EquipmentRoster[@id='stu_noncom_template_default']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='stu_noncom_template_flamboyant']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='stu_noncom_template_woods']"/> -->
    <xsl:template match="EquipmentRoster[@id='stu_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='stu_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_0_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_0_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_1_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_1_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_2_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_2_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_3_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_3_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_4_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_4_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_5_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_5_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_6_sturgia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_6_sturgia']"/>
    
    <xsl:template match="EquipmentRoster[@id='vla_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='vla_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='vla_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='vla_bat_template_lady']"/>
    <xsl:template match="EquipmentRoster[@id='vla_noncom_template_default']"/>
    <xsl:template match="EquipmentRoster[@id='vla_noncom_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='vla_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='vla_king_template_civ_m']"/>
    <xsl:template match="EquipmentRoster[@id='vla_king_template_bat_f']"/>
    <xsl:template match="EquipmentRoster[@id='vla_king_template_civ_f']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_0_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_0_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_1_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_1_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_2_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_2_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_3_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_3_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_4_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_4_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_5_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_5_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='mother_char_creation_6_vlandia']"/>
    <xsl:template match="EquipmentRoster[@id='father_char_creation_6_vlandia']"/>
</xsl:stylesheet>