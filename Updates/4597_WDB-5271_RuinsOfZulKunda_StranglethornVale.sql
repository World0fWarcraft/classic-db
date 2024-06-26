-- Ruins of Zul'Kunda - Stranglethorn Vale

-- Bloodscalp Clan
-- duplicates
DELETE FROM creature_addon WHERE guid IN (2239,2229,1937,2103,1929,2251);
DELETE FROM creature_movement WHERE Id IN (2239,2229,1937,2103,1929,2251);
DELETE FROM game_event_creature WHERE guid IN (2239,2229,1937,2103,1929,2251);
DELETE FROM game_event_creature_data WHERE guid IN (2239,2229,1937,2103,1929,2251);
DELETE FROM creature_battleground WHERE guid IN (2239,2229,1937,2103,1929,2251);
DELETE FROM creature_linking WHERE guid IN (2239,2229,1937,2103,1929,2251)
 OR master_guid IN (2239,2229,1937,2103,1929,2251);
DELETE FROM creature WHERE guid IN (2239,2229,1937,2103,1929,2251);
-- Updates
UPDATE creature SET spawndist = 0, movementtype = 0 WHERE guid IN (1385);
UPDATE creature SET spawndist = 3, movementtype = 1 WHERE guid IN (1130,1143,1132,1938);
UPDATE creature SET spawndist = 1, movementtype = 1 WHERE guid IN (1121,1089,1086,1081,1090,1122,1139,1137,1140,1148,1145,2235,2222,2122,1936);
UPDATE creature SET position_x = -11545.368, position_y = 649.8269, position_z = 60.287830, spawndist = 1, MovementType = 1 WHERE guid = 2074;
UPDATE creature SET position_x = -11554.0839, position_y = 722.201, position_z = 59.394447, spawndist = 1, MovementType = 1 WHERE guid = 2113;
UPDATE creature SET position_x = -11579.099, position_y = 588.1865, position_z = 50.086143, orientation = 3.19, spawndist = 0, MovementType = 4 WHERE guid = 1129; -- linear
UPDATE creature SET position_x = -11560.155, position_y = 598.2795, position_z = 50.37865, orientation = 2.23402, spawndist = 0, MovementType = 4 WHERE guid = 1120; -- linear
UPDATE creature SET position_x = -11563.247, position_y = 590.5972, position_z = 50.37865, orientation = 0.1772, spawndist = 0, MovementType = 2 WHERE guid = 1060;
UPDATE creature SET position_x = -11781.557, position_y = 603.3591, position_z = 69.03342, spawndist = 0, MovementType = 4 WHERE guid = 2174; -- linear
UPDATE creature SET position_x = -11720.533, position_y = 598.7845, position_z = 50.815952, spawndist = 0, MovementType = 4 WHERE guid = 2172; -- linear
UPDATE creature SET position_x = -11607.504, position_y = 621.993, position_z = 50.92758, spawndist = 0, MovementType = 4 WHERE guid = 994; -- linear
UPDATE creature SET position_x = -11586.557, position_y = 642.0393, position_z = 60.360752, orientation = 5.563, spawndist = 0, MovementType = 2 WHERE guid = 2237;
UPDATE creature SET position_x = -11545.292, position_y = 674.3274, position_z = 61.138184, orientation = 1.56, spawndist = 0, MovementType = 2 WHERE guid = 1940;
UPDATE creature SET position_x = -11529.733, position_y = 724.6316, position_z = 59.4292, orientation = 1.56, spawndist = 0, MovementType = 2 WHERE guid = 2111;
DELETE FROM creature_movement WHERE id IN (1129,1120,1060,2174,2172,994,2237,1940,2111);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- custom made wps corrected
-- 1129
(1129,1 ,-11579.099,588.1865,50.086143,100,1000,0),
(1129,2 ,-11563.012,594.9269,50.37865  ,100,0,0),
(1129,3 ,-11560.201,598.77057,50.37865 ,100,0,0),
(1129,4 ,-11557.672,607.2425,50.50365  ,100,0,0),
(1129,5 ,-11567.962,616.6975,50.200787 ,100,0,0),
(1129,6 ,-11579.864,617.58246,50.304302,100,0,0),
(1129,7 ,-11585.842,615.86554,50.325787,100,0,0),
(1129,8 ,-11587.202,609.3945,50.734356 ,100,0,0),
(1129,9 ,-11587.262,606.8782,50.700787 ,100,0,0),
(1129,10,-11587.289,600.7542,50.575787 ,100,0,0),
(1129,11,-11588.388,591.871,50.336143  ,100,0,0),
(1129,12,-11597.161,582.6409,50.211143 ,100,0,0),
(1129,13,-11602.904,573.65247,50.54935 ,100,0,0),
(1129,14,-11597.364,563.81036,50.094334,100,0,0),
(1129,15,-11582.921,557.4477,49.972996 ,100,0,0),
(1129,16,-11576.104,559.50995,49.847996,100,0,0),
(1129,17,-11559.181,560.5767,50.442394 ,100,0,0),
(1129,18,-11548.377,571.5211,50.62865  ,100,0,0),
(1129,19,-11542.385,592.59247,50.75365,100,1000,0),
-- 1120
(1120,1,-11560.155,598.2795,50.37865,2.23402,21000,0),
(1120,2,-11560.155,598.2795,50.37865,100,0,0),
(1120,3,-11554.717,605.49493,50.50365,100,21000,0),
-- 1060
(1060,1,-11563.247,590.5972,50.37865,0.1772,21000,0),
(1060,2,-11568.845,589.7874,50.336143,100,0,0),
(1060,3,-11574.427,588.8851,50.211143,100,13000,0), 
-- 2174
(2174,1 ,-11781.557,603.3591,69.03342,100,2000,0),
(2174,2 ,-11772.334,605.07666,64.626434,100,0,0),
(2174,3 ,-11766.098,602.81433,61.09821 ,100,0,0),
(2174,4 ,-11756.83,595.6387,52.48765   ,100,0,0),
(2174,5 ,-11747.83,595.79767,50.61265  ,100,0,0),
(2174,6 ,-11734.569,598.0091,50.36265  ,100,0,0),
(2174,7 ,-11700.772,612.43915,49.888103,100,0,0),
(2174,8 ,-11692.223,623.9679,50.25971  ,100,0,0),
(2174,9 ,-11691.947,631.64355,50.285454,100,0,0),
(2174,10,-11693.151,639.1264,49.30852  ,100,0,0),
(2174,11,-11683.043,639.90735,49.43694 ,100,0,0),
(2174,12,-11670.21,627.0417,50.20844   ,100,0,0),
(2174,13,-11661.521,623.62787,50.701927,100,0,0),
(2174,14,-11650.165,616.8991,50.304222,100,2000,0),
-- 2172
(2172,1 ,-11720.533,598.7845,50.815952,100,1000,0),
(2172,2 ,-11713.536,585.1517,50.065952,100,0,0),
(2172,3 ,-11708.964,576.2748,50.17777 ,100,0,0),
(2172,4 ,-11705.922,568.784,49.88248  ,100,0,0),
(2172,5 ,-11699.911,561.3717,49.211056,100,0,0),
(2172,6 ,-11688.881,563.1636,49.58227 ,100,0,0),
(2172,7 ,-11686.858,577.6241,50.76377 ,100,0,0),
(2172,8 ,-11686.812,582.16956,50.63877,100,0,0),
(2172,9 ,-11679.976,586.43604,50.26377,100,0,0),
(2172,10,-11668.203,590.42487,50.38877,100,0,0),
(2172,11,-11663.055,587.26324,50.18193,100,0,0),
(2172,12,-11661.153,582.95624,50.741745,100,0,0),
(2172,13,-11665.067,578.1194,51.688522,100,0,0),
(2172,14,-11668.661,571.12274,51.312477,100,0,0),
(2172,15,-11668.529,561.2612,51.031734,100,0,0),
(2172,16,-11669.139,539.22406,50.81506,100,1000,0),
-- 994
(994,1 ,-11607.504,621.993,50.92758,100,1000,0),
(994,2 ,-11613.513,617.85626,50.42154,100,0,0),
(994,3 ,-11617.233,609.9063,49.71756 ,100,0,0),
(994,4 ,-11618.731,595.4577,49.04935 ,100,0,0),
(994,5 ,-11625.607,591.15936,49.68485,100,0,0),
(994,6 ,-11636.027,589.9484,50.489548,100,0,0),
(994,7 ,-11647.947,589.45807,50.172897,100,0,0),
(994,8 ,-11650.817,613.6836,50.179222,100,0,0),
(994,9 ,-11644.36,644.8411,50.70593,100,0,0),
(994,10,-11644.436,663.8418,50.20593,100,1000,0),
-- 2237
(2237,1 ,-11586.557,642.0393,60.360752,100,40000,0),
(2237,2 ,-11590.802,649.03546,59.583897,100,0,0),
(2237,3 ,-11598.403,649.63794,59.464878,100,0,0),
(2237,4 ,-11607.534,649.12036,59.34957 ,100,0,0),
(2237,5 ,-11615.774,650.8768,59.05831  ,100,0,0),
(2237,6 ,-11617.79,654.1106,58.122276  ,100,0,0),
(2237,7 ,-11619.073,663.6222,55.01217,100,5000,21), -- 30sec 
(2237,8 ,-11619.827,675.8278,51.520103,100,0,0),
(2237,9 ,-11621.15,690.65405,46.31588 ,100,0,0),
(2237,10,-11622.692,703.28296,42.650726,100,5000,21), -- 30sec
(2237,11,-11621.971,691.13885,46.068443,100,0,0),
(2237,12,-11619.705,675.92413,51.51449 ,100,0,0),
(2237,13,-11618.936,666.79645,54.273033,100,0,0),
(2237,14,-11617.274,655.6328,57.819298 ,100,0,0),
(2237,15,-11609.654,649.35657,59.44625 ,100,0,0),
(2237,16,-11598.043,649.42535,59.584873,100,0,0),
(2237,17,-11591.657,646.7858,60.226475 ,100,0,0),
-- 1940
(1940,1,-11545.292,674.3274,61.138184,100,40000,0),
(1940,2,-11546.194,665.564,60.215088,100,0,0),
(1940,3,-11552.324,657.36163,59.75,100,0,0),
(1940,4,-11560.581,654.7049,59.4292,100,0,0),
(1940,5,-11575.074,655.1621,59.518467,100,5000,21), -- 30sec
(1940,6,-11564.941,654.1479,59.4292,100,0,0),
(1940,7,-11556.151,657.3892,59.5542,100,0,0),
(1940,8,-11547.694,662.68915,60.014404,100,0,0),
(1940,9,-11545.208,669.0586,60.403687,100,0,0),
-- 2111
(2111,1 ,-11529.733,724.6316,59.4292,100,55000,0),
(2111,2 ,-11541.664,727.097,59.41463,100,0,0),
(2111,3 ,-11550.667,728.92706,59.53963,100,0,0),
(2111,4 ,-11560.111,730.604,59.53963,100,0,0),
(2111,5 ,-11565.055,729.67017,59.53963,100,0,0),
(2111,6 ,-11574.325,730.3362,59.66463,100,0,0),
(2111,7 ,-11580.219,734.0239,60.545986,100,30000,0),
(2111,8 ,-11571.604,722.6674,59.41463,100,0,0),
(2111,9 ,-11573.89,706.81885,59.53963,100,0,0),
(2111,10,-11570.579,685.58356,59.415344,100,5000,21) , -- 30sec
(2111,11,-11572.285,701.8821,59.53963,100,0,0),
(2111,12,-11568.001,714.88293,59.41463,100,0,0),
(2111,13,-11557.029,720.28613,59.692463,100,0,0),
(2111,14,-11543.949,723.8416,59.41463,100,0,0);

