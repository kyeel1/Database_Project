CREATE TABLE Player(
    Player_ID   INT    PRIMARY KEY,
    Player_Name VARCHAR (10) NOT NULL
);
INSERT INTO Player (Player_ID, Player_Name) VALUES (0, 'Bob');
INSERT INTO Player (Player_ID, Player_Name) VALUES (1, 'jim');
INSERT INTO Player (Player_ID, Player_Name) VALUES (2, 'tim');
INSERT INTO Player (Player_ID, Player_Name) VALUES (3, 'rob');
INSERT INTO Player (Player_ID, Player_Name) VALUES (4, 'hannah');
INSERT INTO Player (Player_ID, Player_Name) VALUES (5, 'sarah');
INSERT INTO Player (Player_ID, Player_Name) VALUES (6, 'harry');
INSERT INTO Player (Player_ID, Player_Name) VALUES (7, 'gavin');
INSERT INTO Player (Player_ID, Player_Name) VALUES (8, 'morgan');
INSERT INTO Player (Player_ID, Player_Name) VALUES (9, 'scott');
CREATE TABLE Locations (
    Location_ID          INT         PRIMARY KEY,
    Location_Name        VARCHAR (30)  NOT NULL,
    Location_Description VARCHAR (300) NOT NULL
);
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (0, 'Whiterun', 'The starting town');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (1, N'Dawnstar',  'an exile community on th enorth coast of skyrim');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (2,  'Bloodlet Throne',  'A fort south of falkreath');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (3,  'Falkreath',  'A major toen in th esouthwest of skyrim');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (4,  'Winterhold',  'Winterhold is a major town that has the winterhold college a college for mages in skyrim');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (5,  'Shrine of Azura',  'A shrine devotes to Azura');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (6,  'Solitude',  'THe capital of skyrim solitude is where the king of skyrim leads');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (7,  'Dragon Bridge ',  'a settlement southwest of solitude');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (8,  'Abandoned Shack',  'An abandoned shack south east of solitude');
INSERT INTO Locations (Location_ID, Location_Name, Location_Description) VALUES (9,  'Hamvirs Rest',  'nordic ruin northwest of whiterun');
CREATE TABLE Enemies(
    Enemy_ID          INT        PRIMARY KEY,
    Enemy_name        VARCHAR (30)  NOT NULL,
    Enemy_description VARCHAR (300) NOT NULL,
);
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (0,  'keeper',  'a undead gaurdian ')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (1,  'Draugr',  'undead nordic wariors')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (2,  'Bandit',  'person who steals for a living')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (3,  'Hired Thug',  'a strong man paid to hurt people')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (4,  'Aprentice Fire mage',  'a weak mage who focuses on fire spells')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (5,  'Frostbite Spider',  'a large spider that shoots venom')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (6,  'Blooded Vampire',  'is a type of vampire')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (7,  'Ice Magic',  'a mage that uses ice spells')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (8,  'Dragon Cultists',  'A cultist that worships dragons')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (9,  'Vagrant',  'lowlife scum who travels sewers in cities')
INSERT INTO Enemies (Enemy_ID, Enemy_name, Enemy_description) VALUES (10,  'Ice Wraith',  'Ice elemental that uses ice attacks')
CREATE TABLE Enemies_Known (
    Enemy_ID  INT NOT NULL,
    Player_ID INT NOT NULL,
    CONSTRAINT FK_Enemies_Found FOREIGN KEY (Enemy_ID) REFERENCES Enemies(Enemy_ID),
    CONSTRAINT FK_which_Player FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID)
);
CREATE TABLE Locations_known (
    Location_ID INT NOT NULL,
    Player_ID   INT NOT NULL,
    CONSTRAINT FK_Current_Player FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID),
    CONSTRAINT FK_Locations_Found FOREIGN KEY (Location_ID) REFERENCES Locations(Location_ID)
);
CREATE TABLE Armor (
    Armor_Id          INT           IDENTITY (0, 1) NOT NULL,
    Armor_Name        VARCHAR (30)  NOT NULL,
    Armor_Description VARCHAR (300) NOT NULL,
    Armor_Weight      INT           NOT NULL,
    Armor_Defence     INT           NOT NULL,
    Armor_Cost        INT           NOT NULL,
    PRIMARY KEY CLUSTERED (Armor_Id ASC)
);
CREATE TABLE Armor_Found (
    Armor_Id        INT NOT NULL,
    Player_ID INT NOT NULL,
    PRIMARY KEY CLUSTERED (Armor_Id ASC),
    FOREIGN KEY (Armor_ID) REFERENCES Armor (Armor_Id),
    FOREIGN KEY (Player_ID) REFERENCES Player (Player_ID)
);
CREATE TABLE Weapons (
    Weapon_Id          INT           IDENTITY (0, 1) NOT NULL,
    Weapon_Name        VARCHAR (30)  NOT NULL,
    Weapon_Description VARCHAR (300) NOT NULL,
    Weapon_Weight      INT           NOT NULL,
    Weapon_Damage      INT           NOT NULL,
    Weapon_Cost        INT           NOT NULL,
    PRIMARY KEY CLUSTERED (Weapon_Id ASC)
);
CREATE TABLE Weapons_Found (
    Weapon_Id  INT NOT NULL,
    Player_ID  INT NOT NULL,
    PRIMARY KEY CLUSTERED (Weapon_Id ASC),
    FOREIGN KEY (Weapon_ID) REFERENCES Weapons (Weapon_Id),
    FOREIGN KEY (Player_ID) REFERENCES Player (Player_ID)
);
SET IDENTITY_INSERT Weapons ON
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (3, N'Iron Dagger', N'One-handed weapon commonly used by the general population of Skyrim.', 2, 4, 10)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (4, N'Steel Mace', N'One-handed weapon commonly found as random loot in chests.', 14, 10, 65)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (5, N'Dawnbreaker', N'A unique one-haned sword given as a reward for compleation of the quest "The Break of Dawn".', 10, 12, 740)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (6, N'Elven Sword', N'One-handed weapon with a small crossguard in the shape of wings.', 13, 11, 235)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (7, N'Pickaxe', N'One-handed weapon required for mining.', 10, 5, 5)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (8, N'Orcish Battleaxe', N'Two-handed weapon that can found in random loot.', 25, 19, 165)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (9, N'Daedric Warhammer', N'Two-handed weapon with the highest base damage in the game.', 31, 27, 4000)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (11, N'Trollsbane', N'A unique enchanted steel warhammer found in a troll''s den in Reach.', 25, 20, 121)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (13, N'Falmer Bow', N'Two-handed ranged weapon most commonly used by the Falmer.', 15, 12, 135)
INSERT INTO Weapons (Weapon_Id, Weapon_Name, Weapon_Description, Weapon_Weight, Weapon_Damage, Weapon_Cost) VALUES (14, N'Iron Arrow', N'Arrows with wooden shafts, iron arrowheads, and red fletchings.', 0, 8, 1)
SET IDENTITY_INSERT Weapons OFF

