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
    
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_nomad']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_medium']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_heavy']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_flamboyant']"/>
    <xsl:template match="EquipmentRoster[@id='khu_bat_template_lady']"/>
    <!-- <xsl:template match="EquipmentRoster[@id='khu_noncom_template_default']"/> -->
    <!-- <xsl:template match="EquipmentRoster[@id='khu_noncom_template_flamboyant']"/> -->
    <xsl:template match="EquipmentRoster[@id='khu_king_template_bat_m']"/>
    <xsl:template match="EquipmentRoster[@id='khu_king_template_bat_f']"/>
    
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
</xsl:stylesheet>