-- not needed anymore
DELETE FROM dbscripts_on_creature_movement WHERE id IN (66001,66002,67101);

-- Spawn Groups
-- some were backported with wrong paths

-- existing Group - corrected
-- group 1
UPDATE creature SET position_x = -11649.008, position_y = 568.4793, position_z = 49.87529, orientation = 1.575, spawndist = 0, movementtype = 0 WHERE guid IN (1926,1927);
DELETE FROM creature_movement WHERE id IN (1926,1927);
DELETE FROM `spawn_group` WHERE id IN (3,19906); -- 3 was original one
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19906, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id IN (3,19906);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19906, 1926, 0),
(19906, 1927, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (3,19906);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19906, 2, 2, 0, 19906, 2, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId IN (1927,19906); -- 1927 was original
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19906,1 ,-11649.008,568.4793,49.87529,100,30000,0),
(19906,2 ,-11652.863,548.8932,48.97816,100,0,0),
(19906,3 ,-11654.62,530.3719,45.169968,100,0,0),
(19906,4 ,-11654.647,504.64117,42.755905,100,0,0),
(19906,5 ,-11655.815,474.1709,42.755905,100,0,0),
(19906,6 ,-11656.302,441.85928,42.755905,100,0,0),
(19906,7 ,-11657.646,426.23178,42.790195,100,0,0),
(19906,8 ,-11657.282,404.14243,42.790195,100,0,0),
(19906,9 ,-11654.637,372.52713,42.728413,100,0,0),
(19906,10,-11663.57,364.17194,42.676476,100,0,0),
(19906,11,-11673.345,357.41055,40.14245,100,0,0),
(19906,12,-11690.088,340.88394,33.79772,100,0,0),
(19906,13,-11708.32,322.12317,26.497808,100,0,0),
(19906,14,-11725.896,303.1632,20.071539,100,0,0),
(19906,15,-11733.851,298.57806,19.7261,100,55000,0),
(19906,16,-11727.41,302.78522,19.719244,100,0,0),
(19906,17,-11705.817,323.59793,27.275274,100,0,0),
(19906,18,-11702.548,330.30524,29.503057,100,0,0),
(19906,19,-11695.49,335.477,31.979362,100,0,0),
(19906,20,-11686.403,344.96875,35.405144,100,0,0),
(19906,21,-11675.289,356.9928,39.777702,100,0,0),
(19906,22,-11656.802,368.4987,42.859516,100,0,0),
(19906,23,-11652.995,373.27594,42.734516,100,0,0),
(19906,24,-11651.994,378.3997,42.734516,100,0,0),
(19906,25,-11653.449,386.47455,42.734516,100,0,0),
(19906,26,-11656.234,402.27502,42.790195,100,0,0),
(19906,27,-11657.113,419.69043,42.84049,100,0,0),
(19906,28,-11656.227,433.39886,42.755905,100,0,0),
(19906,29,-11648.217,452.24582,42.755905,100,0,0),
(19906,30,-11644.288,461.3505,42.755905,100,0,0),
(19906,31,-11642.298,475.2666,42.755905,100,0,0),
(19906,32,-11641.1,495.686,42.7863,100,0,0),
(19906,33,-11645.238,521.6487,43.45012,100,0,0),
(19906,34,-11648.551,543.9121,48.173595,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (1927,19906);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19906,'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 1');

