using HarmonyLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Helpers;
using SandBox;
using TaleWorlds.Core;
using TaleWorlds.CampaignSystem;
using TaleWorlds.CampaignSystem.CampaignBehaviors;
using TaleWorlds.CampaignSystem.CharacterCreationContent;
using TaleWorlds.CampaignSystem.Settlements;
using TaleWorlds.Library;
using TaleWorlds.Localization;
using TaleWorlds.MountAndBlade;
using TaleWorlds.CampaignSystem.ViewModelCollection.CharacterCreation;

namespace CalradiaReworked
{
    public class CalradiaReworkedSubModule : MBSubModuleBase
    {
        // Init all harmony patches
        protected override void OnSubModuleLoad()
        {
            base.OnSubModuleLoad();

            var harmony = new Harmony("CalradiaReworkedPatch");
            harmony.PatchAll(Assembly.GetExecutingAssembly());
        }
    }

    internal class OnNewGameCreatedPatch
    {
        [HarmonyPatch(typeof(BackstoryCampaignBehavior))]
        [HarmonyPatch("OnNewGameCreated")]
        public class BackstoryCampaignBehaviorOnNewGameCreatedPatch
        {
            // Remove the backstory of characters like King of the aserai to be able to delete them
            public static bool Prefix()
            {
                return false;
            }
        }
    }
    
    internal class SandBoxGameManagerPatch
    {
        [HarmonyPatch(typeof(SandBoxGameManager))]
        [HarmonyPatch("LaunchSandboxCharacterCreation")]
        public class SandBoxGameManagerLaunchSandboxCharacterCreationPatch
        {
            // Allow the game to use custom ReworkedCharCreation instead of the native one
            public static bool Prefix()
            {
                CharacterCreationState gameState = Game.Current.GameStateManager.CreateState<CharacterCreationState>(new object[]
                {
                    new ReworkedCharCreation()
                });
                Game.Current.GameStateManager.CleanAndPushState(gameState, 0);
                return false;
            }
        }
    }
    internal class SortCultureListPatch
    {
        [HarmonyPatch(typeof(CharacterCreationCultureStageVM))]
        [HarmonyPatch("SortCultureList")]
        public class CharacterCreationCultureStageVMSortCultureListPatch
        {
            public static bool Prefix(CharacterCreationCultureVM __instance, MBBindingList<CharacterCreationCultureVM> listToWorkOn)
            {
                string[] cultureIds = { "aser", "batt", "iust", "empi", "vlan", "khuz", "qing", "rekg", "scarh", "stur", "zuli" };

                for (int i = 0; i < cultureIds.Length; i++)
                {
                    int swapFromIndex = listToWorkOn.IndexOf(listToWorkOn.Single((CharacterCreationCultureVM c) => c.CultureID.Contains(cultureIds[i])));
                    SwapReworked(listToWorkOn, swapFromIndex, i);
                }

                return false;
            }
        }

        private static void SwapReworked(MBBindingList<CharacterCreationCultureVM> listToWorkOn, int swapFromIndex, int swapToIndex)
        {
            if (swapFromIndex != swapToIndex)
            {
                CharacterCreationCultureVM value = listToWorkOn[swapToIndex];
                listToWorkOn[swapToIndex] = listToWorkOn[swapFromIndex];
                listToWorkOn[swapFromIndex] = value;
            }
        }
    }
    internal class GenerateClanNameforPlayerPatch
    {
        [HarmonyPatch(typeof(FactionHelper))]
        [HarmonyPatch("GenerateClanNameforPlayer")]
        public class FactionHelperGenerateClanNameforPlayerPatch
        {
            // Remove the specific behavior for vlandia clan name
            public static bool Prefix(ref TextObject __result)
            {
                 __result = NameGenerator.Current.GenerateClanName(CharacterObject.PlayerCharacter.Culture, null);
                 return false;
            }
        }
    }

    internal class GenerateClanNamePatch
    {
        [HarmonyPatch(typeof(NameGenerator))]
        [HarmonyPatch("GenerateClanName")]
        public class NameGeneratorGenerateClanNamePatch
        {
            // Remove the specific behavior for vlandia clan name
            public static bool Prefix(CultureObject culture, Settlement clanOriginSettlement, NameGenerator __instance, ref TextObject __result)
            {
                MethodInfo getClanNameListForCultureMethod = typeof(NameGenerator).GetMethod("GetClanNameListForCulture", BindingFlags.NonPublic | BindingFlags.Instance);
                TextObject[] clanNameListForCulture = (TextObject[])getClanNameListForCultureMethod.Invoke(__instance, new object[] { culture });

                Dictionary<TextObject, int> dictionary = new Dictionary<TextObject, int>();
                TextObject[] array = clanNameListForCulture;
                for (int i = 0; i < array.Length; i++)
                {
                    TextObject clanNameElement = array[i];
                    if (!dictionary.ContainsKey(clanNameElement))
                    {
                        int num = Clan.All.Count((Clan t) => t.Name.Equals(clanNameElement)) * 3;
                        num += Clan.All.Count((Clan t) => t.Name.HasSameValue(clanNameElement));
                        dictionary.Add(clanNameElement, num);
                    }
                    else
                    {
                        Debug.FailedAssert("Duplicate name in Clan Name list", "C:\\Develop\\MB3\\Source\\Bannerlord\\TaleWorlds.CampaignSystem\\NameGenerator.cs", "GenerateClanName", 196);
                    }
                }
                int num2 = dictionary.Values.Max() + 1;
                List<ValueTuple<TextObject, float>> list = new List<ValueTuple<TextObject, float>>();
                foreach (TextObject textObject in dictionary.Keys)
                {
                    list.Add(new ValueTuple<TextObject, float>(textObject, (float)(num2 - dictionary[textObject])));
                }
                MBRandom.ChooseWeighted<TextObject>(list, out int index);
                __result = dictionary.ElementAt(index).Key.CopyTextObject();

                return false;
            }
        }
    }
}
