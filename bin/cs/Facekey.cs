using HarmonyLib;
using System.Xml;
using System.Reflection;
using TaleWorlds.CampaignSystem.ViewModelCollection.CharacterCreation;
using TaleWorlds.CampaignSystem;
using TaleWorlds.Core;
using TaleWorlds.ObjectSystem;

namespace Split
{
    internal class InitializePlayersFaceKeyAccordingToCultureSelectionPatch
    {
        [HarmonyPatch(typeof(CultureObject))]
        [HarmonyPatch("Deserialize")]
        public static class CultureObjectPatch
        {
            public static void Postfix(CultureObject __instance, MBObjectManager objectManager, XmlNode node)
            {
                var defaultFaceKeyAttribute = node.Attributes["default_face_key"];
                if (defaultFaceKeyAttribute != null)
                {
                    PropertyInfo bodyPropertiesValueProperty = typeof(CultureObject).GetProperty("BodyPropertiesValue", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance);
                    bodyPropertiesValueProperty?.SetValue(__instance, defaultFaceKeyAttribute.Value);
                }
            }
        }

        [HarmonyPatch(typeof(CharacterCreationCultureStageVM))]
        [HarmonyPatch("InitializePlayersFaceKeyAccordingToCultureSelection")]
        public class FaceKeyPatch
        {
            public static bool Prefix(CharacterCreationCultureVM selectedCulture)
            {
                string keyValue = "<BodyProperties version='4' age='25.84' weight='0.5000' build='0.5000' key=\""+ selectedCulture.Culture.BodyPropertiesValue + "\" />";

                BodyProperties properties;
                if (BodyProperties.FromString(keyValue, out properties))
                {
                    CharacterObject.PlayerCharacter.UpdatePlayerCharacterBodyProperties(properties, CharacterObject.PlayerCharacter.Race, CharacterObject.PlayerCharacter.IsFemale);
                }
                CharacterObject.PlayerCharacter.Culture = selectedCulture.Culture;
                return false;
            }
        }
    }
}
