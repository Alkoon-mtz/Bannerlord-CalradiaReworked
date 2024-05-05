using HarmonyLib;
using TaleWorlds.MountAndBlade;
using TaleWorlds.CampaignSystem.CharacterCreationContent;
using System.Reflection;
using TaleWorlds.CampaignSystem.CampaignBehaviors;

namespace Split
{
    public class SubModule : MBSubModuleBase
    {
        private const string YOUR_MOD_PATCH_NAME_MAKE_IT_UNIQUE_PLZ = "CalradiaReworkedPatch";
        protected override void OnSubModuleLoad()
        {
            base.OnSubModuleLoad();

            var harmony = new Harmony(YOUR_MOD_PATCH_NAME_MAKE_IT_UNIQUE_PLZ);
            harmony.PatchAll(Assembly.GetExecutingAssembly());
        }
    }

    internal class VlandianParentsOnConditionPatch
    {
        [HarmonyPatch(typeof(SandboxCharacterCreationContent))]
        [HarmonyPatch("VlandianParentsOnCondition")]
        public class SandboxCharacterCreationContentVlandianParentsOnConditionPatch
        {
            public static void Postfix(ref bool __result, SandboxCharacterCreationContent __instance)
            {
                if (__instance.GetSelectedCulture().StringId == "lysellois") __result = true;
                if (__instance.GetSelectedCulture().StringId == "rekgeist") __result = true;
            }
        }
    }

    internal class OnNewGameCreatedPatch
    {
        [HarmonyPatch(typeof(BackstoryCampaignBehavior))]
        [HarmonyPatch("OnNewGameCreated")]
        public class BackstoryCampaignBehavior_OnNewGameCreated_Patch
        {
            public static bool Prefix()
            {
                return false;
            }
        }
    }
}