-- group 2
-- This spawn is alternative for group 3 (theres a chance that this npc with summon will spawn instead)
-- missing npc added
DELETE FROM creature_addon WHERE guid IN (2239); -- removed guid reused
DELETE FROM creature_movement WHERE id IN (2239);
DELETE FROM game_event_creature WHERE guid IN (2239);
DELETE FROM game_event_creature_data WHERE guid IN (2239);
DELETE FROM creature_battleground WHERE guid IN (2239);
DELETE FROM creature_linking WHERE guid IN (2239);
DELETE FROM creature where guid IN (2239);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(2239,699,0,1,-11649.008,568.4793,49.87529,1.575,300,300,0,2);
DELETE FROM `spawn_group` WHERE id = 19905;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19905, 'Stranglethorn Vale - Bloodscalp Clan - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19905;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19905, 2239, -1);
DELETE FROM creature_movement WHERE id IN (2239);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(2239,1 ,-11649.008,568.4793,49.87529,100,30000,0),
(2239,2 ,-11652.863,548.8932,48.97816,100,0,0),
(2239,3 ,-11654.62,530.3719,45.169968,100,0,0),
(2239,4 ,-11654.647,504.64117,42.755905,100,0,0),
(2239,5 ,-11655.815,474.1709,42.755905,100,0,0),
(2239,6 ,-11656.302,441.85928,42.755905,100,0,0),
(2239,7 ,-11657.646,426.23178,42.790195,100,0,0),
(2239,8 ,-11657.282,404.14243,42.790195,100,0,0),
(2239,9 ,-11654.637,372.52713,42.728413,100,0,0),
(2239,10,-11663.57,364.17194,42.676476,100,0,0),
(2239,11,-11673.345,357.41055,40.14245,100,0,0),
(2239,12,-11690.088,340.88394,33.79772,100,0,0),
(2239,13,-11708.32,322.12317,26.497808,100,0,0),
(2239,14,-11725.896,303.1632,20.071539,100,0,0),
(2239,15,-11733.851,298.57806,19.7261,100,55000,0),
(2239,16,-11727.41,302.78522,19.719244,100,0,0),
(2239,17,-11705.817,323.59793,27.275274,100,0,0),
(2239,18,-11702.548,330.30524,29.503057,100,0,0),
(2239,19,-11695.49,335.477,31.979362,100,0,0),
(2239,20,-11686.403,344.96875,35.405144,100,0,0),
(2239,21,-11675.289,356.9928,39.777702,100,0,0),
(2239,22,-11656.802,368.4987,42.859516,100,0,0),
(2239,23,-11652.995,373.27594,42.734516,100,0,0),
(2239,24,-11651.994,378.3997,42.734516,100,0,0),
(2239,25,-11653.449,386.47455,42.734516,100,0,0),
(2239,26,-11656.234,402.27502,42.790195,100,0,0),
(2239,27,-11657.113,419.69043,42.84049,100,0,0),
(2239,28,-11656.227,433.39886,42.755905,100,0,0),
(2239,29,-11648.217,452.24582,42.755905,100,0,0),
(2239,30,-11644.288,461.3505,42.755905,100,0,0),
(2239,31,-11642.298,475.2666,42.755905,100,0,0),
(2239,32,-11641.1,495.686,42.7863,100,0,0),
(2239,33,-11645.238,521.6487,43.45012,100,0,0),
(2239,34,-11648.551,543.9121,48.173595,100,0,0);

