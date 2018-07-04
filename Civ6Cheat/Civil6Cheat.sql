UPDATE AiFavoredItems SET Value='0', Favored='0'  WHERE Item='PSEUDOYIELD_NUCLEAR_WEAPON';

INSERT INTO Types ('Type', 'Kind') VALUES ('TRAIT_HUMAN_PLAYER', 'KIND_TRAIT');
INSERT INTO Types ('Type', 'Kind') VALUES ('BUILDING_HUMAN_PLAYER', 'KIND_BUILDING');
INSERT INTO Traits ('TraitType', 'Name', 'Description') VALUES ('TRAIT_HUMAN_PLAYER', 'AAA Trait', 'AAA Cheat trait for human player');
INSERT INTO CivilizationTraits ('CivilizationType', 'TraitType') VALUES ('CIVILIZATION_CHINA', 'TRAIT_HUMAN_PLAYER');

INSERT INTO Buildings ('BuildingType', 'TraitType', 'Name', 'Description', 'PurchaseYield', 'Cost', 'AdvisorType', PrereqTech, PrereqDistrict, Housing) VALUES ('BUILDING_HUMAN_PLAYER', 'TRAIT_HUMAN_PLAYER', 'AAA Building', 'AAA  Cheating Building for Human Player', 'YIELD_GOLD', '1', 'ADVISOR_CULTURE', NULL, 'DISTRICT_CITY_CENTER', '10');


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

-- UPDATE Buildings SET TraitType='TRAIT_HUMAN_PLAYER', RequiresPlacement='0' WHERE IsWonder='1';
-- UPDATE Buildings SET ObsoleteEra='NO_ERA', MaxWorldInstances = '-1', MaxPlayerInstances = '1' WHERE IsWonder='1';
UPDATE Buildings SET ObsoleteEra='NO_ERA', TraitType='TRAIT_HUMAN_PLAYER' WHERE IsWonder='1';

INSERT INTO Building_YieldChanges('BuildingType', 'YieldType', 'YieldChange') VALUES ('BUILDING_HUMAN_PLAYER', 'YIELD_PRODUCTION', '20');