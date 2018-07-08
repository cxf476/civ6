UPDATE AiFavoredItems SET Value='0', Favored='0'  WHERE Item='PSEUDOYIELD_NUCLEAR_WEAPON';
UPDATE AiFavoredItems SET Favored='0'  WHERE Item='TECH_NUCLEAR_FUSION';
UPDATE AiFavoredItems SET Favored='0'  WHERE Item='PROJECT_LAUNCH_MARS_REACTOR';
UPDATE AiFavoredItems SET Favored='0'  WHERE Item='PROJECT_LAUNCH_MARS_HABITATION';
UPDATE AiFavoredItems SET Favored='0'  WHERE Item='PROJECT_LAUNCH_MARS_HYDROPONICS';

INSERT INTO Types ('Type', 'Kind') VALUES ('TRAIT_HUMAN_PLAYER', 'KIND_TRAIT');
INSERT INTO Types ('Type', 'Kind') VALUES ('BUILDING_HUMAN_PLAYER', 'KIND_BUILDING');
INSERT INTO Traits ('TraitType', 'Name', 'Description') VALUES ('TRAIT_HUMAN_PLAYER', 'AAA Trait', 'AAA Cheat trait for human player');
INSERT INTO CivilizationTraits ('CivilizationType', 'TraitType') VALUES ('CIVILIZATION_ARABIA', 'TRAIT_HUMAN_PLAYER');

-- INSERT INTO TraitModifiers ('TraitType', 'ModifierId') VALUES ('TRAIT_HUMAN_PLAYER', 'TRAIT_BUILDER_WONDER_PERCENT');
-- INSERT INTO TraitModifiers ('TraitType', 'ModifierId') VALUES ('TRAIT_HUMAN_PLAYER', 'TRAIT_ADJUST_BUILDER_CHARGES');
-- INSERT INTO LeaderTraits ('LeaderType', 'TraitType') VALUES ('LEADER_PEDRO', 'FIRST_EMPEROR_TRAIT');

INSERT INTO Buildings ('BuildingType', 'TraitType', 'Name', 'Description', 'PurchaseYield', 'Cost', 'AdvisorType', PrereqTech, PrereqDistrict, Housing, Entertainment) VALUES ('BUILDING_HUMAN_PLAYER', 'TRAIT_HUMAN_PLAYER', 'AAA Building', 'AAA  Cheating Building for Human Player', 'YIELD_GOLD', '1', 'ADVISOR_CULTURE', NULL, 'DISTRICT_CITY_CENTER', '0', '2');


UPDATE Units SET BaseMoves='3', Range='4' WHERE UnitType='UNIT_ROCKET_ARTILLERY';
UPDATE Units SET BaseSightRange='3', AirSlots='5' WHERE UnitType='UNIT_AIRCRAFT_CARRIER';

-- UPDATE Units SET PrereqTech=NULL WHERE UnitType='UNIT_BOMBER';
-- UPDATE Units SET PrereqTech=NULL WHERE UnitType='UNIT_FIGHTER';

INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_JET_FIGHTER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_JET_BOMBER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_ANTIAIR_GUN', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MOBILE_SAM', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MODERN_AT', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_ROCKET_ARTILLERY', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MECHANIZED_INFANTRY', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MODERN_ARMOR', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_NUCLEAR_SUBMARINE', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_AIRCRAFT_CARRIER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MISSILE_CRUISER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_SPY', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_BOMBER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_MILITARY_ENGINEER', 'BUILDING_HUMAN_PLAYER');
INSERT INTO Unit_BuildingPrereqs ('UNIT', 'PrereqBuilding') VALUES ('UNIT_ARCHAEOLOGIST', 'BUILDING_HUMAN_PLAYER');

-- UPDATE Buildings SET TraitType='TRAIT_HUMAN_PLAYER', RequiresPlacement='0' WHERE IsWonder='1';
-- UPDATE Buildings SET ObsoleteEra='NO_ERA', MaxWorldInstances = '-1', MaxPlayerInstances = '1' WHERE IsWonder='1';
UPDATE Buildings SET ObsoleteEra='NO_ERA', TraitType='TRAIT_HUMAN_PLAYER' WHERE IsWonder='1';

INSERT INTO Building_YieldChanges('BuildingType', 'YieldType', 'YieldChange') VALUES ('BUILDING_HUMAN_PLAYER', 'YIELD_PRODUCTION', '3');
INSERT INTO Building_YieldChanges('BuildingType', 'YieldType', 'YieldChange') VALUES ('BUILDING_HUMAN_PLAYER', 'YIELD_FAITH', '50');
INSERT INTO Building_YieldChanges('BuildingType', 'YieldType', 'YieldChange') VALUES ('BUILDING_HUMAN_PLAYER', 'YIELD_CULTURE', '2');
INSERT INTO Building_GreatPersonPoints('BuildingType', 'GreatPersonClassType', 'PointsPerTurn') VALUES ('BUILDING_HUMAN_PLAYER', 'GREAT_PERSON_CLASS_PROPHET', '20');

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

