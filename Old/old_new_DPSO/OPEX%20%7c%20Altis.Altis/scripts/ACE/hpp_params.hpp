/*
class Params
	{
	    class ace_title
		    {
		        title = "$STR_params_ACE_title"; // Name that is shown
		        values[] = {0}; //Values that ace_medical_level can be set to
		        texts[] =  {""}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
		        default = 0; //Default value used - Value should be in the values[] list
	   		};
	    class ace_medical_level
		    {
		        title = "$STR_params_ACE_medicalLevel"; // Name that is shown
		        ACE_setting = 1; //Marks param to be read as an ace setting, without this nothing will happen!
		        values[] = {0, 1}; //Values that ace_medical_level can be set to
		        texts[] =  {"$STR_params_ACE_basic", "$STR_params_ACE_advanced"}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
		        default = 1; //Default value used - Value should be in the values[] list
	   		};
	    class ace_medical_medicSetting
		    {
		        title = "$STR_params_ACE_medicSetting"; // Name that is shown
		        ACE_setting = 1; //Marks param to be read as an ace setting, without this nothing will happen!
		        values[] = {0, 1}; //Values that ace_medical_level can be set to
		        texts[] =  {"$STR_params_ACE_basic", "$STR_params_ACE_advanced"}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
		        default = 1; //Default value used - Value should be in the values[] list
	   		};
	    class ace_advanced_fatigue_enabled
		    {
		        title = "$STR_params_ACE_advancedFatigue"; // Name that is shown
		        ACE_setting = 1; //Marks param to be read as an ace setting, without this nothing will happen!
		        values[] = {0, 1}; //Values that ace_medical_level can be set to
		        texts[] =  {"$STR_params_ACE_basic", "$STR_params_ACE_advanced"}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
		        default = 1; //Default value used - Value should be in the values[] list
	   		};
	    class ace_advanced_ballistics_enabled
		    {
		        title = "$STR_params_ACE_advancedBallistic"; // Name that is shown
		        ACE_setting = 1; //Marks param to be read as an ace setting, without this nothing will happen!
		        values[] = {0, 1}; //Values that ace_medical_level can be set to
		        texts[] =  {"$STR_params_ACE_basic", "$STR_params_ACE_advanced"}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
		        default = 1; //Default value used - Value should be in the values[] list
	   		};
	    class ace_nightvision_disableNVGsWithSights
		    {
		        title = "$STR_params_ACE_advancedNVG"; // Name that is shown
		        ACE_setting = 1; //Marks param to be read as an ace setting, without this nothing will happen!
		        values[] = {0, 1}; //Values that ace_medical_level can be set to
		        texts[] =  {"$STR_params_ACE_basic", "$STR_params_ACE_advanced"}; //Text names to show for values (Basic will set level to 1, Advanced will set level to 2)
		        default = 1; //Default value used - Value should be in the values[] list
	   		};
	};
*/