-- group 3
UPDATE creature SET position_x = -11633.237, position_y = 720.6609, position_z = 40.033295, orientation = 4.75, spawndist = 0, movementtype = 0 WHERE guid IN (2056,2057);
DELETE FROM creature_movement WHERE id IN (2056,2057);
DELETE FROM `spawn_group` WHERE id IN (4,19904); -- 4 was  original
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19904, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 3', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id IN (4,19904);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19904, 2056, 0),
(19904, 2057, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (4,19904);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19904, 2, 2, 0, 19904, 2, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 3');
DELETE FROM `waypoint_path` WHERE PathId IN (2057,19904);  -- was original one
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19904,1 ,-11633.237,720.6609,40.033295,100,13000,0),
(19904,2 ,-11632.786,739.32245,39.857265,100,0,0),
(19904,3 ,-11628.974,753.1196,39.857265 ,100,0,0),
(19904,4 ,-11621.4,761.11896,39.857265  ,100,0,0),
(19904,5 ,-11612.472,766.3683,39.857265 ,100,0,0),
(19904,6 ,-11602.972,766.7055,39.80337  ,100,0,0),
(19904,7 ,-11585.582,766.4818,39.857265 ,100,0,0),
(19904,8 ,-11566.369,766.48126,39.857265,100,0,0),
(19904,9 ,-11557.086,763.7321,40.232265 ,100,25000,0),
(19904,10,-11581.593,766.5556,39.857265 ,100,0,0),
(19904,11,-11595.172,766.2869,39.857265 ,100,0,0),
(19904,12,-11618.649,765.63605,39.857265,100,0,0),
(19904,13,-11624.653,762.3138,39.857265 ,100,0,0),
(19904,14,-11628.538,755.6903,39.857265 ,100,0,0),
(19904,15,-11633.402,729.34406,39.857265,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (2057,19904);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19904,'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 3');

