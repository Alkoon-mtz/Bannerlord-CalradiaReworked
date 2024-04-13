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
    //public static class Logger
    //{
    //    private static readonly string modulePath = Directory.GetParent(Directory.GetParent(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location)).FullName).FullName;
    //    private static readonly string logFilePath = Path.Combine(modulePath, "ModuleData/log.txt");

    //    public static void Log(string message)
    //    {
    //        using (StreamWriter writer = new StreamWriter(logFilePath, true))
    //        {
    //            writer.WriteLine(DateTime.Now.ToString() + " - " + message);
    //        }
    //    }
    //}
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
                        //Logger.Log(moduleDataPath);

                        // Build XML path
                        string filePath = Path.Combine(moduleDataPath, xmlInfo.Name);
                        //Logger.Log(filePath);
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

                    //Logger.Log("Culture: " + id + ", Position X: " + x + ", Position Y: " + y);
                    culturePositions[id] = new Vec2(x, y);
                }
                //} else
                //{
                //    Logger.Log("node.name is: " + node.Name);
                //}
            }

            return culturePositions;
        }
    }
    public static class CustomCultureStartingPointsPatch
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
}
