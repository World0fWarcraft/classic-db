
DELETE FROM `gameobject_spawn_entry` WHERE (`guid` IN (15429, 15437, 15443, 15444, 15445, 15447, 15449, 15450));

INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(10010, '123310', '0', '0', '0'),
(10010, '73940', '0', '0', '5'),
(10010, '73941', '0', '0', '5'),

(10011, '123310', '0', '0', '0'),
(10011, '73940', '0', '0', '5'),
(10011, '73941', '0', '0', '5');