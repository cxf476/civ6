UPDATE AiFavoredItems SET Value='-100', Favored='0'  WHERE Item='PSEUDOYIELD_NUCLEAR_WEAPON';
UPDATE AiFavoredItems SET Value='-100', Favored='0'  WHERE Item='TECH_NUCLEAR_FUSION';
UPDATE AiFavoredItems SET Value='-100', Favored='0'  WHERE Item='PROJECT_LAUNCH_MARS_REACTOR';
UPDATE AiFavoredItems SET Value='-100', Favored='0'  WHERE Item='PROJECT_LAUNCH_MARS_HABITATION';
UPDATE AiFavoredItems SET Value='-100', Favored='0'  WHERE Item='PROJECT_LAUNCH_MARS_HYDROPONICS';
UPDATE AiFavoredItems SET Value='-100', Favored='0'  WHERE Item='PROJECT_LAUNCH_EARTH_SATELLITE';
UPDATE AiFavoredItems SET Value='-100', Favored='0'  WHERE Item='PROJECT_LAUNCH_MOON_LANDING';

INSERT INTO Types ('Type', 'Kind') VALUES ('TRAIT_HUMAN_PLAYER', 'KIND_TRAIT');
INSERT INTO Types ('Type', 'Kind') VALUES ('BUILDING_HUMAN_PLAYER', 'KIND_BUILDING');
INSERT INTO Traits ('TraitType', 'Name', 'Description') VALUES ('TRAIT_HUMAN_PLAYER', 'AAA Trait', 'AAA Cheat trait for human player');
INSERT INTO CivilizationTraits ('CivilizationType', 'TraitType') VALUES ('CIVILIZATION_RUSSIA', 'TRAIT_HUMAN_PLAYER');

-- INSERT INTO TraitModifiers ('TraitType', 'ModifierId') VALUES ('TRAIT_HUMAN_PLAYER', 'TRAIT_BUILDER_WONDER_PERCENT');
-- INSERT INTO TraitModifiers ('TraitType', 'ModifierId') VALUES ('TRAIT_HUMAN_PLAYER', 'TRAIT_ADJUST_BUILDER_CHARGES');
-- INSERT INTO LeaderTraits ('LeaderType', 'TraitType') VALUES ('LEADER_PEDRO', 'FIRST_EMPEROR_TRAIT');

INSERT INTO Buildings ('BuildingType', 'TraitType', 'Name', 'Description', 'PurchaseYield', 'Cost', 'AdvisorType', PrereqTech, PrereqDistrict, Housing, Entertainment) VALUES ('BUILDING_HUMAN_PLAYER', 'TRAIT_HUMAN_PLAYER', 'AAA Building', 'AAA  Cheating Building for Human Player', 'YIELD_GOLD', '1', 'ADVISOR_CULTURE', NULL, 'DISTRICT_CITY_CENTER', '0', '2');


UPDATE Units SET BaseMoves='3', Range='4' WHERE UnitType='UNIT_ROCKET_ARTILLERY';
UPDATE Units SET BaseSightRange='3', AirSlots='7' WHERE UnitType='UNIT_AIRCRAFT_CARRIER';

UPDATE Units SET PrereqTech=NULL, BaseMoves='4' WHERE UnitType='UNIT_MEDIC';
UPDATE Units SET PrereqTech=NULL, BaseMoves='5', BaseSightRange='4' WHERE UnitType='UNIT_OBSERVATION_BALLOON';
-- DELETE FROM  TypeTags WHERE Type='UNIT_ARCHER';
-- INSERT INTO TypeTags ('Tag', 'Type') VALUES ('CLASS_FORWARD_OBSERVER', 'UNIT_ARCHER');
-- INSERT INTO TypeTags ('Tag', 'Type') VALUES ('CLASS_SIEGE', 'UNIT_ARCHER');
-- INSERT INTO TypeTags ('Tag', 'Type') VALUES ('CLASS_SIEGE_SETUP', 'UNIT_ARCHER'); 
-- DELETE FROM  TypeTags WHERE Type='UNIT_SLINGER';
-- INSERT INTO TypeTags ('Tag', 'Type') VALUES ('CLASS_FORWARD_OBSERVER', 'UNIT_SLINGER');
-- INSERT INTO TypeTags ('Tag', 'Type') VALUES ('CLASS_SIEGE', 'UNIT_SLINGER');
-- INSERT INTO TypeTags ('Tag', 'Type') VALUES ('CLASS_SIEGE_SETUP', 'UNIT_SLINGER');


INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_JET_FIGHTER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_JET_BOMBER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_ANTIAIR_GUN', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MOBILE_SAM', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MODERN_AT', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_HELICOPTER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_ROCKET_ARTILLERY', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MECHANIZED_INFANTRY', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MODERN_ARMOR', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_SUBMARINE', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_DESTROYER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_NUCLEAR_SUBMARINE', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_AIRCRAFT_CARRIER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MISSILE_CRUISER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_SPY', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_BOMBER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MILITARY_ENGINEER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_ARCHAEOLOGIST', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MEDIC', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_OBSERVATION_BALLOON', 'BUILDING_HUMAN_PLAYER');

DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_JET_FIGHTER';
DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_ROCKET_ARTILLERY';
DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_MECHANIZED_INFANTRY';
DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_MODERN_ARMOR';
DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_MODERN_AT';
DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_HELICOPTER';
DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_DESTROYER';
DELETE FROM UnitUpgrades WHERE UpgradeUnit='UNIT_MISSILE_CRUISER';

-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_JET_FIGHTER';
-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_ROCKET_ARTILLERY';
-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_MECHANIZED_INFANTRY';
-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_MODERN_ARMOR';
-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_MODERN_AT';
-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_HELICOPTER';
-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_DESTROYER';
-- UPDATE Units SET TraitType='TRAIT_HUMAN_PLAYER' WHERE UnitType='UNIT_MISSILE_CRUISER';

-- UPDATE Buildings SET TraitType='TRAIT_HUMAN_PLAYER', RequiresPlacement='0' WHERE IsWonder='1';
-- UPDATE Buildings SET ObsoleteEra='NO_ERA', MaxWorldInstances = '-1', MaxPlayerInstances = '1' WHERE IsWonder='1';
UPDATE Buildings SET ObsoleteEra='NO_ERA', Cost='10' WHERE IsWonder='1';

INSERT INTO Building_YieldChanges('BuildingType', 'YieldType', 'YieldChange') VALUES ('BUILDING_HUMAN_PLAYER', 'YIELD_PRODUCTION', '3');
INSERT INTO Building_YieldChanges('BuildingType', 'YieldType', 'YieldChange') VALUES ('BUILDING_HUMAN_PLAYER', 'YIELD_FAITH', '2');
INSERT INTO Building_YieldChanges('BuildingType', 'YieldType', 'YieldChange') VALUES ('BUILDING_HUMAN_PLAYER', 'YIELD_CULTURE', '2');
INSERT INTO Building_GreatPersonPoints('BuildingType', 'GreatPersonClassType', 'PointsPerTurn') VALUES ('BUILDING_HUMAN_PLAYER', 'GREAT_PERSON_CLASS_PROPHET', '2');

-- Gloabl Wonder Effects 
UPDATE RequirementSetRequirements SET RequirementId='REQUIRES_PLAYER' WHERE RequirementSetId='CITY_HAS_CHICHEN_ITZA_REQUIREMENTS';
UPDATE RequirementSetRequirements SET RequirementId='REQUIRES_PLAYER' WHERE RequirementSetId='CITY_HAS_LIGHTHOUSE_REQUIREMENTS';
UPDATE RequirementSetRequirements SET RequirementId='REQUIRES_PLAYER' WHERE RequirementSetId='CITY_HAS_PETRA_REQUIREMENTS';
UPDATE RequirementSetRequirements SET RequirementId='REQUIRES_PLAYER' WHERE RequirementSetId='CITY_HAS_RUHR_VALLEY_REQUIREMENTS';

-- workers can build road
UPDATE Route_ValidBuildUnits SET UnitType='UNIT_BUILDER' WHERE RouteType='ROUTE_ANCIENT_ROAD';
UPDATE Route_ValidBuildUnits SET UnitType='UNIT_BUILDER' WHERE RouteType='ROUTE_MEDIEVAL_ROAD';
UPDATE Route_ValidBuildUnits SET UnitType='UNIT_BUILDER' WHERE RouteType='ROUTE_INDUSTRIAL_ROAD';
UPDATE Route_ValidBuildUnits SET UnitType='UNIT_BUILDER' WHERE RouteType='ROUTE_MODERN_ROAD';

