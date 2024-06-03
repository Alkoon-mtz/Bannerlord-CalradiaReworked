using HarmonyLib;
using TaleWorlds.MountAndBlade;
using TaleWorlds.CampaignSystem.CharacterCreationContent;
using System.Reflection;
using TaleWorlds.CampaignSystem.CampaignBehaviors;
using SandBox;
using TaleWorlds.Core;

namespace Split
{
    public class ReworkedSubModule : MBSubModuleBase
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
}