-- group 4
DELETE FROM `spawn_group` WHERE id IN (5,19903); -- 5 was original
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19903, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 4', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id IN (5,19903);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19903, 2395, 0),
(19903, 2396, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (5,19903);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19903, 2, 2, 0, 19903, 2, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 4');
DELETE FROM `waypoint_path` WHERE PathId IN (2395,19903);  -- was original one
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- had to keep original points - data missing to check
(19903,1,-11732.9,697.788,50.7811,100,2000,0),
(19903,2,-11723.3,686.274,49.6561,100,0,0),
(19903,3,-11729.1,694.395,50.716,100,0,0),
(19903,4,-11731.7,728.816,50.7656,100,0,0),
(19903,5,-11732.5,716.788,50.8481,100,2000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (2395,19903);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19903,'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 4');

-- New Groups
-- group 5
UPDATE creature SET position_x = -11523.127, position_y = 550.84155, position_z = 50.172832, spawndist = 0, movementtype = 0 WHERE guid IN (1128,1113);
DELETE FROM creature_movement WHERE id IN (1128,1113);
DELETE FROM `spawn_group` WHERE id = 19902;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19902, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 5', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 19902;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19902, 1128, 0),
(19902, 1113, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19902;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19902, 2, 2, 0, 19902, 2, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 5');
DELETE FROM `waypoint_path` WHERE PathId IN (19902);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19902,1 ,-11523.127,550.84155,50.172832,100,0,0),
(19902,2 ,-11529.396,557.5194,49.371563 ,100,0,0),
(19902,3 ,-11537.096,558.81195,50.331554,100,0,0),
(19902,4 ,-11545.266,559.72266,50.317394,100,0,0),
(19902,5 ,-11549.603,561.6683,50.317394 ,100,0,0),
(19902,6 ,-11551.802,579.09235,50.432117,100,0,0),
(19902,7 ,-11562.989,586.6102,50.548084 ,100,0,0),
(19902,8 ,-11574.333,587.98364,50.211143,100,10000,0),
(19902,9 ,-11564.852,584.9187,50.75365  ,100,0,0),
(19902,10,-11558.903,581.435,50.668934  ,100,0,0),
(19902,11,-11553.351,577.47943,50.34325 ,100,0,0),
(19902,12,-11550.031,571.9387,50.50365  ,100,0,0),
(19902,13,-11548.987,564.1203,50.442394 ,100,0,0),
(19902,14,-11545.974,560.63336,50.317394,100,0,0),
(19902,15,-11541.922,558.7877,50.599133 ,100,0,0),
(19902,16,-11534.038,559.1331,49.747814 ,100,0,0),
(19902,17,-11528.379,555.4212,49.498272 ,100,0,0),
(19902,18,-11523.127,550.84155,50.172832,100,60000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (19902);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19902,'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 5');

-- group 6
UPDATE creature SET position_x = -11687.834, position_y = 696.8216, position_z = 50.04985, spawndist = 0, movementtype = 0 WHERE guid IN (993);
UPDATE creature SET id = 588, position_x = -11687.834, position_y = 696.8216, position_z = 50.04985, spawndist = 0, movementtype = 0 WHERE guid IN (2227);
DELETE FROM creature_movement WHERE id IN (993,2227);
DELETE FROM `spawn_group` WHERE id = 19901;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19901, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 6', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 19901;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19901, 993, 0),
(19901, 2227, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19901;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19901, 2, 2, 0, 19901, 2, 'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 6');
DELETE FROM `waypoint_path` WHERE PathId IN (19901);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19901,1 ,-11687.834,696.8216,50.04985,100,10000,0),
(19901,2 ,-11728.438,682.6416,49.53109,100,0,0),
(19901,3 ,-11732.077,676.6006,49.854332,100,0,0),
(19901,4 ,-11732.557,655.07043,50.284927,100,0,0),
(19901,5 ,-11726.989,616.9608,50.013103,100,0,0),
(19901,6 ,-11721.755,600.30145,50.763103,100,0,0),
(19901,7 ,-11720.742,587.6289,50.315952,100,0,0),
(19901,8 ,-11722.975,566.03235,49.833836,100,0,0),
(19901,9 ,-11725.115,553.91364,49.597385,100,0,0),
(19901,10,-11730.212,544.27094,50.72324,100,30000,0),
(19901,11,-11725.159,555.35333,49.640842,100,0,0),
(19901,12,-11724.087,567.4545,49.580723,100,0,0),
(19901,13,-11721.7,580.95734,49.940952,100,0,0),
(19901,14,-11727.582,602.9986,50.31303,100,10000,0),
(19901,15,-11728.122,633.6092,50.19069,100,0,0),
(19901,16,-11731.354,654.6912,50.14064,100,0,0),
(19901,17,-11730.246,687.28595,50.09823,100,0,0),
(19901,18,-11696.769,694.0076,49.67485,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (19901);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19901,'Stranglethorn Vale - Bloodscalp Clan x 2 - Patrol 6');