-- faith enhancement for pantheon
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'DANCE_OF_THE_AURORA_FAITHTUNDRAADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'DANCE_OF_THE_AURORA_FAITHTUNDRAHILLSADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'DESERT_FOLKLORE_FAITHDESERTADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'DESERT_FOLKLORE_FAITHDESERTHILLSADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'SACRED_PATH_FAITHFEATUREADJACENCY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'RIVER_GODDESS_HOLY_SITE_AMENITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'MONUMENT_TO_THE_GODS_ANCIENTCLASSICALWONDER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'DIVINE_SPARK_HOLY_SITE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'DIVINE_SPARK_CAMPUS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'DIVINE_SPARK_THEATER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'LADY_OF_THE_REEDS_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GOD_OF_THE_SEA_FISHINGBOATS_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GOD_OF_THE_OPEN_SKY_PASTURE_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GODDESS_OF_THE_HUNT_CAMP_FOOD');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'STONE_CIRCLES_QUARRY_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'RELIGIOUS_IDOLS_BONUS_MINE_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'RELIGIOUS_IDOLS_LUXURY_MINE_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GOD_OF_CRAFTSMEN_STRATEGIC_MINE_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GODDESS_OF_FESTIVALS_PLANTATION_TAG_FOOD');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'ORAL_TRADITION_PLANTATION_TAG_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GOD_OF_THE_FORGE_UNIT_ANCIENT_CLASSICAL_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GOD_OF_HEALING_UNIT_HEALING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'INITIATION_RITES_FAITH_DISPERSAL');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'FERTILITY_RITES_GROWTH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'RELIGIOUS_SETTLEMENTS_CULTUREBORDER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GODDESS_OF_THE_HARVEST_HARVEST');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'GODDESS_OF_THE_HARVEST_REMOVE_FEATURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'CITY_PATRON_GODDESS_DISTRICT_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_GOD_OF_WAR', 'EARTH_GODDESS_APPEAL_FAITH');


-- faith enhancement for follower
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'DIVINE_INSPIRATION_WONDER_FAITH');
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'FEED_THE_WORLD_SHRINE_FOOD');
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'FEED_THE_WORLD_TEMPLE_FOOD');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'JESUIT_EDUCATION_SCIENCE_BUILDINGS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'JESUIT_EDUCATION_CULTURE_BUILDINGS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'RELIQUARIES_RELIC_FAITH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'RELIQUARIES_RELIC_TOURISM');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'RELIGIOUS_COMMUNITY_SHRINE_HOUSING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'RELIGIOUS_COMMUNITY_TEMPLE_HOUSING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'RELIGIOUS_COMMUNITY_STAVE_HOUSING');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'WORK_ETHIC_FOLLOWER_PRODUCTION');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'ZEN_MEDITATION_AMENITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'CHORAL_MUSIC_SHRINE_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'CHORAL_MUSIC_TEMPLE_CULTURE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_FEED_THE_WORLD', 'ALLOW_WARRIOR_MONKS');


-- faith enhancement for worship
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_CATHEDRAL');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_GURDWARA');
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_MEETING_HOUSE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_MOSQUE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_PAGODA');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_SYNAGOGUE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_WAT');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_STUPA');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_MEETING_HOUSE', 'ALLOW_DAR_E_MEHR');


-- faith enhancement for founder 
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'CHURCH_PROPERTY_GOLD_CITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'LAY_MINISTRY_CULTURE_DISTRICTS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'LAY_MINISTRY_FAITH_DISTRICTS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'PILGRIMAGE_FAITH_FOREIGN_CITY');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'STEWARDSHIP_SCIENCE_DISTRICTS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'STEWARDSHIP_GOLD_DISTRICTS');
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'TITHE_GOLD_FOLLOWER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'WORLD_CHURCH_CULTURE_FOREIGN_FOLLOWER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'CROSS_CULTURAL_DIALOGUE_SCIENCE_FOREIGN_FOLLOWER');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_TITHE', 'RELIGIOUS_UNITY_ENVOY_ON_ADOPTION');

-- faith enhancement for enhancer
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'DEFENDER_OF_FAITH_COMBAT_BONUS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'HOLY_ORDER_MISSIONARY_DISCOUNT');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'HOLY_ORDER_APOSTLE_DISCOUNT');
-- INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'ITINERANT_PREACHERS_SPREAD_DISTANCE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'JUST_WAR_COMBAT_BONUS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'MISSIONARY_ZEAL_IGNORE_TERRAIN');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'MONASTIC_ISOLATION_REDUCE_COMBAT_LOSS');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'SCRIPTURE_SPEAD_STRENGTH');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'BURIAL_GROUNDS_CULTURE_BOMB_TRIGGER_HOLY_SITE');
INSERT INTO BeliefModifiers ('BeliefType', 'ModifierId') VALUES ('BELIEF_ITINERANT_PREACHERS', 'RELIGIOUS_COLONIZATION_AUTO_SPREAD');





