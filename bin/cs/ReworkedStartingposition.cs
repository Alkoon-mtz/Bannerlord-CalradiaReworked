using HarmonyLib;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Xml;
using TaleWorlds.CampaignSystem;
using TaleWorlds.CampaignSystem.CharacterCreationContent;
using TaleWorlds.CampaignSystem.GameState;
using TaleWorlds.CampaignSystem.Party;
using TaleWorlds.Core;
using TaleWorlds.Library;
using TaleWorlds.ObjectSystem;

namespace Split
{
    public static class ReworkedStartingposition
    {
        private static Dictionary<string, Vec2> _customPositions = CustomCultureXmlLoader.LoadCulturePositions();

        [HarmonyPatch(typeof(SandboxCharacterCreationContent))]
        [HarmonyPatch("OnCharacterCreationFinalized")]
        public static class OnCharacterCreationFinalizedPatch
        {
            public static void Postfix(SandboxCharacterCreationContent __instance)
            {
                // Get player culture
                CultureObject playerCulture = CharacterObject.PlayerCharacter.Culture;

                // Get pos from player culture
                if (_customPositions.TryGetValue(playerCulture.StringId, out Vec2 position))
                {
                    MobileParty.MainParty.Position2D = position;
                }
                else
                {
                    MobileParty.MainParty.Position2D = Campaign.Current.DefaultStartingPosition;
                }

                // Reset camera
                MapState mapState = (GameStateManager.Current.ActiveState as MapState);
                if (mapState != null)
                {
                    mapState.Handler.ResetCamera(true, true);
                    mapState.Handler.TeleportCameraToMainParty();
                }
            }
        }
    }
    public static class CustomCultureXmlLoader
    {
        private static string GetXmlFilePath(string xmlId)
        {
            List<MbObjectXmlInformation> xmlInfoList = XmlResource.XmlInformationList;
            if (xmlInfoList != null)
            {
                foreach (MbObjectXmlInformation xmlInfo in xmlInfoList)
                {
                    if (xmlInfo.Id == xmlId)
                    {
                        // Get current module path
                        string modulePath = Directory.GetParent(Directory.GetParent(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)).FullName).FullName;
                        string moduleDataPath = Path.Combine(modulePath, "ModuleData");

                        // Build XML path
                        string filePath = Path.Combine(moduleDataPath, xmlInfo.Name);
                        return filePath;
                    }
                }
            }
            return string.Empty;
        }
        public static Dictionary<string, Vec2> LoadCulturePositions()
        {
            var culturePositions = new Dictionary<string, Vec2>();

            XmlDocument doc = new XmlDocument();
            doc.Load(GetXmlFilePath("StartCultures") + ".xml");

            foreach (XmlNode node in doc.DocumentElement.ChildNodes)
            {
                if (node.Name == "StartCulture")
                {
                    string id = node.Attributes["id"].Value;
                    float x = float.Parse(node.Attributes["x"].Value);
                    float y = float.Parse(node.Attributes["y"].Value);

                    culturePositions[id] = new Vec2(x, y);
                }
            }
            return culturePositions;
        }
    }
}
