using System.Collections.Generic;
using TaleWorlds.CampaignSystem;
using TaleWorlds.CampaignSystem.CharacterCreationContent;
using TaleWorlds.CampaignSystem.CharacterDevelopment;
using TaleWorlds.Core;
using TaleWorlds.Library;
using TaleWorlds.Localization;

namespace Split
{
    public class ReworkedCharCreation : SandboxCharacterCreationContent
    {
        protected override void OnInitialized(CharacterCreation characterCreation)
        {
            this.AddParentsMenu(characterCreation);
            this.AddChildhoodMenu(characterCreation);
            this.AddEducationMenu(characterCreation);
            this.AddAdolescenceMenu(characterCreation);
            this.AddYouthMenu(characterCreation);
            this.AddAdulthoodMenu(characterCreation);
            base.AddAgeSelectionMenu(characterCreation);
        }
        protected new void AddParentsMenu(CharacterCreation characterCreation)
        {
            //Declare Menu
            CharacterCreationMenu characterCreationMenu = new CharacterCreationMenu(
                new TextObject("{=b4lDDcli}Family", null),
                new TextObject("{=XgFU1pCx}You were born into a family of...", null),
                new CharacterCreationOnInit(base.ParentsOnInit),
                CharacterCreationMenu.MenuTypes.MultipleChoice);

            MBList<SkillObject> effectedSkills;
            CharacterAttribute effectedAttribute;

            // Parents Aseriyun
            CharacterCreationCategory characterCreationCategory1 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(base.AseraiParentsOnCondition));
            // Aseriyun Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory1.AddCategoryOption(new TextObject("{=ase_parents_1}An Aseriyun noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ase_parents_1_text}Your father was a muqital, a noble unit of the aseriyun army", null), null, 0, 0, 0, 0, 0);
            // Aseriyun Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Throwing };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory1.AddCategoryOption(new TextObject("{=ase_parents_2}An Aseriyun footman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ase_parents_2_text}Your father was a haris, he was on his way to become an elite soldier in the aseriyun army", null), null, 0, 0, 0, 0, 0);
            // Aseriyun Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory1.AddCategoryOption(new TextObject("{=ase_parents_3}An Aseriyun scout", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ase_parents_3_text}Your father was a artahir, a polyvalent and resourceful man who served in the aseriyun army", null), null, 0, 0, 0, 0, 0);
            // Aseriyun Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory1.AddCategoryOption(new TextObject("{=ase_parents_4}An Aseriyun warrior", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ase_parents_4_text}Your father was a muharib, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Aseriyun Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory1.AddCategoryOption(new TextObject("{=ase_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ase_parents_5_text}Your father was a mercenary trained in the Kratorios empire", null), null, 0, 0, 0, 0, 0);

            // Parents Cereann
            CharacterCreationCategory characterCreationCategory2 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(base.BattanianParentsOnCondition));
            // Cereann Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.TwoHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory2.AddCategoryOption(new TextObject("{=cer_parents_1}A Cereann noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=cer_parents_1_text}Your father was a saighair, a noble unit of the cereann army", null), null, 0, 0, 0, 0, 0);
            // Cereann Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory2.AddCategoryOption(new TextObject("{=cer_parents_2}A Cereann warrior", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=cer_parents_2_text}Your father was a gaisghan, he was on his way to become an elite soldier in the cereann army", null), null, 0, 0, 0, 0, 0);
            // Cereann Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory2.AddCategoryOption(new TextObject("{=cer_parents_3}A Cereann scout", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=cer_parents_3_text}Your mother was a eachraidh, a polyvalent and resourceful woman who served in the cereann army", null), null, 0, 0, 0, 0, 0);
            // Cereann Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory2.AddCategoryOption(new TextObject("{=cer_parents_4}A Cereann skirmisher", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=cer_parents_4_text}Your father was a maoriath, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Cereann Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Polearm, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory2.AddCategoryOption(new TextObject("{=cer_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=cer_parents_5_text}Your father was a mercenary trained in the Zulizwe nation", null), null, 0, 0, 0, 0, 0);