--INSERT INTO Route_ValidBuildUnits('RouteType', 'UnitType') VALUES ('ROUTE_ANCIENT_ROAD', 'UNIT_BUILDER');
--INSERT INTO Route_ValidBuildUnits('RouteType', 'UnitType') VALUES ('ROUTE_MEDIEVAL_ROAD', 'UNIT_BUILDER');
--INSERT INTO Route_ValidBuildUnits('RouteType', 'UnitType') VALUES ('ROUTE_INDUSTRIAL_ROAD', 'UNIT_BUILDER');
--INSERT INTO Route_ValidBuildUnits('RouteType', 'UnitType') VALUES ('ROUTE_MODERN_ROAD', 'UNIT_BUILDER');

-- disable nukes
-- DELETE FROM Projects WHERE ProjectType='PROJECT_MANHATTAN_PROJECT';
-- DELETE FROM Projects WHERE ProjectType='PROJECT_BUILD_NUCLEAR_DEVICE';
-- DELETE FROM Projects WHERE ProjectType='PROJECT_BUILD_THERMONUCLEAR_DEVICE';
-- DELETE FROM Projects WHERE ProjectType='PROJECT_OPERATION_IVY';

-- quick nukes
-- UPDATE Projects SET Cost='1' WHERE ProjectType='PROJECT_MANHATTAN_PROJECT';

-- WarmongerPercent adjust cheat
-- UPDATE DiplomaticActions SET CaptureWarmongerPercent='-2000' WHERE DiplomaticActionType='DIPLOACTION_JOINT_WAR';
UPDATE DiplomaticActions SET CaptureWarmongerPercent='0' WHERE DiplomaticActionType='DIPLOACTION_DECLARE_PROTECTORATE_WAR';
-- UPDATE DiplomaticActions SET WarmongerPercent="0", CaptureWarmongerPercent='-100000', RazeWarmongerPercent='0' WHERE DiplomaticActionType='DIPLOACTION_DECLARE_FORMAL_WAR';
-- UPDATE DiplomaticActions SET WarmongerPercent="-10000", CaptureWarmongerPercent='-222', RazeWarmongerPercent='-333' WHERE DiplomaticActionType='DIPLOACTION_DECLARE_TERRITORIAL_WAR';
-- UPDATE DiplomaticActions SET WarmongerPercent="-10000", CaptureWarmongerPercent='-222', RazeWarmongerPercent='-333' WHERE DiplomaticActionType='DIPLOACTION_DECLARE_RECONQUEST_WAR';

-- UPDATE GlobalParameters SET VALUE='222' WHERE NAME='WARMONGER_REDUCTION_IF_AT_WAR';
-- UPDATE GlobalParameters SET VALUE='500' WHERE NAME='DIPLOMACY_WARMONGER_POINT_PERCENT_DECAY';
-- UPDATE GlobalParameters SET VALUE='666' WHERE NAME='WARMONGER_REDUCTION_IF_DENOUNCED';
-- UPDATE GlobalParameters SET VALUE='111' WHERE NAME='WARMONGER_FINAL_MAJOR_CITY_MULTIPLIER';
-- UPDATE GlobalParameters SET VALUE='333' WHERE NAME='WARMONGER_CITY_PERCENT_OF_DOW';
-- UPDATE GlobalParameters SET VALUE='444' WHERE NAME='WARMONGER_FINAL_MINOR_CITY_MULTIPLIER';

-- faith enhancement for pantheon
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'DIVINE_SPARK_HOLY_SITE');
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'DIVINE_SPARK_CAMPUS');
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'DIVINE_SPARK_THEATER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GOD_OF_WAR_FAITH_KILLS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'DANCE_OF_THE_AURORA_FAITHTUNDRAADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'DANCE_OF_THE_AURORA_FAITHTUNDRAHILLSADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'DESERT_FOLKLORE_FAITHDESERTADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'DESERT_FOLKLORE_FAITHDESERTHILLSADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'SACRED_PATH_FAITHFEATUREADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'RIVER_GODDESS_HOLY_SITE_AMENITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'MONUMENT_TO_THE_GODS_ANCIENTCLASSICALWONDER');

INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'LADY_OF_THE_REEDS_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GOD_OF_THE_SEA_FISHINGBOATS_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GOD_OF_THE_OPEN_SKY_PASTURE_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GODDESS_OF_THE_HUNT_CAMP_FOOD');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'STONE_CIRCLES_QUARRY_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'RELIGIOUS_IDOLS_BONUS_MINE_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'RELIGIOUS_IDOLS_LUXURY_MINE_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GOD_OF_CRAFTSMEN_STRATEGIC_MINE_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GODDESS_OF_FESTIVALS_PLANTATION_TAG_FOOD');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'ORAL_TRADITION_PLANTATION_TAG_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GOD_OF_THE_FORGE_UNIT_ANCIENT_CLASSICAL_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GOD_OF_HEALING_UNIT_HEALING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'INITIATION_RITES_FAITH_DISPERSAL');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'FERTILITY_RITES_GROWTH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'RELIGIOUS_SETTLEMENTS_CULTUREBORDER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GODDESS_OF_THE_HARVEST_HARVEST');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'GODDESS_OF_THE_HARVEST_REMOVE_FEATURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'CITY_PATRON_GODDESS_DISTRICT_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_SPARK', 'EARTH_GODDESS_APPEAL_FAITH');

-- faith enhancement for founder 
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'CHURCH_PROPERTY_GOLD_CITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'LAY_MINISTRY_CULTURE_DISTRICTS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'LAY_MINISTRY_FAITH_DISTRICTS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'PILGRIMAGE_FAITH_FOREIGN_CITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'STEWARDSHIP_SCIENCE_DISTRICTS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'STEWARDSHIP_GOLD_DISTRICTS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_DIVINE_INSPIRATION', 'TITHE_GOLD_FOLLOWER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'WORLD_CHURCH_CULTURE_FOREIGN_FOLLOWER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'CROSS_CULTURAL_DIALOGUE_SCIENCE_FOREIGN_FOLLOWER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIGIOUS_UNITY_ENVOY_ON_ADOPTION');

-- faith enhancement for enhancer
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'DEFENDER_OF_FAITH_COMBAT_BONUS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'HOLY_ORDER_MISSIONARY_DISCOUNT');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'HOLY_ORDER_APOSTLE_DISCOUNT');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ITINERANT_PREACHERS_SPREAD_DISTANCE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'JUST_WAR_COMBAT_BONUS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'MISSIONARY_ZEAL_IGNORE_TERRAIN');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'MONASTIC_ISOLATION_REDUCE_COMBAT_LOSS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'SCRIPTURE_SPEAD_STRENGTH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'BURIAL_GROUNDS_CULTURE_BOMB_TRIGGER_HOLY_SITE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIGIOUS_COLONIZATION_AUTO_SPREAD');

-- faith enhancement for follower
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'DIVINE_INSPIRATION_WONDER_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIGIOUS_COMMUNITY_SHRINE_HOUSING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIGIOUS_COMMUNITY_TEMPLE_HOUSING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIGIOUS_COMMUNITY_STAVE_HOUSING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'FEED_THE_WORLD_SHRINE_FOOD');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'FEED_THE_WORLD_TEMPLE_FOOD');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'JESUIT_EDUCATION_SCIENCE_BUILDINGS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'JESUIT_EDUCATION_CULTURE_BUILDINGS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIQUARIES_RELIC_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIQUARIES_RELIC_TOURISM');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'WORK_ETHIC_FOLLOWER_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ZEN_MEDITATION_AMENITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'CHORAL_MUSIC_SHRINE_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'CHORAL_MUSIC_TEMPLE_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_WARRIOR_MONKS');


-- faith enhancement for worship
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_CATHEDRAL');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_GURDWARA');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_MEETING_HOUSE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_MOSQUE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_PAGODA');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_SYNAGOGUE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_WAT');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_STUPA');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'ALLOW_DAR_E_MEHR');

-- UPDATE Beliefs SET BeliefClassType='BELIEF_CLASS_FOUNDER' WHERE BeliefType='BELIEF_ITINERANT_PREACHERS';

