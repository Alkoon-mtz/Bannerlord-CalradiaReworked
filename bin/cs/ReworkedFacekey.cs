using HarmonyLib;
using System.Xml;
using System.Reflection;
using TaleWorlds.CampaignSystem.ViewModelCollection.CharacterCreation;
using TaleWorlds.CampaignSystem;
using TaleWorlds.Core;
using TaleWorlds.ObjectSystem;
using System;
using System.Collections.Generic;

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
                float weight = 0.500f;
                float build = 0.500f;

                var cultureValues = new Dictionary<string, (float weight, float build)>
                {
                    { "aserai", (0.450f, 0.450f) },
                    { "battania", (0.350f, 0.525f) },
                    { "iustrium", (0.600f, 0.475f) },
                    { "empire", (0.450f, 0.375f) },
                    { "vlandia", (0.300f, 0.600f) },
                    { "khuzait", (0.400f, 0.500f) },
                    { "qinguo", (0.450f, 0.375f) },
                    { "rekgeist", (0.650f, 0.450f) },
                    { "scarhok", (0.450f, 0.750f) },
                    { "sturgia", (0.350f, 0.375f) },
                    { "zulizwe", (0.200f, 0.875f) }
                };

                if (cultureValues.TryGetValue(selectedCulture.Culture.StringId, out var values))
                {
                    weight = values.weight;
                    build = values.build;
                }
                string keyValue = "<BodyProperties version='4' age='25.84' weight='"+weight+"' build='"+build+"' key=\"" + selectedCulture.Culture.BodyPropertiesValue + "\" />";

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
