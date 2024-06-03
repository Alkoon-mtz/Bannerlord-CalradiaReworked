using HarmonyLib;
using System.Xml;
using System.Reflection;
using TaleWorlds.CampaignSystem.ViewModelCollection.CharacterCreation;
using TaleWorlds.CampaignSystem;
using TaleWorlds.Core;
using TaleWorlds.ObjectSystem;

namespace Split
{
    internal class ReworkedFacekey
    {
        [HarmonyPatch(typeof(CultureObject))]
        [HarmonyPatch("Deserialize")]
        public static class CultureObjectDeserializePatch
        {
            // Add default_face_key found in culture.xml to Deserialize
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
        public class CharacterCreationCultureStageVMInitializePlayersFaceKeyAccordingToCultureSelectionPatch
        {
            // Use default_face_key to set default character of a culture instead of hardcoded one
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