SET IDENTITY_INSERT Armor ON
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (0, N'Glass Helmet', N'Light armor created with Malachite', 2, 16, 450)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (1, N'Dwarven Helmet', N'Heavy armor  found in Dwemer structures.', 12, 18, 300)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (2, N'Studded Armor', N'Light armor that requires no perks to create.', 6, 23, 75)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (3, N'Ancient Nord Armor', N'Heavy armor that is a variant of Iron Armor', 28, 25, 125)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (4, N'Hide Boots', N'Light armor that appear in random locations at level one', 1, 5, 10)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (5, N'Daedric', N'Heavy armor that is dropped by Legendary Dragons', 10, 18, 625)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (6, N'Leather Bracers', N'Light armor that is commonly droppedd by bandits.', 2, 7, 25)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (8, N'Ebony Gauntlets', N'Heavy armor found after level 30.', 7, 16, 275)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (9, N'Spellbreaker', N'Unique heavy shield Daedric artifact of Peryite', 12, 38, 227)
INSERT INTO Armor (Armor_Id, Armor_Name, Armor_Description, Armor_Weight, Armor_Defence, Armor_Cost) VALUES (10, N'Shield of Solitude', N'Unique leveled light shield.', 12, 32, 1540)
SET IDENTITY_INSERT Armor OFF