-- group 7
-- This spawn is alternative for group 3 (theres a chance that this npc with summon will spawn instead)
-- missing npc added
DELETE FROM creature_addon WHERE guid IN (2229); -- removed guid reused
DELETE FROM creature_movement WHERE id IN (2229);
DELETE FROM game_event_creature WHERE guid IN (2229);
DELETE FROM game_event_creature_data WHERE guid IN (2229);
DELETE FROM creature_battleground WHERE guid IN (2229);
DELETE FROM creature_linking WHERE guid IN (2229);
DELETE FROM creature where guid IN (2229);
INSERT INTO creature (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(2229,699,0,1,-11732.9,697.788,50.7811,0,300,300,0,2);
DELETE FROM `spawn_group` WHERE id = 19900;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19900, 'Stranglethorn Vale - Bloodscalp Clan - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19900;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19900, 2229, -1);
DELETE FROM creature_movement WHERE id IN (2229);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- had to keep original points - data missing to check
(2229,1,-11732.9,697.788,50.7811,100,2000,0),
(2229,2,-11723.3,686.274,49.6561,100,0,0),
(2229,3,-11729.1,694.395,50.716,100,0,0),
(2229,4,-11731.7,728.816,50.7656,100,0,0),
(2229,5,-11732.5,716.788,50.8481,100,2000,0);

-- Bloodscalp Scout 588 / Bloodscalp Mystic 701 / Bloodscalp Hunter 595
-- they sharing spawn points (excluded formations with paths)
DELETE FROM creature_spawn_entry WHERE guid IN (
757,834,836,839,990,994,1008,1052,1056,1060,1063,1064,1066,1067,1068,1071,1073,1074,1081,1082,1083,1086,
1089,1090,1092,1094,1095,1096,1097,1112,1118,1120,1121,1122,1129,1130,1132,1137,1139,1140,1143,1145,1148,
1385,1878,1924,1925,1931,1956,2170,2171,2172,2174,2175,2177,2178,2218,2340,2345,2376,2403,2433,2484,2487,
2498,2501,2508,2509,2514);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
(757,588),(757,701),(757,595),(834,588),(834,701),(834,595),(836,588),(836,701),(836,595),
(839,588),(839,701),(839,595),(990,588),(990,701),(990,595),(994,588),(994,701),(994,595),
(1008,588),(1008,701),(1008,595),(1052,588),(1052,701),(1052,595),(1056,588),(1056,701),(1056,595),
(1060,588),(1060,701),(1060,595),(1063,588),(1063,701),(1063,595),(1064,588),(1064,701),(1064,595),
(1066,588),(1066,701),(1066,595),(1067,588),(1067,701),(1067,595),(1068,588),(1068,701),(1068,595),
(1071,588),(1071,701),(1071,595),(1073,588),(1073,701),(1073,595),(1074,588),(1074,701),(1074,595),
(1081,588),(1081,701),(1081,595),(1082,588),(1082,701),(1082,595),(1083,588),(1083,701),(1083,595),
(1086,588),(1086,701),(1086,595),(1089,588),(1089,701),(1089,595),(1090,588),(1090,701),(1090,595),
(1092,588),(1092,701),(1092,595),(1094,588),(1094,701),(1094,595),(1095,588),(1095,701),(1095,595),
(1096,588),(1096,701),(1096,595),(1097,588),(1097,701),(1097,595),(1112,588),(1112,701),(1112,595),
(1118,588),(1118,701),(1118,595),(1120,588),(1120,701),(1120,595),(1121,588),(1121,701),(1121,595),
(1122,588),(1122,701),(1122,595),(1129,588),(1129,701),(1129,595),(1130,588),(1130,701),(1130,595),
(1132,588),(1132,701),(1132,595),(1137,588),(1137,701),(1137,595),(1139,588),(1139,701),(1139,595),
(1140,588),(1140,701),(1140,595),(1143,588),(1143,701),(1143,595),(1145,588),(1145,701),(1145,595),
(1148,588),(1148,701),(1148,595),(1385,588),(1385,701),(1385,595),(1878,588),(1878,701),(1878,595),
(1924,588),(1924,701),(1924,595),(1925,588),(1925,701),(1925,595),(1931,588),(1931,701),(1931,595),
(1956,588),(1956,701),(1956,595),(2170,588),(2170,701),(2170,595),(2171,588),(2171,701),(2171,595),
(2172,588),(2172,701),(2172,595),(2174,588),(2174,701),(2174,595),(2175,588),(2175,701),(2175,595),
(2177,588),(2177,701),(2177,595),(2178,588),(2178,701),(2178,595),(2218,588),(2218,701),(2218,595),
(2340,588),(2340,701),(2340,595),(2345,588),(2345,701),(2345,595),(2376,588),(2376,701),(2376,595),
(2403,588),(2403,701),(2403,595),(2433,588),(2433,701),(2433,595),(2484,588),(2484,701),(2484,595),
(2487,588),(2487,701),(2487,595),(2498,588),(2498,701),(2498,595),(2501,588),(2501,701),(2501,595),
(2508,588),(2508,701),(2508,595),(2509,588),(2509,701),(2509,595),(2514,588),(2514,701),(2514,595);
UPDATE `creature` SET `id` = 0 WHERE guid IN (
757,834,836,839,990,994,1008,1052,1056,1060,1063,1064,1066,1067,1068,1071,1073,1074,1081,1082,1083,1086,
1089,1090,1092,1094,1095,1096,1097,1112,1118,1120,1121,1122,1129,1130,1132,1137,1139,1140,1143,1145,1148,
1385,1878,1924,1925,1931,1956,2170,2171,2172,2174,2175,2177,2178,2218,2340,2345,2376,2403,2433,2484,2487,
2498,2501,2508,2509,2514);
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` IN (588,595,701);

-- randomization of groups
INSERT INTO worldstate_name VALUES
(330001,'Custom - STV - Group 01'),
(330002,'Custom - STV - Group 02');
INSERT INTO conditions(condition_entry, type, value1, value2, value3) VALUES
(9900,42,330001,1,0),
(9901,42,330001,1,1),
(9902,42,330002,1,0),
(9903,42,330002,1,1);

UPDATE spawn_group SET WorldState=9900 WHERE Id IN(19905);
UPDATE spawn_group SET WorldState=9901 WHERE Id IN(19906);
UPDATE spawn_group SET WorldState=9902 WHERE Id IN(19903);
UPDATE spawn_group SET WorldState=9903 WHERE Id IN(19900);