class ACE_Settings
{

class ace_medical_blood_enabledFor {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_common_forceAllSettings {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_common_checkPBOsAction {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_common_checkPBOsCheckAll {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_common_checkPBOsWhitelist {
    value = "[]";
    typeName = "STRING";
    force = 1;
};
class ace_cookoff_enable {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_cookoff_enableAmmobox {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_cookoff_enableAmmoCookoff {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_cookoff_ammoCookoffDuration {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_finger_enabled {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_finger_maxRange {
    value = 4;
    typeName = "SCALAR";
    force = 1;
};
class ace_frag_enabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_frag_spallEnabled {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_frag_reflectionsEnabled {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_frag_maxTrack {
    value = 10;
    typeName = "SCALAR";
    force = 1;
};
class ace_frag_maxTrackPerFrame {
    value = 10;
    typeName = "SCALAR";
    force = 1;
};
class ace_gforces_enabledFor {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_goggles_effects {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_hitreactions_minDamageToTrigger {
    value = 0.1;
    typeName = "SCALAR";
    force = 1;
};
class ace_interaction_enableTeamManagement {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_laser_dispersionCount {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_laserpointer_enabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_magazinerepack_timePerAmmo {
    value = 1.5;
    typeName = "SCALAR";
    force = 1;
};
class ace_magazinerepack_timePerMagazine {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_magazinerepack_timePerBeltLink {
    value = 8;
    typeName = "SCALAR";
    force = 1;
};
class ace_map_BFT_Interval {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_map_BFT_Enabled {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_map_BFT_HideAiGroups {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_map_BFT_ShowPlayerNames {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_map_mapIllumination {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_map_mapGlow {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_map_mapShake {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_map_mapLimitZoom {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_map_mapShowCursorCoordinates {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_map_defaultChannel {
    value = -1;
    typeName = "SCALAR";
    force = 1;
};
class ace_map_gestures_enabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_map_gestures_maxRange {
    value = 7;
    typeName = "SCALAR";
    force = 1;
};
class ace_map_gestures_interval {
    value = 0.03;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_level {
    value = 1;
    typeName = "SCALAR";
    force = 0;
};
class ace_medical_medicSetting {
    value = 1;
    typeName = "SCALAR";
    force = 0;
};
class ace_medical_increaseTrainingInLocations {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_enableFor {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_enableOverdosing {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_bleedingCoefficient {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_painCoefficient {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_enableAirway {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_enableFractures {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_enableAdvancedWounds {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_enableVehicleCrashes {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_enableScreams {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_playerDamageThreshold {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_AIDamageThreshold {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_enableUnconsciousnessAI {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_remoteControlledAI {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_preventInstaDeath {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_enableRevive {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_maxReviveTime {
    value = 120;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_amountOfReviveLives {
    value = -1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_allowDeadBodyMovement {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_allowLitterCreation {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_litterSimulationDetail {
    value = 3;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_litterCleanUpDelay {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_medicSetting_basicEpi {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_medicSetting_PAK {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_medicSetting_SurgicalKit {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_consumeItem_PAK {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_consumeItem_SurgicalKit {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_useLocation_basicEpi {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_useLocation_PAK {
    value = 3;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_useLocation_SurgicalKit {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_useCondition_PAK {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_useCondition_SurgicalKit {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_keepLocalSettingsSynced {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_healHitPointAfterAdvBandage {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_painIsOnlySuppressed {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_allowUnconsciousAnimationOnTreatment {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_moveUnitsFromGroupOnUnconscious {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_medical_delayUnconCaptive {
    value = 3;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_ai_enabledFor {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_menu_allow {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_medical_menu_maxRange {
    value = 3;
    typeName = "SCALAR";
    force = 1;
};
class ace_microdagr_mapDataAvailable {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_missileguidance_enabled {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_mk6mortar_airResistanceEnabled {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_mk6mortar_allowComputerRangefinder {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_mk6mortar_allowCompass {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_mk6mortar_useAmmoHandling {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_nametags_showCursorTagForVehicles {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_nametags_playerNamesViewDistance {
    value = 5;
    typeName = "SCALAR";
    force = 1;
};
class ace_nametags_playerNamesMaxAlpha {
    value = 0.8;
    typeName = "SCALAR";
    force = 1;
};
class ace_nightvision_disableNVGsWithSights {
    value = 1;
    typeName = "BOOL";
    force = 0;
};
class ace_overheating_overheatingDispersion {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_overheating_unJamOnreload {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_overheating_unJamFailChance {
    value = 0.1;
    typeName = "SCALAR";
    force = 1;
};
class ace_overheating_enabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_overpressure_distanceCoefficient {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_quickmount_distance {
    value = 3;
    typeName = "SCALAR";
    force = 1;
};
class ace_quickmount_speed {
    value = 18;
    typeName = "SCALAR";
    force = 1;
};
class ace_rearm_level {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_rearm_supply {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_refuel_rate {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_refuel_hoseLength {
    value = 12;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_engineerSetting_repair {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_engineerSetting_wheel {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_repairDamageThreshold {
    value = 0.6;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_repairDamageThreshold_engineer {
    value = 0.4;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_consumeItem_toolKit {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_fullRepairLocation {
    value = 3;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_engineerSetting_fullRepair {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_addSpareParts {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_repair_wheelRepairRequiredItems {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_repair_autoShutOffEngineWhenStartingRepair {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_respawn_savePreDeathGear {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_respawn_removeDeadBodiesDisconnected {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_respawn_bodyRemoveTimer {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_scopes_enabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_scopes_forceUseOfAdjustmentTurrets {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_scopes_correctZeroing {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_scopes_overwriteZeroRange {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_scopes_defaultZeroRange {
    value = 100;
    typeName = "SCALAR";
    force = 1;
};
class ace_scopes_zeroReferenceTemperature {
    value = 15;
    typeName = "SCALAR";
    force = 1;
};
class ace_scopes_zeroReferenceBarometricPressure {
    value = 1013.25;
    typeName = "SCALAR";
    force = 1;
};
class ace_scopes_zeroReferenceHumidity {
    value = 0.5;
    typeName = "SCALAR";
    force = 1;
};
class ace_scopes_deduceBarometricPressureFromTerrainAltitude {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_spectator_filterUnits {
    value = 2;
    typeName = "SCALAR";
    force = 1;
};
class ace_spectator_filterSides {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_spectator_restrictModes {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_spectator_restrictVisions {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_switchunits_enableSwitchUnits {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_switchunits_switchToWest {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_switchunits_switchToEast {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_switchunits_switchToIndependent {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_switchunits_switchToCivilian {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_switchunits_enableSafeZone {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_switchunits_safeZoneRadius {
    value = 100;
    typeName = "SCALAR";
    force = 1;
};
class ace_ui_allowSelectiveUI {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_vehiclelock_defaultLockpickStrength {
    value = 10;
    typeName = "SCALAR";
    force = 1;
};
class ace_vehiclelock_lockVehicleInventory {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_vehiclelock_vehicleStartingLockState {
    value = -1;
    typeName = "SCALAR";
    force = 1;
};
class ace_viewdistance_enabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_viewdistance_limitViewDistance {
    value = 10000;
    typeName = "SCALAR";
    force = 1;
};
class ace_weather_enableServerController {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_weather_useACEWeather {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_weather_syncRain {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_weather_syncWind {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_weather_syncMisc {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_weather_serverUpdateInterval {
    value = 60;
    typeName = "SCALAR";
    force = 1;
};
class ace_winddeflection_enabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_winddeflection_vehicleEnabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_winddeflection_simulationInterval {
    value = 0.05;
    typeName = "SCALAR";
    force = 1;
};
class ace_winddeflection_simulationRadius {
    value = 3000;
    typeName = "SCALAR";
    force = 1;
};
class ace_zeus_zeusAscension {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_zeus_zeusBird {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_zeus_remoteWind {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_zeus_radioOrdnance {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_zeus_revealMines {
    value = 0;
    typeName = "SCALAR";
    force = 1;
};
class ace_zeus_autoAddObjects {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_fatigue_enabled {
    value = 1;
    typeName = "BOOL";
    force = 0;
};
class ace_advanced_fatigue_performanceFactor {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_advanced_fatigue_recoveryFactor {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_advanced_fatigue_loadFactor {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_advanced_fatigue_terrainGradientFactor {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_advanced_throwing_enablePickUp {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_throwing_enablePickUpAttached {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_captives_allowHandcuffOwnSide {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_captives_requireSurrender {
    value = 1;
    typeName = "SCALAR";
    force = 1;
};
class ace_captives_allowSurrender {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_cargo_enable {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_cargo_paradropTimeCoefficent {
    value = 2.5;
    typeName = "SCALAR";
    force = 1;
};
class ace_explosives_requireSpecialist {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_explosives_punishNonSpecialists {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_explosives_explodeOnDefuse {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_hearing_enableCombatDeafness {
    value = 1;
    typeName = "BOOL";
    force = 0;
};
class ace_hearing_earplugsVolume {
    value = 0.5;
    typeName = "SCALAR";
    force = 1;
};
class ace_hearing_unconsciousnessVolume {
    value = 0.4;
    typeName = "SCALAR";
    force = 1;
};
class ace_hearing_enabledForZeusUnits {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_hearing_autoAddEarplugsToUnits {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_enabled {
    value = 1;
    typeName = "BOOL";
    force = 0;
};
class ace_advanced_ballistics_simulateForSnipers {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_simulateForGroupMembers {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_simulateForEveryone {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_disabledInFullAutoMode {
    value = 0;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_ammoTemperatureEnabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_barrelLengthInfluenceEnabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_bulletTraceEnabled {
    value = 1;
    typeName = "BOOL";
    force = 1;
};
class ace_advanced_ballistics_simulationInterval {
    value = 0.05;
    typeName = "SCALAR";
    force = 1;
};
class ace_advanced_ballistics_simulationRadius {
    value = 3000;
    typeName = "SCALAR";
    force = 1;
}
};