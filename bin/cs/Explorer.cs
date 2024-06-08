using HarmonyLib;
using TaleWorlds.CampaignSystem.CampaignBehaviors;
using TaleWorlds.CampaignSystem;
using TaleWorlds.CampaignSystem.CampaignBehaviors.BarterBehaviors;

namespace CalradiaReworked
{
    // Goal of this class is to make the explorers unattackable
    // Doesn't work yet with the "Diplomacy" module since it use alliance and ally helps in war, so they can be attacked
    // Also, player can join and act like in any other kingdom (propose war etc...)
    public class Explorer
    {
        [HarmonyPatch(typeof(KingdomDecisionProposalBehavior))]
        [HarmonyPatch("ConsiderWar")]
        public static class KingdomDecisionProposalBehaviorConsiderWarExplorerPatch
        {
            public static bool Prefix(Clan clan, Kingdom kingdom, IFaction otherFaction, ref bool __result)
            {
                if (kingdom.StringId == "kingdom_explorer" || otherFaction.StringId == "kingdom_explorer")
                {
                    __result = false;
                    return false;
                }
                return true;
            }
        }

        [HarmonyPatch(typeof(DiplomaticBartersBehavior))]
        [HarmonyPatch("ConsiderWar")]
        public static class DiplomaticBartersBehaviorConsiderWarExplorerPatch
        {
            public static bool Prefix(Clan clan, IFaction otherMapFaction)
            {
                if (clan.Kingdom != null && clan.Kingdom.StringId == "kingdom_explorer")
                {
                    return false;
                }
                if (otherMapFaction is Kingdom otherKingdom && otherKingdom.StringId == "kingdom_explorer")
                {
                    return false;
                }
                return true;
            }
        }

        [HarmonyPatch(typeof(DiplomaticBartersBehavior))]
        [HarmonyPatch("ConsiderClanJoin")]
        public static class DiplomaticBartersBehaviorConsiderClanJoinExplorerPatch
        {
            public static bool Prefix(Clan clan, Kingdom kingdom)
            {
                if (kingdom.StringId == "kingdom_explorer")
                {
                    return false;
                }
                return true;
            }
        }

        [HarmonyPatch(typeof(DiplomaticBartersBehavior))]
        [HarmonyPatch("ConsiderClanJoinAsMercenary")]
        public static class DiplomaticBartersBehaviorConsiderClanJoinAsMercenaryExplorerPatch
        {
            public static bool Prefix(Clan clan, Kingdom kingdom)
            {
                if (kingdom.StringId == "kingdom_explorer")
                {
                    return false;
                }
                return true;
            }
        }
    }
}