            // Parents Iustrium
            CharacterCreationCategory characterCreationCategory3 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(this.IustriumParentsOnCondition));
            // Iustrium Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Polearm };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory3.AddCategoryOption(new TextObject("{=ius_parents_1}A Iustrium noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_1_text}Your father was a creditis, a noble unit of the iustrium army", null), null, 0, 0, 0, 0, 0);
            // Iustrium Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Throwing };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory3.AddCategoryOption(new TextObject("{=ius_parents_2}A Iustrium footman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_2_text}Your father was a scutus, he was on his way to become an elite soldier in the iustrium army", null), null, 0, 0, 0, 0, 0);
            // Iustrium Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory3.AddCategoryOption(new TextObject("{=ius_parents_3}A Iustrium patroller", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_3_text}Your father was a limitator, a polyvalent and resourceful man who served in the iustrium army", null), null, 0, 0, 0, 0, 0);
            // Iustrium Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory3.AddCategoryOption(new TextObject("{=ius_parents_4}A Iustrium cavalrymen", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_4_text}Your mother was a praetrix, she was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Iustrium Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.TwoHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory3.AddCategoryOption(new TextObject("{=ius_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_5_text}Your father was a mercenary trained in the Cereann Union", null), null, 0, 0, 0, 0, 0);

            // Parents Kratorios
            CharacterCreationCategory characterCreationCategory4 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(base.EmpireParentsOnCondition));
            // Kratorios Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory4.AddCategoryOption(new TextObject("{=ius_parents_1}A Kratorios noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_1_text}Your father was a skopeftas, a noble unit of the kratorios army", null), null, 0, 0, 0, 0, 0);
            // Kratorios Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Polearm, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory4.AddCategoryOption(new TextObject("{=ius_parents_2}A Kratorios guardian", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_2_text}Your father was a loforos, he was on his way to become an elite soldier in the kratorios army", null), null, 0, 0, 0, 0, 0);
            // Kratorios Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory4.AddCategoryOption(new TextObject("{=ius_parents_3}A Kratorios skirmisher", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_3_text}Your father was a akontisti, a polyvalent and resourceful man who served in the kratorios army", null), null, 0, 0, 0, 0, 0);
            // Kratorios Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory4.AddCategoryOption(new TextObject("{=ius_parents_4}A Kratorios yeoman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_4_text}Your father was a ippotos, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Kratorios Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory4.AddCategoryOption(new TextObject("{=ius_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=ius_parents_5_text}Your mother was a mercenary trained in the Monghatai Khanate", null), null, 0, 0, 0, 0, 0);

            // Parents Lysellois
            CharacterCreationCategory characterCreationCategory5 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(base.VlandianParentsOnCondition));
            // Lysellois Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Polearm };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory5.AddCategoryOption(new TextObject("{=lys_parents_1}A Lysellois noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=lys_parents_1_text}Your father was a baron, a noble unit of the lysellois army", null), null, 0, 0, 0, 0, 0);
            // Lysellois Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory5.AddCategoryOption(new TextObject("{=lys_parents_2}A Lysellois yeoman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=lys_parents_2_text}Your father was a cavalier lourd, he was on his way to become an elite soldier in the lysellois army", null), null, 0, 0, 0, 0, 0);
            // Lysellois Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory5.AddCategoryOption(new TextObject("{=lys_parents_3}A Lysellois watcher", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=lys_parents_3_text}Your father was a tireur, a polyvalent and resourceful man who served in the lysellois army", null), null, 0, 0, 0, 0, 0);
            // Lysellois Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Polearm };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory5.AddCategoryOption(new TextObject("{=lys_parents_4}A Lysellois footman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=lys_parents_4_text}Your father was a sergent, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Lysellois Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory5.AddCategoryOption(new TextObject("{=lys_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=lys_parents_5_text}Your father was a mercenary trained in the Rekgeist Federation", null), null, 0, 0, 0, 0, 0);

            // Parents Monghatai
            CharacterCreationCategory characterCreationCategory6 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(base.KhuzaitParentsOnCondition));
            // Monghatai Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory6.AddCategoryOption(new TextObject("{=mon_parents_1}A Monghatai noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=mon_parents_1_text}Your mother was a mergar, a noble unit of the monghatai army", null), null, 0, 0, 0, 0, 0);
            // Monghatai Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory6.AddCategoryOption(new TextObject("{=mon_parents_2}A Monghatai yeoman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=mon_parents_2_text}Your father was a tsurakh, he was on his way to become an elite soldier in the monghatai army", null), null, 0, 0, 0, 0, 0);
            // Monghatai Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory6.AddCategoryOption(new TextObject("{=mon_parents_3}A Monghatai cavalryman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=mon_parents_3_text}Your father was a khurchin, a polyvalent and resourceful man who served in the monghatai army", null), null, 0, 0, 0, 0, 0);
            // Monghatai Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Polearm };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory6.AddCategoryOption(new TextObject("{=mon_parents_4}A Monghatai rider", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=mon_parents_4_text}Your father was a urdal, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Monghatai Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Polearm };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory6.AddCategoryOption(new TextObject("{=mon_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=mon_parents_5_text}Your father was a mercenary trained in the Iustrium Principalities", null), null, 0, 0, 0, 0, 0);

            // Parents Qinguo
            CharacterCreationCategory characterCreationCategory7 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(this.QinguoParentsOnCondition));
            // Qinguo Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory7.AddCategoryOption(new TextObject("{=qin_parents_1}A Qinguo noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=qin_parents_1_text}Your father was a erbai, a noble unit of the qinguo army", null), null, 0, 0, 0, 0, 0);
            // Qinguo Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory7.AddCategoryOption(new TextObject("{=qin_parents_2}A Qinguo watcher", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=qin_parents_2_text}Your father was a jinshou, he was on his way to become an elite soldier in the qinguo army", null), null, 0, 0, 0, 0, 0);
            // Qinguo Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory7.AddCategoryOption(new TextObject("{=qin_parents_3}A Qinguo patroller", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=qin_parents_3_text}Your father was a manuluo, a polyvalent and resourceful man who served in the qinguo army", null), null, 0, 0, 0, 0, 0);
            // Qinguo Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Polearm, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory7.AddCategoryOption(new TextObject("{=qin_parents_4}A Qinguo guard", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=qin_parents_4_text}Your father was a cichuqi, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Qinguo Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory7.AddCategoryOption(new TextObject("{=qin_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=qin_parents_5_text}Your father was a mercenary trained in the Virkaldr Jarland", null), null, 0, 0, 0, 0, 0);

            // Parents Rekgeist
            CharacterCreationCategory characterCreationCategory8 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(this.RekgeistParentsOnCondition));
            // Rekgeist Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory8.AddCategoryOption(new TextObject("{=rek_parents_1}A Rekgeist noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=rek_parents_1_text}Your father was a beidhänder, a noble unit of the rekgeist army", null), null, 0, 0, 0, 0, 0);
            // Rekgeist Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory8.AddCategoryOption(new TextObject("{=rek_parents_2}A Rekgeist yeoman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=rek_parents_2_text}Your father was a leichter reiter, he was on his way to become an elite soldier in the rekgeist army", null), null, 0, 0, 0, 0, 0);
            // Rekgeist Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Polearm, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory8.AddCategoryOption(new TextObject("{=rek_parents_3}A Rekgeist guard", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=rek_parents_3_text}Your father was a pfähler, a polyvalent and resourceful man who served in the rekgeist army", null), null, 0, 0, 0, 0, 0);
            // Rekgeist Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.TwoHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory8.AddCategoryOption(new TextObject("{=rek_parents_4}A Rekgeist watcher", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=rek_parents_4_text}Your father was a wachterschutze, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Rekgeist Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory8.AddCategoryOption(new TextObject("{=rek_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=rek_parents_5_text}Your father was a mercenary trained in the Aseriyun Sultanate", null), null, 0, 0, 0, 0, 0);

            // Parents Scarhok
            CharacterCreationCategory characterCreationCategory9 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(this.ScarhokParentsOnCondition));
            // Scarhok Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Throwing };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory9.AddCategoryOption(new TextObject("{=sca_parents_1}A Scarhok noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=sca_parents_1_text}Your father was a kigenn, a noble unit of the scarhok army", null), null, 0, 0, 0, 0, 0);
            // Scarhok Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory9.AddCategoryOption(new TextObject("{=sca_parents_2}A Scarhok bowman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=sca_parents_2_text}Your father was a gareker, he was on his way to become an elite soldier in the scarhok army", null), null, 0, 0, 0, 0, 0);
            // Scarhok Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.TwoHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory9.AddCategoryOption(new TextObject("{=sca_parents_3}A Scarhok skirmisher", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=sca_parents_3_text}Your father was a throwing axeman, a polyvalent and resourceful man who served in the scarhok army", null), null, 0, 0, 0, 0, 0);
            // Scarhok Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory9.AddCategoryOption(new TextObject("{=sca_parents_4}A Scarhok harasser", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=sca_parents_4_text}Your father was a strellig, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Scarhok Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory9.AddCategoryOption(new TextObject("{=sca_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=sca_parents_5_text}Your father was a mercenary trained in the Qinguo State", null), null, 0, 0, 0, 0, 0);

            // Parents Virkaldr
            CharacterCreationCategory characterCreationCategory10 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(base.SturgianParentsOnCondition));
            // Virkaldr Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory10.AddCategoryOption(new TextObject("{=vir_parents_1}A Virkaldr noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=vir_parents_1_text}Your father was a eydandi, a noble unit of the virkaldr army", null), null, 0, 0, 0, 0, 0);
            // Virkaldr Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory10.AddCategoryOption(new TextObject("{=vir_parents_2}A Virkaldr harasser", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=vir_parents_2_text}Your mother was a vidrinn, she was on his way to become an elite soldier in the virkaldr army", null), null, 0, 0, 0, 0, 0);
            // Virkaldr Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory10.AddCategoryOption(new TextObject("{=vir_parents_3}A Virkaldr warrior", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=vir_parents_3_text}Your father was a grahaerker, a polyvalent and resourceful man who served in the virkaldr army", null), null, 0, 0, 0, 0, 0);
            // Virkaldr Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory10.AddCategoryOption(new TextObject("{=vir_parents_4}A Virkaldr bowman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=vir_parents_4_text}Your father was a veidi, he was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Virkaldr Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Polearm };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory10.AddCategoryOption(new TextObject("{=vir_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=vir_parents_5_text}Your father was a mercenary trained in the Lysellois Kingdom", null), null, 0, 0, 0, 0, 0);

            // Parents Zulizwe
            CharacterCreationCategory characterCreationCategory11 = characterCreationMenu.AddMenuCategory(new CharacterCreationOnCondition(this.ZulizweParentsOnCondition));
            // Zulizwe Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Polearm, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory11.AddCategoryOption(new TextObject("{=zul_parents_1}A Zulizwe noble", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=zul_parents_1_text}Your father was a umlwi, a noble unit of the zulizwe army", null), null, 0, 0, 0, 0, 0);
            // Zulizwe Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Polearm };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory11.AddCategoryOption(new TextObject("{=zul_parents_2}A Zulizwe rider", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=zul_parents_2_text}Your father was a mzigo, he was on his way to become an elite soldier in the zulizwe army", null), null, 0, 0, 0, 0, 0);
            // Zulizwe Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.OneHanded };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory11.AddCategoryOption(new TextObject("{=zul_parents_3}A Zulizwe bowman", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=zul_parents_3_text}Your father was a risasi, a polyvalent and resourceful man who served in the zulizwe army", null), null, 0, 0, 0, 0, 0);
            // Zulizwe Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.Riding };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory11.AddCategoryOption(new TextObject("{=zul_parents_4}A Zulizwe scout", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=zul_parents_4_text}Your mother was a wepesi, she was not exceptionally skilled but was a good battle comrade", null), null, 0, 0, 0, 0, 0);
            // Zulizwe Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Throwing };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory11.AddCategoryOption(new TextObject("{=zul_parents_5}A mercenary", null),
                effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                new CharacterCreationApplyFinalEffects(this.ParentsOnApply),
                new TextObject("{=zul_parents_5_text}Your father was a mercenary trained in the Scarhok Chiefdom", null), null, 0, 0, 0, 0, 0);

            characterCreation.AddNewMenu(characterCreationMenu);
        }
        protected new void AddChildhoodMenu(CharacterCreation characterCreation)
        {
            //Declare Menu
            CharacterCreationMenu characterCreationMenu = new CharacterCreationMenu(
                new TextObject("{=8Yiwt1z6}Early Childhood", null),
                new TextObject("{=childhood_menu}When you were a child, you listened stories of...", null),
                new CharacterCreationOnInit(base.ChildhoodOnInit),
                CharacterCreationMenu.MenuTypes.MultipleChoice);

            CharacterCreationCategory characterCreationCategory = characterCreationMenu.AddMenuCategory(null);
            MBList<SkillObject> effectedSkills;
            CharacterAttribute effectedAttribute;

            // Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Charm, DefaultSkills.Tactics };
            effectedAttribute = DefaultCharacterAttributes.Social;
            characterCreationCategory.AddCategoryOption(new TextObject("{=childhood_1}the tavern keeper about his business", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.ChildhoodOnApply),
                 new TextObject("{=childhood_1_text}Spending your time in the tavern told you a lot about customer service and adventurer's stories", null), null, 0, 0, 0, 0, 0);
            // Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Medicine, DefaultSkills.Leadership };
            effectedAttribute = DefaultCharacterAttributes.Intelligence;
            characterCreationCategory.AddCategoryOption(new TextObject("{=childhood_2}the local doctor about her patients", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.ChildhoodOnApply),
                 new TextObject("{=childhood_2_text}You always were interested by medicinal herbs and healing people", null), null, 0, 0, 0, 0, 0);
            // Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Roguery, DefaultSkills.Steward };
            effectedAttribute = DefaultCharacterAttributes.Cunning;
            characterCreationCategory.AddCategoryOption(new TextObject("{=childhood_3}the alley gang leader about his...job", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.ChildhoodOnApply),
                 new TextObject("{=childhood_3_text}Maybe you were left a bit too much unsupervised but this guy was always kind to you", null), null, 0, 0, 0, 0, 0);
            // Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Engineering, DefaultSkills.Tactics };
            effectedAttribute = DefaultCharacterAttributes.Intelligence;
            characterCreationCategory.AddCategoryOption(new TextObject("{=childhood_4}the masons about fortification's structure", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.ChildhoodOnApply),
                 new TextObject("{=childhood_4_text}While they may have a somewhat vulgar language sometimes, they taught you a lot about walls and fortresses", null), null, 0, 0, 0, 0, 0);
            // Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Scouting, DefaultSkills.Leadership };
            effectedAttribute = DefaultCharacterAttributes.Cunning;
            characterCreationCategory.AddCategoryOption(new TextObject("{=childhood_5}the patrol guards about their manhunts", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.ChildhoodOnApply),
                 new TextObject("{=childhood_5_text}Exploring, tracking, making a campfire, it was like tasting a bit of freedom and unknown", null), null, 0, 0, 0, 0, 0);
            // Choice 6
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Trade, DefaultSkills.Steward };
            effectedAttribute = DefaultCharacterAttributes.Social;
            characterCreationCategory.AddCategoryOption(new TextObject("{=childhood_6}the caravan masters about the foreign cities", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.ChildhoodOnApply),
                 new TextObject("{=childhood_6_text}Foreign cities appear beautiful when described by caravanners, so do the profits", null), null, 0, 0, 0, 0, 0);

            characterCreation.AddNewMenu(characterCreationMenu);
        }
        protected new void AddEducationMenu(CharacterCreation characterCreation)
        {
            //Declare Menu
            CharacterCreationMenu characterCreationMenu = new CharacterCreationMenu(
                new TextObject("{=education_title}Education", null),
                new TextObject("{=education_menu}You received an education about...", null),
                new CharacterCreationOnInit(this.EducationOnInit),
                CharacterCreationMenu.MenuTypes.MultipleChoice);

            CharacterCreationCategory characterCreationCategory = characterCreationMenu.AddMenuCategory(null);
            MBList<SkillObject> effectedSkills;
            CharacterAttribute effectedAttribute;

            // Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Tactics, DefaultSkills.Trade };
            effectedAttribute = DefaultCharacterAttributes.Cunning;
            characterCreationCategory.AddCategoryOption(new TextObject("{=education_1}How to manage your caravan", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.EducationOnApply),
                 new TextObject("{=education_1_text}Travel, sell, profit, what could go wrong ?", null), null, 0, 0, 0, 0, 0);
            // Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Leadership, DefaultSkills.Roguery };
            effectedAttribute = DefaultCharacterAttributes.Social;
            characterCreationCategory.AddCategoryOption(new TextObject("{=education_2}How to deal with bandits", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.EducationOnApply),
                 new TextObject("{=education_2_text}Know them to catch them, or become one of them...", null), null, 0, 0, 0, 0, 0);
            // Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Steward, DefaultSkills.Charm };
            effectedAttribute = DefaultCharacterAttributes.Intelligence;
            characterCreationCategory.AddCategoryOption(new TextObject("{=education_3}How to operate your own business", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.EducationOnApply),
                 new TextObject("{=education_3_text}Seemed simple enough with easy profit, but you were wrong", null), null, 0, 0, 0, 0, 0);
            // Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Tactics, DefaultSkills.Medicine };
            effectedAttribute = DefaultCharacterAttributes.Cunning;
            characterCreationCategory.AddCategoryOption(new TextObject("{=education_4}How to be a field healer", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.EducationOnApply),
                 new TextObject("{=education_4_text}You wanted to treat the wounded during war, but it's kind of harsh", null), null, 0, 0, 0, 0, 0);
            // Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Leadership, DefaultSkills.Engineering };
            effectedAttribute = DefaultCharacterAttributes.Social;
            characterCreationCategory.AddCategoryOption(new TextObject("{=education_5}How to administer a town", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.EducationOnApply),
                 new TextObject("{=education_5_text}Becoming a politician would have given you power but it was more boring than expected", null), null, 0, 0, 0, 0, 0);
            // Choice 6
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Steward, DefaultSkills.Scouting };
            effectedAttribute = DefaultCharacterAttributes.Intelligence;
            characterCreationCategory.AddCategoryOption(new TextObject("{=education_6}How to be prepared for a campaign", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(ReworkedCharCreation.EducationOnApply),
                 new TextObject("{=education_6_text}Dreamed about epic battles, you realized that it was mostly walking", null), null, 0, 0, 0, 0, 0);

            characterCreation.AddNewMenu(characterCreationMenu);
        }
        protected void AddAdolescenceMenu(CharacterCreation characterCreation)
        {
            //Declare Menu
            CharacterCreationMenu characterCreationMenu = new CharacterCreationMenu(
                new TextObject("{=rcoueCmk}Adolescence", null),
                new TextObject("{=adolescence_menu}You did your military service in the militia as...", null),
                new CharacterCreationOnInit(this.AdolescenceOnInit),
                CharacterCreationMenu.MenuTypes.MultipleChoice);

            CharacterCreationCategory characterCreationCategory = characterCreationMenu.AddMenuCategory(null);
            MBList<SkillObject> effectedSkills;
            CharacterAttribute effectedAttribute;
            // Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory.AddCategoryOption(new TextObject("{=adolescence_1}a footmen", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdolescenceOnApply),
                 new TextObject("{=adolescence_1_text}They taught you to hold your shield up and maintain the line", null), null, 0, 0, 0, 0, 0);
            // Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory.AddCategoryOption(new TextObject("{=adolescence_2}a linebreaker", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdolescenceOnApply),
                 new TextObject("{=adolescence_2_text}You were strong, they needed guys like you to break the enemy formation", null), null, 0, 0, 0, 0, 0);
            // Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Polearm, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            characterCreationCategory.AddCategoryOption(new TextObject("{=adolescence_3}a guard", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdolescenceOnApply),
                 new TextObject("{=adolescence_3_text}You spent your time at the gate while learning how to deal against cavalry", null), null, 0, 0, 0, 0, 0);
            // Choice 4 archer faction
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory.AddCategoryOption(new TextObject("{=adolescence_4}a hunter", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd,
                 new CharacterCreationOnCondition(this.IsCultureArcherType), null,
                 new CharacterCreationApplyFinalEffects(this.AdolescenceOnApply),
                 new TextObject("{=adolescence_4_text}Shooting the target was not the only thing to do, you also were on hunting duty", null), null, 0, 0, 0, 0, 0);
            // Choice 4 xbow faction
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory.AddCategoryOption(new TextObject("{=adolescence_5}a watcher", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd,
                 new CharacterCreationOnCondition(this.IsCultureXbowType), null,
                 new CharacterCreationApplyFinalEffects(this.AdolescenceOnApply),
                 new TextObject("{=adolescence_5_text}Looking on the horizon on top of a watchtower, and sometimes shooting bandits", null), null, 0, 0, 0, 0, 0);
            // Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.Athletics };
            effectedAttribute = DefaultCharacterAttributes.Control;
            characterCreationCategory.AddCategoryOption(new TextObject("{=adolescence_6}a skirmisher", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdolescenceOnApply),
                 new TextObject("{=adolescence_6_text}A versatile job suited for a polyvalent guy like you", null), null, 0, 0, 0, 0, 0);

            characterCreation.AddNewMenu(characterCreationMenu);
        }
        protected new void AddYouthMenu(CharacterCreation characterCreation)
        {
            //Declare Menu
            CharacterCreationMenu characterCreationMenu = new CharacterCreationMenu(
                new TextObject("{=ok8lSW6M}Youth", null),
                new TextObject("{=youth_menu}To earn your first salary you...", null),
                new CharacterCreationOnInit(this.YouthOnInit),
                CharacterCreationMenu.MenuTypes.MultipleChoice);

            CharacterCreationCategory characterCreationCategory = characterCreationMenu.AddMenuCategory(null);
            MBList<SkillObject> effectedSkills;
            CharacterAttribute effectedAttribute;

            // Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Tactics };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory.AddCategoryOption(new TextObject("{=youth_1}enlisted with the cavalry", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.YouthOnApply),
                 new TextObject("{=youth_1_text}You wanted to be like the legendary king in a theater piece who charged the enemy yelling \"Arise ! Arise Riders !\"", null), null, 0, 0, 0, 0, 0);
            // Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Leadership };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory.AddCategoryOption(new TextObject("{=youth_2}served a high ranked officer", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.YouthOnApply),
                 new TextObject("{=youth_2_text}It was mostly a messenger job but you learned a few things on how to manage a regiment", null), null, 0, 0, 0, 0, 0);
            // Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Steward };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory.AddCategoryOption(new TextObject("{=youth_3}cared for horses", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.YouthOnApply),
                 new TextObject("{=youth_3_text}You were in the stables taking care of the horses of the nobles and other wanderers or merchants", null), null, 0, 0, 0, 0, 0);
            // Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Athletics, DefaultSkills.Tactics };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory.AddCategoryOption(new TextObject("{=youth_4}enlisted with the infantry", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.YouthOnApply),
                 new TextObject("{=youth_4_text}When you don't know what to do, the army is always recruiting", null), null, 0, 0, 0, 0, 0);
            // Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Athletics, DefaultSkills.Leadership };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory.AddCategoryOption(new TextObject("{=youth_5}assisted the town's headman", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.YouthOnApply),
                 new TextObject("{=youth_5_text}Walking around the town, fixing problems and settle disputes", null), null, 0, 0, 0, 0, 0);
            // Choice 6
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Athletics, DefaultSkills.Steward };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            characterCreationCategory.AddCategoryOption(new TextObject("{=youth_6}worked at the docks", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.YouthOnApply),
                 new TextObject("{=youth_6_text}An honest job that strengthened your body with hard work", null), null, 0, 0, 0, 0, 0);

            characterCreation.AddNewMenu(characterCreationMenu);
        }
        protected new void AddAdulthoodMenu(CharacterCreation characterCreation)
        {
            //Declare Menu
            CharacterCreationMenu characterCreationMenu = new CharacterCreationMenu(
                new TextObject("{=MafIe9yI}Young Adulthood", null),
                new TextObject("{=adult_menu}You were granted the right to make a clan when you...", null),
                new CharacterCreationOnInit(base.AccomplishmentOnInit),
                CharacterCreationMenu.MenuTypes.MultipleChoice);

            CharacterCreationCategory characterCreationCategory = characterCreationMenu.AddMenuCategory(null);
            MBList<SkillObject> effectedSkills;
            CharacterAttribute effectedAttribute;
            MBList<TraitObject> effectedTrait;

            // Choice 1
            effectedSkills = new MBList<SkillObject> { DefaultSkills.OneHanded, DefaultSkills.Crafting };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            effectedTrait = new MBList<TraitObject> { DefaultTraits.Generosity };
            characterCreationCategory.AddCategoryOption(new TextObject("{=adulthood_1}forged a beautiful sword for a noble", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdulthoodOnApply),
                 new TextObject("{=adulthood_1_text}As a reward for your work", null), effectedTrait, 1, 5, 0, 0, 0);
            // Choice 2
            effectedSkills = new MBList<SkillObject> { DefaultSkills.TwoHanded, DefaultSkills.Charm };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            effectedTrait = new MBList<TraitObject> { DefaultTraits.Honor };
            characterCreationCategory.AddCategoryOption(new TextObject("{=adulthood_2}won a local tournament", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdulthoodOnApply),
                 new TextObject("{=adulthood_2_text}As a reward for your work", null), effectedTrait, 1, 5, 0, 0, 0);
            // Choice 3
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Polearm, DefaultSkills.Trade };
            effectedAttribute = DefaultCharacterAttributes.Vigor;
            effectedTrait = new MBList<TraitObject> { DefaultTraits.Valor };
            characterCreationCategory.AddCategoryOption(new TextObject("{=adulthood_3}protected the caravan of a rich merchant", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdulthoodOnApply),
                 new TextObject("{=adulthood_3_text}He was so grateful that you saved his goods that he pulled a few strings to make it happen", null), effectedTrait, 1, 5, 0, 0, 0);
            // Choice 4
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Bow, DefaultSkills.Medicine };
            effectedAttribute = DefaultCharacterAttributes.Control;
            effectedTrait = new MBList<TraitObject> { DefaultTraits.Mercy };
            characterCreationCategory.AddCategoryOption(new TextObject("{=adulthood_4}hunted a dangerous wild animal", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdulthoodOnApply),
                 new TextObject("{=adulthood_4_text}There was a beast killing mostly childrens who played in the woods, it's now old history and the headman is relieved", null), effectedTrait, 1, 5, 0, 0, 0);
            // Choice 5
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Crossbow, DefaultSkills.Engineering };
            effectedAttribute = DefaultCharacterAttributes.Control;
            effectedTrait = new MBList<TraitObject> { DefaultTraits.Valor };
            characterCreationCategory.AddCategoryOption(new TextObject("{=adulthood_5}defended an assieged city", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdulthoodOnApply),
                 new TextObject("{=adulthood_5_text}It was a tough period, but your courage on the walls allowed you to keep the city safe", null), effectedTrait, 1, 5, 0, 0, 0);
            // Choice 6
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Throwing, DefaultSkills.Roguery };
            effectedAttribute = DefaultCharacterAttributes.Control;
            effectedTrait = new MBList<TraitObject> { DefaultTraits.Calculating };
            characterCreationCategory.AddCategoryOption(new TextObject("{=adulthood_6}helped a politican to set up his rival", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdulthoodOnApply),
                 new TextObject("{=adulthood_6_text}Sometimes you gotta do what you gotta do, and sometimes it pays off", null), effectedTrait, 1, 5, 0, 0, 0);
            // Choice 7
            effectedSkills = new MBList<SkillObject> { DefaultSkills.Riding, DefaultSkills.Scouting };
            effectedAttribute = DefaultCharacterAttributes.Endurance;
            effectedTrait = new MBList<TraitObject> { DefaultTraits.Calculating };
            characterCreationCategory.AddCategoryOption(new TextObject("{=adulthood_7}tracked an infamous bandit party", null),
                 effectedSkills, effectedAttribute, this.FocusToAdd, this.SkillLevelToAdd, this.AttributeLevelToAdd, null, null,
                 new CharacterCreationApplyFinalEffects(this.AdulthoodOnApply),
                 new TextObject("{=adulthood_7_text}A band that was pillaging small villages and isolated farmers, you found them and called the garrison", null), effectedTrait, 1, 5, 0, 0, 0);

            characterCreation.AddNewMenu(characterCreationMenu);
        }

        protected void ParentsOnApply(CharacterCreation characterCreation)
        {
            this.FinalizeParents();
        }
        protected static void ChildhoodOnApply(CharacterCreation characterCreation)
        {
        }
        protected static void EducationOnApply(CharacterCreation characterCreation)
        {
        }
        protected void AdolescenceOnApply(CharacterCreation characterCreation)
        {
        }
        protected void YouthOnApply(CharacterCreation characterCreation)
        {
        }
        protected void AdulthoodOnApply(CharacterCreation characterCreation)
        {
        }

        protected new void EducationOnInit(CharacterCreation characterCreation)
        {
            characterCreation.IsPlayerAlone = true;
            characterCreation.HasSecondaryCharacter = false;
            characterCreation.ClearFaceGenPrefab();
            characterCreation.ChangeFaceGenChars(SandboxCharacterCreationContent.ChangePlayerFaceWithAge((float)this.EducationAge, "act_childhood_schooled"));
            string text = string.Concat(new object[]
            {
                "player_char_creation_education_age_",
                base.GetSelectedCulture().StringId,
                "_",
                base.SelectedParentType
            });
            text += (Hero.MainHero.IsFemale ? "_f" : "_m");
            this.ChangePlayerOutfit(characterCreation, text);
            characterCreation.ChangeCharsAnimation(new List<string>
            {
                "act_childhood_schooled"
            });
            SandboxCharacterCreationContent.ClearMountEntity(characterCreation);
        }
        protected void AdolescenceOnInit(CharacterCreation characterCreation)
        {
            characterCreation.IsPlayerAlone = true;
            characterCreation.HasSecondaryCharacter = false;
            characterCreation.ClearFaceGenPrefab();
            characterCreation.ChangeFaceGenChars(SandboxCharacterCreationContent.ChangePlayerFaceWithAge((float)this.AdolescenceAge, "act_childhood_schooled"));
            characterCreation.ChangeCharsAnimation(new List<string>
            {
                "act_childhood_schooled"
            });
            if (base.SelectedTitleType < 1 || base.SelectedTitleType > 10)
            {
                base.SelectedTitleType = 1;
            }
            this.RefreshPlayerAppearance(characterCreation);
        }
        protected new void YouthOnInit(CharacterCreation characterCreation)
        {
            characterCreation.IsPlayerAlone = true;
            characterCreation.HasSecondaryCharacter = false;
            characterCreation.ClearFaceGenPrefab();
            characterCreation.ChangeFaceGenChars(SandboxCharacterCreationContent.ChangePlayerFaceWithAge((float)this.YouthAge, "act_childhood_schooled"));
            characterCreation.ChangeCharsAnimation(new List<string>
            {
                "act_childhood_schooled"
            });
            if (base.SelectedTitleType < 1 || base.SelectedTitleType > 10)
            {
                base.SelectedTitleType = 1;
            }
            this.RefreshPlayerAppearance(characterCreation);
        }

        protected bool IustriumParentsOnCondition(){ return base.GetSelectedCulture().StringId == "iustrium"; }
        protected bool QinguoParentsOnCondition(){ return base.GetSelectedCulture().StringId == "qinguo"; }
        protected bool RekgeistParentsOnCondition(){ return base.GetSelectedCulture().StringId == "rekgeist"; }
        protected bool ScarhokParentsOnCondition(){ return base.GetSelectedCulture().StringId == "scarhok"; }
        protected bool ZulizweParentsOnCondition(){ return base.GetSelectedCulture().StringId == "zulizwe"; }

        protected bool IsCultureArcherType()
        {
            string cultureId = base.GetSelectedCulture().StringId;
            return cultureId == "aserai" || cultureId == "battania" || cultureId == "khuzait" ||
                   cultureId == "scarhok" || cultureId == "sturgia" || cultureId == "zulizwe";
        }
        protected bool IsCultureXbowType()
        {
            string cultureId = base.GetSelectedCulture().StringId;
            return cultureId == "iustrium" || cultureId == "empire" || cultureId == "vlandia" ||
                   cultureId == "qinguo" || cultureId == "rekgeist";
        }

        protected virtual int AdolescenceAge{ get{ return 16; }}
    }
}