DROP TABLE Skills;
DROP TABLE Skills_Found;
DROP TABLE Items;
DROP TABLE Items_Found;
CREATE TABLE Skills(
    skill_Id          INT          PRIMARY KEY,
    skill_name        VARCHAR (30)  NULL,
    skill_description VARCHAR (300) NULL,
    skill_type        VARCHAR (30)  NULL
);
CREATE TABLE Skills_Found(
    player_Id	INT,
    skill_Id    INT,
    CONSTRAINT player_fk00 FOREIGN KEY(player_Id) REFERENCES Player(player_Id) ON DELETE CASCADE,
    CONSTRAINT skill_fk FOREIGN KEY(skill_Id) REFERENCES Skills(skill_Id) ON DELETE CASCADE
);
SET IDENTITY_INSERT Skills ON
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (1, 'Archery', 'An archer is trained in the use of bows and arrows. The greater the skill, the more deadly the shot.', 'Combat');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (2, 'Block', 'The art of blocking an enemy''s blows with a shield or weapon. Blocking reduces the damage and staggering from physical attacks.', 'Combat');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (3, 'Heavy Armour', 'Those trained to use Heavy Armor make more efficient use of Iron, Steel, Dwarven, Orcish, Ebony, and Daedric armors.', 'Combat');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (4, 'Smithing', 'The art of creating weapons and armor from raw materials, or improving non-magical weapons and armor.', 'Combat');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (5, 'Alteration', 'The School of Alteration involves the manipulation of the physical world and its natural properties. This skill makes it easier to cast spells like Waterbreathing, magical protection, and Paralysis.', 'Magic');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (6, 'Conjuration', 'The School of Conjuration governs raising the dead or summoning creations from Oblivion. This skill makes it easier to cast these spells as well as Soul Trap and bindings.', 'Magic');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (7, 'Destruction', 'The School of Destruction involves the sic harnessing the energies of fire, frost and shock. This skill makes it easier to cast spells like Fireball, Ice Spike, and Lightning Bolt.', 'Magic');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (8, 'Enchanting', 'The more powerful the enchanter, the stronger the magic he can bind to his weapons and armor.', 'Magic');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (9, 'Alchemy', 'An alchemist can create magical potions and deadly poisons.', 'Stealth');
INSERT INTO Skills (skill_Id, skill_name, skill_description, skill_type) VALUES (10, 'Sneak', 'Sneaking is the art of moving unseen and unheard. Highly skilled sneaks can even hide in plain sight.', 'Stealth');
SET IDENTITY_INSERT Skills OFF
CREATE TABLE Items(
    item_Id          INT           IDENTITY (0, 1) NOT NULL,
    item_name        VARCHAR (30)  NULL,
    item_description VARCHAR (300) NULL,
    PRIMARY KEY CLUSTERED (item_Id ASC)
);
CREATE TABLE Items_Found(
    player_Id	INT,
    item_Id    INT,
    CONSTRAINT player_fk01 FOREIGN KEY(player_Id) REFERENCES Player(player_Id),
    CONSTRAINT item_fk FOREIGN KEY(item_Id) REFERENCES Items(item_Id)
);
SET IDENTITY_INSERT Items ON
INSERT INTO Items (item_Id, item_name, item_description) VALUES (1, 'NightWeavers Band', 'An archer is trained in the use of bows and arrows. The greater the skill, the more deadly the shot.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (2, 'Shield of Solitude', 'The art of blocking an enemy''s blows with a shield or weapon. Blocking reduces the damage and staggering from physical attacks.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (3, 'Ancient Helmet of the Unburned', 'Those trained to use Heavy Armor make more efficient use of Iron, Steel, Dwarven, Orcish, Ebony, and Daedric armors.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (4, 'Ironhand Gauntlets', 'The art of creating weapons and armor from raw materials, or improving non-magical weapons and armor.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (5, 'Ebony Mail', 'The School of Alteration involves the manipulation of the physical world and its natural properties. This skill makes it easier to cast spells like Waterbreathing, magical protection, and Paralysis.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (6, 'The Gauldur Amulet', 'The School of Conjuration governs raising the dead or summoning creations from Oblivion. This skill makes it easier to cast these spells as well as Soul Trap and bindings.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (7, 'Black Star', 'The School of Destruction involves the sic harnessing the energies of fire, frost and shock. This skill makes it easier to cast spells like Fireball, Ice Spike, and Lightning Bolt.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (8, 'Oghma Infinium', 'The more powerful the enchanter, the stronger the magic he can bind to his weapons and armor.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (9, 'Dwemer Lexicon', 'An alchemist can create magical potions and deadly poisons.');
INSERT INTO Items (item_Id, item_name, item_description) VALUES (10, 'Notched Pickaxe', 'Sneaking is the art of moving unseen and unheard. Highly skilled sneaks can even hide in plain sight.'); 
SET IDENTITY_INSERT Items OFF