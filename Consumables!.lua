-- =============================================================
-- CONSUMABLES
-- =============================================================

-- KEYBINDINGS
BINDING_HEADER_CONSUMABLES = "Consumables Addon"
BINDING_NAME_CONTOGGLE = "Toggle Show/Hide"

-- 1. MASTER DATABASE
-- -------------------------------------------------------------
-- INSTRUCTIONS FOR ADDING BUFFS:
-- 1. id: Item ID for bag counting (0 if spell only).
-- 2. name: Exact name of the Item or Spell to use.
-- 3. icon: Texture name (e.g., "inv_potion_51") for the menu.
-- 4. bufficon: (Optional) Used if the buff texture differs from the item icon.
--    - Single: bufficon="texture_name"
--    - Group:  bufficon={"text1", "text2"} (Matches multiple buffs to one item).
-- 5. checkTooltip: (Optional: The buff icon must be included for this to work.) Unique text to distinguish buffs with identical icons (e.g., Atiesh).
-- -------------------------------------------------------------

local MASTER_DB = {
    -- === WORLD BUFFS ===
    { id=22888, name="Rallying Cry of the Dragonslayer", icon="inv_misc_head_dragon_01" },
    { id=24425, name="Spirit of Zandalar", icon="ability_creature_poison_05" },
    { id=15366, name="Songflower Serenade", icon="spell_holy_mindvision" },
    { id=16609, name="Warchief's Blessing", icon="spell_arcane_teleportorgrimmar" },
    { id=22818, name="Mol'dar's Moxie", icon="spell_nature_masochism" },
    { id=22817, name="Fengus' Ferocity", icon="spell_nature_undyingstrength" },
    { id=22820, name="Slip'kik's Savvy", icon="spell_holy_lesserheal02" },
    { id=23768, name="Sayge's Dark Fortune of Damage", icon="inv_misc_orb_02" },
    { id=0,     name="Sayge's Dark Fortune of Intelligence", icon="inv_misc_orb_02" },
    { id=0,     name="Sayge's Dark Fortune of Spirit", icon="inv_misc_orb_02" },
    { id=0,     name="Sayge's Dark Fortune of Stamina", icon="inv_misc_orb_02" },
    { id=0,     name="Sayge's Dark Fortune of Strength", icon="inv_misc_orb_02" },
    { id=0,     name="Sayge's Dark Fortune of Agility", icon="inv_misc_orb_02" },
    { id=23381, name="Traces of Silithyst", icon="spell_nature_timestop" },
    { id=20079, name="Spirit of Zanza", icon="inv_potion_30" },
    { id=20081, name="Swiftness of Zanza", icon="inv_potion_31" },

    -- === FLASKS ===
    { id=13510, name="Flask of the Titans", icon="inv_potion_62" },
    { id=13511, name="Flask of Distilled Wisdom", icon="inv_potion_97" },
    { id=13512, name="Flask of Supreme Power", icon="inv_potion_41" },
    { id=13513, name="Flask of Chromatic Resistance", icon="inv_potion_48" },
    { id=13506, name="Flask of Petrification", icon="inv_potion_26" },

    -- === ELIXIRS ===
    { id=13452, name="Elixir of the Mongoose", icon="inv_potion_32" },
    { id=9206,  name="Elixir of Giants", icon="inv_potion_61" },
    { id=13447, name="Elixir of the Sages", icon="inv_potion_142" },    
    { id=13453, name="Elixir of Brute Force", icon="inv_potion_36" },
    { id=9264,  name="Elixir of Shadow Power", icon="inv_potion_46" },
    { id=21546, name="Elixir of Greater Firepower", icon="inv_potion_60" },
    { id=50237, name="Elixir of Greater Nature Power", icon="inv_potion_106" },   
    { id=55048, name="Elixir of Greater Arcane Power", icon="inv_potion_81" },     
    { id=13454, name="Greater Arcane Elixir", icon="inv_potion_25" },
    { id=17708, name="Elixir of Frost Power", icon="inv_potion_03" },
    { id=9187,  name="Arcane Elixir", icon="inv_potion_30" },
    { id=13446, name="Major Arcane Elixir", icon="inv_potion_83" },
    { id=3390,  name="Elixir of Lesser Agility", icon="inv_potion_93" },
    { id=8949,  name="Elixir of Agility", icon="inv_potion_93" },
    { id=9188,  name="Elixir of Greater Agility", icon="inv_potion_94" },
    { id=3391,  name="Elixir of Ogre's Strength", icon="inv_potion_59" },
    { id=47410, name="Concoction of the Emerald Mongoose", icon="inv_blue_gold_elixir_2" },
    { id=47414, name="Concoction of the Dreamwater", icon="inv_green_pink_elixir_1" },
    { id=47412, name="Concoction of the Arcane Giant", icon="inv_yellow_purple_elixir_2" },
    { id=3825,  name="Elixir of Fortitude", icon="inv_potion_43", bufficon="inv_potion_44" },
    { id=13445, name="Elixir of Superior Defense", icon="inv_potion_86" },
    { id=3389,  name="Elixir of Defense", icon="inv_potion_68" },
    { id=9088,  name="Gift of Arthas", icon="inv_potion_28", bufficon="spell_shadow_fingerofdeath", checkTooltip="Gift of Arthas" },
    { id=61224,  name="Dreamshard Elixir", icon="inv_potion_113" },
    { id=9224,  name="Elixir of Demonslaying", icon="inv_potion_27" },   

    -- === POTIONS ===
    { id=13446, name="Major Healing Potion", icon="inv_potion_54" },
    { id=13444, name="Major Mana Potion", icon="inv_potion_76" },    
    { id=13443, name="Superior Mana Potion", icon="inv_potion_74" },   
    { id=3928, name="Superior Healing Potion", icon="inv_potion_53" },        
    { id=61675, name="Nordanaar Herbal Tea", icon="inv_drink_waterskin_03" },
    { id=20007, name="Mageblood Potion", icon="inv_potion_45" }, bufficon="inv_potion_45", checkTooltip="Mana Regeneration"},
    { id=13442, name="Mighty Rage Potion", icon="inv_potion_125", bufficon="Ability_warrior_innerrage", checkTooltip="Mighty Rage"},
    { id=5634,  name="Free Action Potion", icon="inv_potion_04" },
    { id=20008, name="Living Action Potion", icon="inv_potion_07" },
    { id=3387,  name="Limited Invulnerability Potion", icon="inv_potion_121" },
    { id=9030,  name="Restorative Potion", icon="inv_potion_01" },
    { id=2459,  name="Swiftness Potion", icon="inv_potion_12" },
    { id=9172,  name="Invisibility Potion", icon="inv_potion_24" },
    { id=61423, name="Dreamtonic", icon="inv_potion_114" },
    { id=13455, name="Greater Stoneshield Potion", icon="inv_potion_69" },
    { id=61181, name="Potion of Quickness", icon="inv_potion_08" }, bufficon="spell_nature_invisibilty", checkTooltip="Potion of Quickness" },   
    { id=20004, name="Major Troll's Blood Potion", icon="inv_potion_80", bufficon="inv_potion_79", checkTooltip="Regeneration" },      

    -- === FOOD ===
    { id=20452, name="Smoked Desert Dumplings", icon="inv_misc_food_64", bufficon="spell_misc_food" },
    { id=13928, name="Grilled Squid", icon="inv_misc_fish_13", bufficon="spell_misc_food" },
    { id=13931, name="Nightfin Soup", icon="inv_drink_22", bufficon="spell_misc_food" },
    { id=18254, name="Runn Tum Tuber Surprise", icon="inv_misc_food_02", bufficon="spell_misc_food" },
    { id=21023, name="Dirge's Kickin' Chimaerok Chops", icon="inv_misc_food_64", bufficon="spell_misc_food" },
    { id=13929, name="Hot Smoked Salmon", icon="inv_misc_fish_21", bufficon="spell_misc_food" },
    { id=21254, name="Blessed Sunfruit", icon="inv_misc_food_41", bufficon="spell_misc_food" },
    { id=12217, name="Dragonbreath Chili", icon="inv_drink_17", bufficon="spell_fire_incinerate" },
    { id=60978, name="Danonzo's Tel'Abim Medley", icon="inv_misc_food_73", bufficon="spell_misc_food", checkTooltip="Haste" },
    { id=60977, name="Danonzo's Tel'Abim Delight", icon="inv_drink_21", bufficon="spell_misc_food", checkTooltip="Spell Damage" }, 
    { id=60976, name="Danonzo's Tel'Abim Surprise", icon="inv_misc_food_92", bufficon="spell_misc_food", checkTooltip="Ranged Attack Power" },            
    { id=51720, name="Power Mushroom", icon="inv_mushroom_14", bufficon="spell_misc_food" },
    { id=51717, name="Hardened Mushroom", icon="inv_mushroom_15", bufficon="spell_misc_food", bufficon="inv_boots_plate_03", checkTooltip="Increased Stamina" },
    { id=84040, name="Le Fishe Au Chocolat", icon="inv_misc_fishe_au_chocolate", bufficon="spell_misc_food" },
    { id=51714, name="Sour Mountain Berry", icon="inv_misc_food_40", bufficon="spell_misc_food" },
    { id=83309, name="Empowering Herbal Salad", icon="inv_misc_food_salad", bufficon="spell_nature_healingway", checkTooltip="Healing Bonus" },
    { id=18045, name="Tender Wolf Steak", icon="inv_misc_food_47", bufficon="spell_misc_food" }, 
    { id=53015, name="Gurubashi Gumbo", icon="inv_misc_food_64", bufficon="spell_misc_food" },         

    -- === ALCOHOL ===
    { id=61175, name="Medivh's Merlot Blue", icon="inv_drink_waterskin_01" },
    { id=61174, name="Medivh's Merlot", icon="inv_drink_waterskin_05", bufficon="inv_drink_04", checkTooltip="Medivh's Merlot" },
    { id=21151, name="Rumsey Rum Black Label", icon="inv_drink_04" },

    -- === JUJUS / OTHER ===
    { id=12820, name="Winterfall Firewater", icon="inv_potion_92" },
    { id=12451, name="Juju Power", icon="inv_misc_monsterscales_11" },
    { id=12460, name="Juju Might", icon="inv_misc_monsterscales_07" },
    { id=12450, name="Juju Flurry", icon="inv_misc_monsterscales_17" },
    { id=12455, name="Juju Ember", icon="inv_misc_monsterscales_15" },
    { id=12457, name="Juju Chill", icon="inv_misc_monsterscales_09" },
    { id=8410,  name="R.O.I.D.S.", icon="inv_stone_15", bufficon="spell_nature_strength", checkTooltip="Rage of Ages" },
    { id=8412,  name="Ground Scorpok Assay", icon="inv_misc_dust_07", bufficon="Spell_nature_forceofnature", checkTooltip="Strike of the Scorpok" },
    { id=8423,  name="Cerebral Cortex Compound", icon="inv_potion_119", bufficon="spell_ice_lament", checkTooltip="Infallible Mind" },  
    { id=8411,  name="Lung Juice Cocktail", icon="inv_drink_20" },
    { id=7676,  name="Thistle Tea", icon="inv_drink_milk_05" },    
    { id=6452,  name="Anti-Venom", icon="inv_misc_slime_01" },       
    { id=6453,  name="Strong Anti-Venom", icon="inv_misc_slime_01" },       

    
    -- === EXPLOSIVES ===
    { id=10646, name="Goblin Sapper Charge", icon="spell_fire_selfdestruct" },

    -- === PROTECTION POTIONS ===
    { id=13457, name="Greater Fire Protection Potion", icon="inv_potion_117", bufficon="spell_fire_firearmor", checkTooltip="Fire Protection" },
    { id=6049, name="Fire Protection Potion", icon="inv_potion_16", bufficon="spell_fire_firearmor", checkTooltip="Fire Protection" },    
    { id=13456, name="Greater Frost Protection Potion", icon="inv_potion_20", bufficon="spell_frost_frostarmor02", checkTooltip="Frost Protection" },
    { id=6050, name="Frost Protection Potion", icon="inv_potion_13", bufficon="spell_frost_frostarmor02", checkTooltip="Frost Protection" },    
    { id=13459, name="Greater Shadow Protection Potion", icon="inv_potion_23", bufficon="spell_shadow_ragingscream", checkTooltip="Shadow Protection" },
    { id=6048, name=" Shadow Protection Potion", icon="inv_potion_44", bufficon="Spell_shadow_ragingscream", checkTooltip="Shadow Protection" },    
    { id=13461, name="Greater Arcane Protection Potion", icon="inv_potion_83", bufficon="spell_holy_prayerofhealing02", checkTooltip="Arcane Protection" },
    { id=13458, name="Greater Nature Protection Potion", icon="inv_potion_22", bufficon="spell_nature_spiritarmor", checkTooltip="Nature Protection" },     
    { id=6052, name="Nature Protection Potion", icon="inv_potion_06", bufficon="spell_nature_spiritarmor", checkTooltip="Nature Protection" },    
    { id=9036, name="Magic Resistance Potion", icon="inv_potion_16", bufficon="inv_potion_08", checkTooltip="Resistance" },    
    { id=3386, name="Elixir of Poison Resistance", icon="inv_potion_12" },
    { id=22682, name="Frozen Rune", icon="inv_misc_rune_09", bufficon="spell_fire_masterofelements", checkTooltip="Fire Protection" },  

    -- === SCROLLS ===
    { id=4426,  name="Scroll of Agility IV", icon="inv_scroll_02", bufficon="spell_holy_blessingofagility" },
    { id=4422,  name="Scroll of Strength IV", icon="inv_scroll_02", bufficon="spell_nature_strength" },
    { id=10305, name="Scroll of Protection IV", icon="inv_scroll_02", bufficon="spell_holy_greaterblessingofprotection" },
    { id=10307, name="Scroll of Stamina IV", icon="inv_scroll_02", bufficon="spell_holy_wordfortitude" },
    { id=10306, name="Scroll of Spirit IV", icon="inv_scroll_02", bufficon="spell_holy_divinespirit" },
    { id=10308, name="Scroll of Intellect IV", icon="inv_scroll_02", bufficon="spell_holy_magicalsentry" },

    -- === WEAPON BUFFS ===
    { id=12404, name="Dense Sharpening Stone (MH)", icon="inv_stone_sharpeningstone_05" },
    { id=12404, name="Dense Sharpening Stone (OH)", icon="inv_stone_sharpeningstone_05" },
    { id=18262, name="Elemental Sharpening Stone (MH)", icon="inv_stone_02" },
    { id=18262, name="Elemental Sharpening Stone (OH)", icon="inv_stone_02" },
    { id=23122, name="Consecrated Sharpening Stone (MH)", icon="inv_stone_sharpeningstone_02" },
    { id=23122, name="Consecrated Sharpening Stone (OH)", icon="inv_stone_sharpeningstone_02" },
    
    { id=20749, name="Brilliant Wizard Oil (MH)", icon="inv_potion_105" },
    { id=20749, name="Brilliant Wizard Oil (OH)", icon="inv_potion_105" },
    { id=20748, name="Brilliant Mana Oil (MH)", icon="inv_potion_100" },
    { id=20748, name="Brilliant Mana Oil (OH)", icon="inv_potion_100" },
    { id=23123, name="Blessed Wizard Oil (MH)", icon="inv_potion_138" },
    { id=23123, name="Blessed Wizard Oil (OH)", icon="inv_potion_138" },
    { id=3829,  name="Frost Oil (MH)", icon="inv_potion_130" },
    { id=3829,  name="Frost Oil (OH)", icon="inv_potion_130" },
    { id=3824,  name="Shadowoil (MH)", icon="inv_potion_106" },
    { id=3824,  name="Shadowoil (OH)", icon="inv_potion_106" },

    { id=16893, name="Soulstone", icon="spell_shadow_soulgem", bufficon="spell_shadow_soulgem", checkTooltip="Soulstone Resurrection" },
    { id=13603, name="Major Spellstone", icon="inv_misc_gem_sapphire_01", bufficon="temp.png", checkTooltip="Increased Critical Spell" },
    { id=13602, name="Greater Spellstone", icon="inv_misc_gem_sapphire_01", bufficon="temp.png", checkTooltip="Increased Critical Spell" },
    { id=5522,  name="Spellstone", icon="inv_misc_gem_sapphire_01", bufficon="temp.png", checkTooltip="Increased Critical Spell" },    
    { id=51933, name="Spellstone", icon="inv_misc_gem_sapphire_01" },
    { id=51936, name="Voidstone", icon="inv_enchant_voidsphere.png" },  
    { id=51935, name="Wrathstone", icon="inv_misc_gem_bloodstone_02.png" },     
    { id=51934, name="Felstone", icon="inv_misc_gem_felstone.png" },      
    { id=1254,  name="Lesser Firestone", icon="inv_misc_gem_bloodstone_02.png", bufficon="spell_fire_meteorstorm.png", checkTooltip="Firestone Passive"  },                  
    { id=13699, name="Firestone", icon="inv_misc_gem_bloodstone_02.png", bufficon="spell_fire_meteorstorm.png", checkTooltip="Firestone Passive"  },   
    { id=13700, name="Greater Firestone", icon="inv_misc_gem_bloodstone_02.png", bufficon="spell_fire_meteorstorm.png", checkTooltip="Firestone Passive"  },  
    { id=13701, name="Major Firestone", icon="inv_misc_gem_bloodstone_02.png", bufficon="spell_fire_meteorstorm.png", checkTooltip="Firestone Passive"  },      

    { id=0,     name="Windfury Weapon (MH)", icon="spell_nature_cyclone" },
    { id=0,     name="Windfury Weapon (OH)", icon="spell_nature_cyclone" },
    { id=0,     name="Rockbiter Weapon (MH)", icon="spell_nature_rockbiter" },
    { id=0,     name="Rockbiter Weapon (OH)", icon="spell_nature_rockbiter" },
    { id=0,     name="Flametongue Weapon (MH)", icon="spell_fire_flametongue" },
    { id=0,     name="Flametongue Weapon (OH)", icon="spell_fire_flametongue" },
    { id=0,     name="Frostbrand Weapon (MH)", icon="spell_frost_frostbrand" },
    { id=0,     name="Frostbrand Weapon (OH)", icon="spell_frost_frostbrand" },

    { id=0,     name="Instant Poison (MH)", icon="ability_poisons" },
    { id=0,     name="Instant Poison (OH)", icon="ability_poisons" },
    { id=0,     name="Deadly Poison (MH)", icon="ability_rogue_dualweild" },
    { id=0,     name="Deadly Poison (OH)", icon="ability_rogue_dualweild" },
    { id=0,     name="Crippling Poison (MH)", icon="ability_poisonsting" },
    { id=0,     name="Crippling Poison (OH)", icon="ability_poisonsting" },
    { id=0,     name="Mind-numbing Poison (MH)", icon="spell_nature_nullifydisease" },
    { id=0,     name="Mind-numbing Poison (OH)", icon="spell_nature_nullifydisease" },
    { id=0,     name="Wound Poison (MH)", icon="ability_poisonsting" },
    { id=0,     name="Wound Poison (OH)", icon="ability_poisonsting" },

    -- === CLASS BUFFS ===
    { id=0, name="Power Word: Fortitude", icon="spell_holy_wordfortitude", bufficon={ "spell_holy_wordfortitude", "spell_holy_prayeroffortitude" } },
    { id=0, name="Prayer of Fortitude", icon="spell_holy_prayeroffortitude",  bufficon={ "spell_holy_wordfortitude", "spell_holy_prayeroffortitude" } },

    { id=0, name="Divine Spirit", icon="spell_holy_divinespirit", bufficon={ "spell_holy_divinespirit", "spell_holy_prayerofspirit" } },
    { id=0, name="Prayer of Spirit", icon="spell_holy_prayerofspirit",  bufficon={ "spell_holy_divinespirit", "spell_holy_prayerofspirit" } },

    { id=0, name="Shadow Protection", icon="spell_shadow_antishadow" },
    { id=0, name="Prayer of Shadow Protection", icon="spell_holy_prayerofshadowprotection", bufficon="spell_shadow_antishadow" },
    { id=0, name="Fear Ward", icon="spell_holy_excorcism" },
    { id=0, name="Inner Fire", icon="spell_holy_innerfire" },
    { id=0, name="Power Infusion", icon="spell_holy_powerinfusion" },

    { id=0, name="Arcane Intellect", icon="spell_holy_magicalsentry" },
    { id=0, name="Arcane Brilliance", icon="spell_holy_arcaneintellect", bufficon="spell_holy_magicalsentry" },
    { id=0, name="Mage Armor", icon="spell_magearmor" },
    { id=0, name="Ice Armor", icon="spell_frost_frostarmor02" },
    { id=0, name="Molten Armor", icon="spell_fire_firearmor" },
    { id=0, name="Amplify Magic", icon="spell_holy_flashheal" },
    { id=0, name="Dampen Magic", icon="spell_nature_abolishmagic" },

    { id=0, name="Mark of the Wild", icon="spell_nature_regeneration" },
    { id=0, name="Gift of the Wild", icon="spell_nature_regeneration", bufficon="spell_nature_regeneration" },
    { id=0, name="Thorns", icon="spell_nature_thorns" },
    { id=0, name="Omen of Clarity", icon="spell_nature_crystalball" },
    { id=0, name="Moonkin Aura", icon="spell_nature_starfall" },
    { id=0, name="Leader of the Pack", icon="spell_nature_unyeildingstamina" },
    { id=0, name="Emerald Blessing", icon="spell_nature_protectionformnature" },

    { id=0, name="Blessing of Kings", icon="spell_magic_magearmor", bufficon={ "spell_magic_magearmor", "spell_magic_greaterblessingofkings" } },
    { id=0, name="Greater Blessing of Kings", icon="spell_magic_greaterblessingofkings", bufficon={ "spell_magic_magearmor", "spell_magic_greaterblessingofkings" } },
    
    { id=0, name="Blessing of Might", icon="spell_holy_fistofjustice", bufficon={ "spell_holy_fistofjustice", "spell_holy_greaterblessingofkings" } },
    { id=0, name="Greater Blessing of Might", icon="spell_holy_fistofjustice", bufficon={ "spell_holy_fistofjustice", "spell_holy_greaterblessingofkings" } },
    
    { id=0, name="Blessing of Wisdom", icon="spell_holy_sealofwisdom", bufficon={ "spell_holy_sealofwisdom", "spell_holy_greaterblessingofwisdom" } },
    { id=0, name="Greater Blessing of Wisdom", icon="spell_holy_greaterblessingofwisdom", bufficon={ "spell_holy_sealofwisdom", "spell_holy_greaterblessingofwisdom" } },
    
    { id=0, name="Blessing of Light", icon="spell_holy_prayerofhealing02", bufficon={ "spell_holy_prayerofhealing02", "spell_holy_greaterblessingoflight" } },
    { id=0, name="Greater Blessing of Light", icon="spell_holy_greaterblessingoflight", bufficon={ "spell_holy_prayerofhealing02", "spell_holy_greaterblessingoflight" } },
    
    { id=0, name="Blessing of Salvation", icon="spell_holy_sealofsalvation", bufficon={ "spell_holy_sealofsalvation", "spell_holy_greaterblessingofsalvation" } },
    { id=0, name="Greater Blessing of Salvation", icon="spell_holy_greaterblessingofsalvation", bufficon={ "spell_holy_sealofsalvation", "spell_holy_greaterblessingofsalvation" } },
    
    { id=0, name="Blessing of Sanctuary", icon="spell_nature_lightningshield", bufficon={ "spell_nature_lightningshield", "spell_holy_greaterblessingofsanctuary" } },
    { id=0, name="Greater Blessing of Sanctuary", icon="spell_holy_greaterblessingofsanctuary", bufficon={ "spell_nature_lightningshield", "spell_holy_greaterblessingofsanctuary" } },
    
    { id=0, name="Devotion Aura", icon="spell_holy_devotionaura" },
    { id=0, name="Retribution Aura", icon="spell_holy_auraoflight" },
    { id=0, name="Concentration Aura", icon="spell_holy_mindsooth" },
    { id=0, name="Shadow Resistance Aura", icon="spell_shadow_sealofkings" },
    { id=0, name="Frost Resistance Aura", icon="spell_frost_wizardmark" },
    { id=0, name="Fire Resistance Aura", icon="spell_fire_sealoffire" },

    { id=0, name="Blood Pact", icon="spell_shadow_bloodboil" },
    { id=0, name="Demon Skin", icon="spell_shadow_ragingscream" },
    { id=0, name="Demon Armor", icon="spell_shadow_ragingscream" },
    { id=0, name="Shadow Ward", icon="spell_shadow_antishadow" },
    { id=0, name="Soulstone Resurrection", icon="spell_shadow_soulgem" },
    { id=0, name="Detect Greater Invisibility", icon="spell_shadow_detectlesserinvisibility" },
    { id=0, name="Unending Breath", icon="spell_shadow_demonbreath" },

    { id=0, name="Battle Shout", icon="ability_warrior_battleshout" },
    { id=0, name="Berserker Rage", icon="spell_nature_ancestralguardian" },
    { id=0, name="Bloodrage", icon="ability_racial_bloodrage" },

    { id=0, name="Trueshot Aura", icon="ability_trueshot" },
    { id=0, name="Aspect of the Hawk", icon="spell_nature_ravenform" },
    { id=0, name="Aspect of the Monkey", icon="ability_hunter_aspectofthemonkey" },
    { id=0, name="Aspect of the Cheetah", icon="ability_mount_junglecat" },
    { id=0, name="Aspect of the Pack", icon="ability_mount_whitetiger" },
    { id=0, name="Aspect of the Wild", icon="spell_nature_protectionformnature" },

    { id=0, name="Strength of Earth Totem", icon="spell_nature_earthbindtotem" },
    { id=0, name="Stoneskin Totem", icon="spell_nature_stoneskintotem" },
    { id=0, name="Tremor Totem", icon="spell_nature_tremortotem" },
    { id=0, name="Earthbind Totem", icon="spell_nature_strengthofearthtotem02" },
    { id=0, name="Grace of Air Totem", icon="spell_nature_invisibilitytotem" },
    { id=0, name="Windfury Totem", icon="spell_nature_windfury" },
    { id=0, name="Mana Spring Totem", icon="spell_nature_manaregentotem" },
    { id=0, name="Healing Stream Totem", icon="inv_spear_04" },
    { id=0, name="Fire Resistance Totem", icon="spell_fireresistancetotem_01" },
    { id=0, name="Frost Resistance Totem", icon="spell_frostresistancetotem_01" },
    { id=0, name="Nature Resistance Totem", icon="spell_nature_natureresistancetotem" },
    { id=0, name="Magma Totem", icon="spell_fire_selfdestruct" },
    { id=0, name="Searing Totem", icon="spell_fire_searingtotem" },
    { id=0, name="Tranquil Air Totem", icon="spell_nature_brilliance" },
    { id=0, name="Poison Cleansing Totem", icon="spell_nature_poisoncleansingtotes" },
    { id=0, name="Disease Cleansing Totem", icon="spell_nature_diseasecleansingtotes" },

    -- === LEGENDARY AURAS ===
    { id=0, name="Atiesh (Mage)", icon="spell_nature_moonglow", checkTooltip="critical" },
    { id=0, name="Atiesh (Warlock)", icon="spell_nature_moonglow", checkTooltip="33" },
    { id=0, name="Atiesh (Priest)", icon="spell_nature_moonglow", checkTooltip="62" },
    { id=0, name="Atiesh (Druid)", icon="spell_nature_moonglow", checkTooltip="attack and casting speed" },
}

-- 2. VARIABLES
local CURRENT_CAT_INDEX = 1
local MAIN_CONTAINER = nil
local CONFIG_FRAME = nil
local UPDATE_QUEUED = false
local LAST_UPDATE_TIME = 0
local ToggleConfig

-- VISUAL CONSTANTS
local PADDING_SIDE = 5
local PADDING_TOP = 5 

-- FRAME BACKDROP
local FRAME_BACKDROP = {
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16, 
    insets = { left = 4, right = 4, top = 4, bottom = 4 } 
}

-- 3. FLASK POPUP
StaticPopupDialogs["Consumables_CONFIRM_FLASK"] = {
    text = "WARNING: Use %s?", button1 = "Yes", button2 = "No",
    OnAccept = function(data)
        CastSpellByName(data)
        for bag = 0, 4 do
            for slot = 1, GetContainerNumSlots(bag) do
                local link = GetContainerItemLink(bag, slot)
                if link then
                    local _, _, itemName = string.find(link, "%[(.+)%]")
                    if itemName and itemName == data then UseContainerItem(bag, slot); return end
                end
            end
        end
    end,
    timeout = 0, whileDead = 1, hideOnEscape = 1
}

-- =============================================================
-- LOGIC: HELPERS
-- =============================================================

-- Global Tooltip Scanner
local scanner = getglobal("Consumables_ScanTooltip")
if not scanner then
    scanner = CreateFrame("GameTooltip", "Consumables_ScanTooltip", UIParent, "GameTooltipTemplate")
    scanner:SetFrameStrata("TOOLTIP")
    scanner:Hide()
end

-- Time Formatter (hr, min, or sec)
local function FormatTime(seconds)
    if not seconds then return "" end
    if seconds >= 3600 then
        return math.ceil(seconds / 3600) .. "h"
    elseif seconds >= 60 then
        return math.ceil(seconds / 60) .. "m"
    else
        return math.floor(seconds) .. "s"
    end
end

-- Bag Cache
local bagCache = {}
local lastBagScan = 0
local function GetItemCountByID(id)
    if not id or id == 0 then return 0 end
    local now = GetTime()
    if (now - lastBagScan) > 2 then
        for k in pairs(bagCache) do bagCache[k] = nil end
        for bag = 0, 4 do
            for slot = 1, GetContainerNumSlots(bag) do
                local link = GetContainerItemLink(bag, slot)
                if link then
                    local _, _, itemID = string.find(link, "item:(%d+):")
                    if itemID then
                        local _, count = GetContainerItemInfo(bag, slot)
                        local itemID_num = tonumber(itemID)
                        bagCache[itemID_num] = (bagCache[itemID_num] or 0) + math.abs(count)
                    end
                end
            end
        end
        lastBagScan = now
    end
    return bagCache[id] or 0
end

-- Buff Status Checker (Returns: isActive, buffIndex, texture)
local function GetBuffStatus(dbEntry)
    local targets = dbEntry.bufficon or dbEntry.icon
    if type(targets) ~= "table" then targets = { targets } end

    local searchList = {}
    for _, v in ipairs(targets) do table.insert(searchList, string.lower(v)) end

    for i = 0, 31 do
        local index = GetPlayerBuff(i, "HELPFUL")
        if index > -1 then
            local texture = GetPlayerBuffTexture(index)
            if texture then
                local texLower = string.lower(texture)
                for _, searchIcon in ipairs(searchList) do
                    if string.find(texLower, searchIcon, 1, true) then
                        if dbEntry.checkTooltip then
                            Consumables_ScanTooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
                            Consumables_ScanTooltip:ClearLines()
                            Consumables_ScanTooltip:SetPlayerBuff(index)
                            local searchTxt = string.lower(dbEntry.checkTooltip)
                            for line = 1, 5 do
                                local fontStr = getglobal("Consumables_ScanTooltipTextLeft" .. line)
                                local lineText = fontStr and fontStr:GetText()
                                if lineText and string.find(string.lower(lineText), searchTxt, 1, true) then
                                    return true, index, texture
                                end
                            end
                        else
                            return true, index, texture
                        end
                    end
                end
            end
        end
    end
    return false, 0, nil
end

local function IsWeaponBuff(name)
    local n = string.lower(name)
    if string.find(n, "sharpening stone") or string.find(n, "wizard oil") or string.find(n, "mana oil") 
    or string.find(n, "frost oil") or string.find(n, "shadowoil") or string.find(n, "windfury") 
    or string.find(n, "rockbiter") or string.find(n, "flametongue") or string.find(n, "frostbrand") 
    or string.find(n, "poison") or string.find(n, "coating") then
        return true
    end
    return false
end

-- Weapon Buff Status (Returns: isActive, timeRemaining, SlotName)
local function GetWeaponBuffStatus(dbEntry)
    if not IsWeaponBuff(dbEntry.name) then return false, 0, nil end

    local reqMH = string.find(dbEntry.name, "%(MH%)")
    local reqOH = string.find(dbEntry.name, "%(OH%)")
    
    local cleanName = dbEntry.name
    cleanName = string.gsub(cleanName, " %(MH%)", "")
    cleanName = string.gsub(cleanName, " %(OH%)", "")
    local search = string.lower(cleanName)

    if string.find(search, "dense sharpening") then search = "sharpened" 
    elseif string.find(search, "elemental sharpening") then search = "crit" 
    elseif string.find(search, "consecrated sharpening") then search = "attack power"
    elseif string.find(search, "sharpening stone") then search = "sharpened" 
    elseif string.find(search, "wizard oil") then search = "wizard oil" 
    elseif string.find(search, "mana oil") then search = "mana oil"
    elseif string.find(search, "frost oil") then search = "frost oil"
    elseif string.find(search, "shadowoil") then search = "shadow oil" 
    elseif string.find(search, "poison") then search = "poison" 
    elseif string.find(search, "coating") then search = "blessed"
    end

    local hasMain, timeMain, _, hasOff, timeOff, _ = GetWeaponEnchantInfo()

    if (reqMH or not reqOH) and hasMain then
        Consumables_ScanTooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
        Consumables_ScanTooltip:ClearLines()
        Consumables_ScanTooltip:SetInventoryItem("player", 16)
        for i = 1, Consumables_ScanTooltip:NumLines() do
            local line = getglobal("Consumables_ScanTooltipTextLeft" .. i)
            if line then
                local txt = string.lower(line:GetText() or "")
                if string.find(txt, search, 1, true) then
                    return true, timeMain/1000, "Main Hand"
                end
            end
        end
    end

    if (reqOH or not reqMH) and hasOff then
        Consumables_ScanTooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
        Consumables_ScanTooltip:ClearLines()
        Consumables_ScanTooltip:SetInventoryItem("player", 17)
        for i = 1, Consumables_ScanTooltip:NumLines() do
            local line = getglobal("Consumables_ScanTooltipTextLeft" .. i)
            if line then
                local txt = string.lower(line:GetText() or "")
                if string.find(txt, search, 1, true) then
                    return true, timeOff/1000, "Off Hand"
                end
            end
        end
    end

    return false, 0, nil
end

local function FindInDB(text)
    local results = {}
    local search = string.lower(text)
    for _, dbData in ipairs(MASTER_DB) do
        if string.find(string.lower(dbData.name), search, 1, true) then
            table.insert(results, dbData)
            if table.getn(results) >= 5 then break end
        end
    end
    return results
end

local function UseItemOrSpell(dbEntry)
    -- 1. CHECK ACTIVE STATUS
    -- If the buff or weapon enchant is already present, block the action.
    local isActive = GetBuffStatus(dbEntry)
    local wbActive = GetWeaponBuffStatus(dbEntry)
    
    if isActive or wbActive then
        -- Displays red error text in the middle of the screen
        UIErrorsFrame:AddMessage("Buff is already active!", 1.0, 0.1, 0.1, 1.0, 3)
        return
    end

    -- 2. PREPARE DATA
    local name = dbEntry.name
    local id = dbEntry.id

    -- Clean the name (remove MH/OH tags) so we can cast/use the actual item
    local cleanName = name
    cleanName = string.gsub(cleanName, " %(MH%)", "")
    cleanName = string.gsub(cleanName, " %(OH%)", "")

    -- 3. FLASK CONFIRMATION
    if string.find(cleanName, "Flask") then
        local dialog = StaticPopup_Show("Consumables_CONFIRM_FLASK", cleanName)
        if dialog then dialog.data = cleanName end
        return
    end

    -- 4. USE ITEM (By ID)
    if id and id ~= 0 then
        for bag = 0, 4 do
            for slot = 1, GetContainerNumSlots(bag) do
                local link = GetContainerItemLink(bag, slot)
                if link then
                    local _, _, itemID = string.find(link, "item:(%d+):")
                    if itemID and tonumber(itemID) == id then 
                        UseContainerItem(bag, slot)
                        return 
                    end
                end
            end
        end
    end

    -- 5. CAST SPELL (Fallback)
    CastSpellByName(cleanName)
end

-- =============================================================
-- LOGIC: RENDER FRAME
-- =============================================================

function SavePosition()
    if MAIN_CONTAINER then
        local settings = ConsumablesDB.settings
        local point = settings.alignRight and "TOPRIGHT" or "TOPLEFT"
        local x, y
        if settings.alignRight then
            x = MAIN_CONTAINER:GetRight() - UIParent:GetRight()
            y = MAIN_CONTAINER:GetTop() - UIParent:GetTop()
        else
            x = MAIN_CONTAINER:GetLeft()
            y = MAIN_CONTAINER:GetTop() - UIParent:GetTop()
        end
        ConsumablesDB.settings.pos = { point = point, relativePoint = point, x = x, y = y }
    end
end

function SaveCategoryPosition(frame, index)
    if frame and ConsumablesDB.categories[index] then
        local alignRight = false
        if ConsumablesDB.settings.independent then
            if ConsumablesDB.categories[index].alignRight == true then alignRight = true end
        else
            alignRight = ConsumablesDB.settings.alignRight
        end
        
        local point = alignRight and "TOPRIGHT" or "TOPLEFT"
        local x, y
        if alignRight then
            x = frame:GetRight() - UIParent:GetRight()
            y = frame:GetTop() - UIParent:GetTop()
        else
            x = frame:GetLeft()
            y = frame:GetTop() - UIParent:GetTop()
        end
        ConsumablesDB.categories[index].pos = { point = point, relativePoint = point, x = x, y = y }
    end
end

function CreateMainContainer()
    if MAIN_CONTAINER then return end
    MAIN_CONTAINER = CreateFrame("Frame", "ConsumablesMain", UIParent)
    MAIN_CONTAINER:SetWidth(100); MAIN_CONTAINER:SetHeight(100)
    MAIN_CONTAINER:SetClampedToScreen(true); MAIN_CONTAINER:SetMovable(true); MAIN_CONTAINER:EnableMouse(true)
    MAIN_CONTAINER:SetFrameStrata("MEDIUM")
    
    if ConsumablesDB.settings.pos then
        local p = ConsumablesDB.settings.pos
        MAIN_CONTAINER:SetPoint(p.point, UIParent, p.relativePoint, p.x, p.y)
    else
        MAIN_CONTAINER:SetPoint("CENTER", UIParent, "CENTER", 0, -100)
    end
end

function GetCategoryFrame(index)
    local name = "Consumables_CatFrame_" .. index
    local f = getglobal(name)
    if not f then
        f = CreateFrame("Frame", name, UIParent)
        f:SetMovable(true)
        f:SetClampedToScreen(true)
        f:SetFrameStrata("MEDIUM")
    end
    return f
end

function GetIconFrame(catFrame, index)
    local name = catFrame:GetName() .. "_Icon_" .. index
    local f = getglobal(name)
    if not f then
        f = CreateFrame("Button", name, catFrame)
    end
    return f
end

function RenderBuffIcons(frame, buffList, settings, isRightAligned)
    if not buffList then return false, 0, 0 end

    local size = settings.iconSize
    local spacing = settings.spacing
    local cols = settings.columns
    local hideActive = settings.hideActive
    local alignRight = isRightAligned 
    local independent = settings.independent

    -- Hide unused icons from previous renders
    local j = 1
    while getglobal(frame:GetName() .. "_Icon_" .. j) do
        getglobal(frame:GetName() .. "_Icon_" .. j):Hide()
        j = j + 1
    end

    local xOffset = PADDING_SIDE
    local yOffset = -(PADDING_TOP + 12) 

    local colCount = 0
    local maxWidth = 0
    local iconIndex = 1
    local hasVisible = false

    for _, buffRef in ipairs(buffList) do
        local buff = nil
        if buffRef.name then
            local refLower = string.lower(buffRef.name)
            for _, dbRow in ipairs(MASTER_DB) do
                if string.lower(dbRow.name) == refLower then buff = dbRow; break end
            end
        end

        if buff then
            local isActive, buffIdx, _ = GetBuffStatus(buff)
            local wbActive, wbTime, wbLoc = GetWeaponBuffStatus(buff)
            
            local shouldShow = true
            if hideActive and (isActive or wbActive) then shouldShow = false end

            if shouldShow then
                hasVisible = true
                local iconF = GetIconFrame(frame, iconIndex)
                
                iconF:SetWidth(size); iconF:SetHeight(size)
                iconF:SetFrameLevel(frame:GetFrameLevel() + 5)
                iconF:EnableMouse(true)
                
                iconF:ClearAllPoints()
                if colCount >= cols then 
                    colCount = 0
                    xOffset = PADDING_SIDE 
                    yOffset = yOffset - (size + spacing) 
                end

                if alignRight then 
                    iconF:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -xOffset, yOffset)
                else 
                    iconF:SetPoint("TOPLEFT", frame, "TOPLEFT", xOffset, yOffset) 
                end

                local t = getglobal(iconF:GetName().."_Tex")
                if not t then 
                    t = iconF:CreateTexture(iconF:GetName().."_Tex", "BACKGROUND")
                    t:SetAllPoints(iconF)
                end
                t:SetTexture("Interface\\Icons\\" .. buff.icon)

                local countText = getglobal(iconF:GetName().."_Count")
                if not countText then 
                    countText = iconF:CreateFontString(iconF:GetName().."_Count", "OVERLAY")
                    countText:SetFont("Fonts\\FRIZQT__.TTF", 11, "OUTLINE") 
                    countText:SetPoint("BOTTOMRIGHT", -2, 2)
                end
                local bagCount = GetItemCountByID(buff.id)
                if bagCount > 0 then countText:SetText(bagCount) else countText:SetText("") end

                local timerText = getglobal(iconF:GetName().."_Timer")
                if not timerText then
                    timerText = iconF:CreateFontString(iconF:GetName().."_Timer", "OVERLAY")
                    timerText:SetFont("Fonts\\FRIZQT__.TTF", 11, "OUTLINE")
                    timerText:SetPoint("TOP", 0, -2)
                    timerText:SetTextColor(1, 1, 0)
                end
                timerText:SetText("") 

                if isActive or wbActive then
                    t:SetVertexColor(1, 1, 1)
                    local timeLeft = 0
                    if wbActive then
                        timeLeft = wbTime
                    elseif isActive and buffIdx then
                        timeLeft = GetPlayerBuffTimeLeft(buffIdx)
                    end
                    if timeLeft > 0 then
                        timerText:SetText(FormatTime(timeLeft))
                    end
                else
                    t:SetVertexColor(0.5, 0.1, 0.1) 
                end

                -- SCRIPTS
                iconF.buffData = buff
                iconF:SetScript("OnEnter", function() 
                    if frame:GetAlpha() > 0.1 then
                        GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
                        GameTooltip:SetText(this.buffData.name, 1, 1, 1)
                        if isActive then GameTooltip:AddLine("Active", 0, 1, 0)
                        elseif wbActive then GameTooltip:AddLine("Active ("..(wbLoc or "?")..")", 0, 1, 0)
                        else GameTooltip:AddLine("Inactive", 1, 0.2, 0.2) end
                        GameTooltip:Show()
                    end
                end)
                iconF:SetScript("OnLeave", function() GameTooltip:Hide() end)
                
                iconF:SetScript("OnClick", function() 
                    if arg1 == "RightButton" and IsAltKeyDown() then
                        if independent then
                            frame.catData.alignRight = not frame.catData.alignRight
                        else
                            ConsumablesDB.settings.alignRight = not ConsumablesDB.settings.alignRight
                        end
                        UPDATE_QUEUED = true
                    elseif not IsAltKeyDown() then 
                        UseItemOrSpell(this.buffData) 
                    end 
                end)
                
                iconF:RegisterForDrag("LeftButton")
                iconF:SetScript("OnDragStart", function() 
                    if IsAltKeyDown() then 
                        local dragTarget = independent and frame or MAIN_CONTAINER
                        if dragTarget then
                            dragTarget:StartMoving()
                            dragTarget.isMoving = true
                        end
                    end 
                end)
                iconF:SetScript("OnDragStop", function() 
                    local dragTarget = independent and frame or MAIN_CONTAINER
                    if dragTarget and dragTarget.isMoving then
                        dragTarget:StopMovingOrSizing()
                        dragTarget.isMoving = false
                        if independent then
                            SaveCategoryPosition(frame, frame.catIndex)
                        else
                            SavePosition()
                        end
                    end
                end)

                iconF:Show()
                
                xOffset = xOffset + size + spacing
                if xOffset > maxWidth then maxWidth = xOffset end
                colCount = colCount + 1
                iconIndex = iconIndex + 1
            end
        end
    end
    return hasVisible, maxWidth + PADDING_SIDE, math.abs(yOffset) + size + 5
end

function UpdateTrackers()
    if not ConsumablesDB then return end
    CreateMainContainer()

    local settings = ConsumablesDB.settings
    local independent = settings.independent
    local catSpacing = settings.catSpacing or 20

    -- 1. GLOBAL HIDE CONDITIONS
    if settings.hidden 
       or (settings.hideCombat and UnitAffectingCombat("player")) 
       or (settings.onlyRaid and GetNumRaidMembers() == 0) then
        MAIN_CONTAINER:Hide()
        local i = 1
        while getglobal("Consumables_CatFrame_" .. i) do getglobal("Consumables_CatFrame_" .. i):Hide(); i = i + 1 end
        return
    end

    -- 2. MAIN CONTAINER SETUP
    if independent then 
        MAIN_CONTAINER:Hide()
        MAIN_CONTAINER:SetScript("OnUpdate", nil)
    else 
        MAIN_CONTAINER:Show()
        
        -- Master Visibility Control
        if settings.mouseover then
            local startAlpha = MouseIsOver(MAIN_CONTAINER) and 1 or 0
            MAIN_CONTAINER:SetAlpha(startAlpha)
            MAIN_CONTAINER:SetScript("OnUpdate", function()
                local over = MouseIsOver(this)
                if over and this:GetAlpha() < 1 then this:SetAlpha(1)
                elseif not over and this:GetAlpha() > 0 then this:SetAlpha(0) end
            end)
        else
            MAIN_CONTAINER:SetAlpha(1)
            MAIN_CONTAINER:SetScript("OnUpdate", nil)
        end

        if settings.showBackground then
            MAIN_CONTAINER:SetBackdrop(FRAME_BACKDROP)
            MAIN_CONTAINER:SetBackdropColor(0, 0, 0, 0.5)
            MAIN_CONTAINER:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)
        else
            MAIN_CONTAINER:SetBackdrop(nil)
        end
    end

    -- 3. POSITION MAIN CONTAINER
    if not independent and MAIN_CONTAINER:GetRight() then
        local scale = MAIN_CONTAINER:GetEffectiveScale() / UIParent:GetEffectiveScale()
        MAIN_CONTAINER:ClearAllPoints()
        if settings.alignRight then
            local x = (MAIN_CONTAINER:GetRight() * scale) - UIParent:GetRight()
            local y = (MAIN_CONTAINER:GetTop() * scale) - UIParent:GetTop()
            MAIN_CONTAINER:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", x/scale, y/scale)
        else
            local x = MAIN_CONTAINER:GetLeft() * scale
            local y = (MAIN_CONTAINER:GetTop() * scale) - UIParent:GetTop()
            MAIN_CONTAINER:SetPoint("TOPLEFT", UIParent, "TOPLEFT", x/scale, y/scale)
        end
    end

    -- 4. CATEGORY FRAMES LOOP
    local currentY = 0
    local maxContainerWidth = 0

    for catIndex, catData in ipairs(ConsumablesDB.categories) do
        local frame = GetCategoryFrame(catIndex)
        local frameName = frame:GetName()

        if catData.enabled ~= false then 
            frame.catIndex = catIndex 
            frame.catData = catData 
            local isRightAligned = (independent and catData.alignRight) or settings.alignRight

            frame:EnableMouse(true)
            frame:RegisterForDrag("LeftButton")

            -- MOVE SCRIPTS FOR THE FRAME ITSELF
            frame:SetScript("OnDragStart", function() 
                if IsAltKeyDown() then 
                    local dragTarget = independent and this or MAIN_CONTAINER
                    dragTarget:StartMoving()
                    dragTarget.isMoving = true
                end 
            end)
            frame:SetScript("OnDragStop", function() 
                local dragTarget = independent and this or MAIN_CONTAINER
                if dragTarget and dragTarget.isMoving then
                    dragTarget:StopMovingOrSizing()
                    dragTarget.isMoving = false
                    if independent then SaveCategoryPosition(this, this.catIndex) else SavePosition() end
                end
            end)
            frame:SetScript("OnMouseDown", function()
                if arg1 == "RightButton" and IsAltKeyDown() then
                    if independent then
                        catData.alignRight = not catData.alignRight
                    else
                        ConsumablesDB.settings.alignRight = not ConsumablesDB.settings.alignRight
                    end
                    UPDATE_QUEUED = true
                end
            end)

            -- Independent Frame Mouseover
            if independent then
                if settings.mouseover then
                    local startAlpha = MouseIsOver(frame) and 1 or 0
                    frame:SetAlpha(startAlpha)
                    frame:SetScript("OnUpdate", function()
                        local over = MouseIsOver(this)
                        if over and this:GetAlpha() < 1 then this:SetAlpha(1)
                        elseif not over and this:GetAlpha() > 0 then this:SetAlpha(0) end
                    end)
                else
                    frame:SetAlpha(1)
                    frame:SetScript("OnUpdate", nil)
                end
                
                if settings.showBackground then
                    frame:SetBackdrop(FRAME_BACKDROP)
                    frame:SetBackdropColor(0, 0, 0, 0.5)
                    frame:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)
                else
                    frame:SetBackdrop(nil)
                end
            else
                -- Grouped Mode: Inherits from MAIN_CONTAINER
                frame:SetScript("OnUpdate", nil)
                frame:SetBackdrop(nil)
            end
            
            -- Parenting/Positioning
            if not frame.isDragging then
                frame:ClearAllPoints()
                if independent then
                    frame:SetParent(UIParent)
                    if catData.pos then
                        local p = catData.pos
                        frame:SetPoint(p.point, UIParent, p.relativePoint, p.x, p.y)
                    else
                        frame:SetPoint("CENTER", UIParent, "CENTER", 0, -50 * catIndex)
                    end
                else
                    frame:SetParent(MAIN_CONTAINER)
                    local point = isRightAligned and "TOPRIGHT" or "TOPLEFT"
                    frame:SetPoint(point, MAIN_CONTAINER, point, 0, currentY)
                end
            end

            -- Title rendering
            local txt = getglobal(frameName.."_Title")
            if not txt then txt = frame:CreateFontString(frameName.."_Title", "OVERLAY", "GameFontNormalSmall") end
            txt:SetText(catData.name)
            txt:ClearAllPoints()
            local tPoint = isRightAligned and "TOPRIGHT" or "TOPLEFT"
            txt:SetPoint(tPoint, frame, tPoint, isRightAligned and -PADDING_SIDE or PADDING_SIDE, -PADDING_TOP)

            -- Icon rendering
            local hasVisible, width, height = RenderBuffIcons(frame, catData.buffs, settings, isRightAligned)

            if hasVisible then
                frame:SetWidth(width); frame:SetHeight(height); frame:Show()
                if width > maxContainerWidth then maxContainerWidth = width end
                currentY = currentY - (height + catSpacing)
            else
                frame:Hide()
            end
        else
            frame:Hide()
        end
    end

    -- 5. CLEANUP
    local cleanupIndex = table.getn(ConsumablesDB.categories) + 1
    while getglobal("Consumables_CatFrame_" .. cleanupIndex) do
        getglobal("Consumables_CatFrame_" .. cleanupIndex):Hide()
        cleanupIndex = cleanupIndex + 1
    end

    if not independent then
        MAIN_CONTAINER:SetWidth(maxContainerWidth)
        MAIN_CONTAINER:SetHeight(math.abs(currentY))
    end
end

-- =============================================================
-- GUI LOGIC
-- =============================================================

local DRAG_INFO = nil 
local GHOST_FRAME = nil

local function UpdateGhostFrame(text, iconPath)
    if not GHOST_FRAME then
        GHOST_FRAME = CreateFrame("Frame", "Consumables_DragGhost", UIParent)
        GHOST_FRAME:SetWidth(200); GHOST_FRAME:SetHeight(24)
        GHOST_FRAME:SetFrameStrata("FULLSCREEN_DIALOG") 
        GHOST_FRAME:SetAlpha(0.8) 
        GHOST_FRAME:EnableMouse(false) 
        
        GHOST_FRAME.icon = GHOST_FRAME:CreateTexture(nil, "ARTWORK")
        GHOST_FRAME.icon:SetWidth(20); GHOST_FRAME.icon:SetHeight(20)
        GHOST_FRAME.icon:SetPoint("LEFT", 0, 0)
        
        GHOST_FRAME.text = GHOST_FRAME:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        GHOST_FRAME.text:SetPoint("LEFT", GHOST_FRAME.icon, "RIGHT", 5, 0)
        
        GHOST_FRAME.bg = GHOST_FRAME:CreateTexture(nil, "BACKGROUND")
        GHOST_FRAME.bg:SetAllPoints(GHOST_FRAME)
        GHOST_FRAME.bg:SetTexture(0, 0, 0, 0.5)
    end

    GHOST_FRAME.text:SetText(text or "Moving...")
    if iconPath then
        GHOST_FRAME.icon:SetTexture(iconPath)
        GHOST_FRAME.icon:Show()
        GHOST_FRAME.text:SetPoint("LEFT", GHOST_FRAME.icon, "RIGHT", 5, 0)
    else
        GHOST_FRAME.icon:Hide()
        GHOST_FRAME.text:SetPoint("LEFT", 5, 0)
    end
    
    GHOST_FRAME:Show()
end

local function HideGhostFrame()
    if GHOST_FRAME then GHOST_FRAME:Hide() end
end

local function RefreshBuffList(scrollContent)
    -- Hide existing rows
    local kids = {scrollContent:GetChildren()}; 
    for _, k in ipairs(kids) do k:Hide() end
    
    local cat = ConsumablesDB.categories[CURRENT_CAT_INDEX]; 
    if not cat then return end
    if not cat.buffs then cat.buffs = {} end
    
    local ROW_WIDTH = 230
    local y = 0
    
    for i, buffRef in ipairs(cat.buffs) do
        local iconPath = "Interface\\Icons\\INV_Misc_QuestionMark"
        local refLower = string.lower(buffRef.name)
        for _, m in ipairs(MASTER_DB) do
            if string.lower(m.name) == refLower then
                iconPath = "Interface\\Icons\\" .. m.icon
                break
            end
        end

        local row = CreateFrame("Button", nil, scrollContent);
        row:SetWidth(ROW_WIDTH); row:SetHeight(20); row:SetPoint("TOPLEFT", 0, y)
        row:RegisterForDrag("LeftButton")
        row.index = i; row.iconTexture = iconPath; row.label = buffRef.name; row.parentContent = scrollContent; row.isBuff = true

        local line = row:CreateTexture(nil, "BACKGROUND"); line:SetHeight(1);
        line:SetPoint("BOTTOMLEFT", 0, 0); line:SetPoint("BOTTOMRIGHT", 0, 0); line:SetTexture(1, 1, 1, 0.1)

        -- Drag logic
        row:SetScript("OnDragStart", function()
            DRAG_INFO = { type = "BUFF", index = this.index, sourceFrame = this } 
            UpdateGhostFrame(this.label, this.iconTexture)
        end)

        row:SetScript("OnMouseUp", function()
            HideGhostFrame()
            if DRAG_INFO and DRAG_INFO.type == "BUFF" then
                local sourceIdx = DRAG_INFO.index
                local targetIdx = this.index
                local list = ConsumablesDB.categories[CURRENT_CAT_INDEX].buffs
                if sourceIdx ~= targetIdx and list[sourceIdx] then
                    local item = table.remove(list, sourceIdx)
                    table.insert(list, targetIdx, item)
                    RefreshBuffList(this.parentContent)
                    UPDATE_QUEUED = true
                end
                DRAG_INFO = nil
                if getglobal("Consumables_DropIndicator") then getglobal("Consumables_DropIndicator"):Hide() end
            end
        end)
        
        local icon = row:CreateTexture(nil, "ARTWORK");
        icon:SetWidth(16); icon:SetHeight(16); icon:SetPoint("LEFT", 0, 0); icon:SetTexture(iconPath)
        
        local del = CreateFrame("Button", nil, row);
        del:SetWidth(16); del:SetHeight(16); del:SetPoint("RIGHT", row, "RIGHT", -2, 0);
        del:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
        del.index = i; del.parentContent = scrollContent
        del:SetScript("OnClick", function()
            table.remove(ConsumablesDB.categories[CURRENT_CAT_INDEX].buffs, this.index);
            RefreshBuffList(this.parentContent); UPDATE_QUEUED = true
        end)

        local name = row:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
        name:SetPoint("LEFT", icon, "RIGHT", 5, 0); name:SetPoint("RIGHT", del, "LEFT", -5, 0); name:SetJustifyH("LEFT")
        name:SetText(buffRef.name)
        
        y = y - 22
    end

    local totalHeight = math.abs(y)
    scrollContent:SetHeight(totalHeight)
    
    local parentScrollFrame = scrollContent:GetParent()
    if parentScrollFrame and parentScrollFrame.UpdateScrollChildRect then
        parentScrollFrame:UpdateScrollChildRect()
    end

    -- Enable Mousewheel Scrolling
    parentScrollFrame:EnableMouseWheel(true)
    parentScrollFrame:SetScript("OnMouseWheel", function()
        local current = this:GetVerticalScroll()
        local scrollStep = 20
        if arg1 > 0 then
            this:SetVerticalScroll(math.max(0, current - scrollStep))
        else
            this:SetVerticalScroll(math.min(totalHeight - this:GetHeight() + 20, current + scrollStep))
        end
    end)
end

local function RefreshGroupList(catContent, buffContent, catNameBox)
    local kids = {catContent:GetChildren()}; for _, k in ipairs(kids) do k:Hide() end
    local y = 0
    for i, cat in ipairs(ConsumablesDB.categories) do
        local btn = CreateFrame("Button", nil, catContent);
        btn:SetWidth(190); btn:SetHeight(20); btn:SetPoint("TOPLEFT", 0, y)
        btn:RegisterForDrag("LeftButton")
        btn.index = i; btn.label = cat.name; btn.catContent = catContent; btn.buffContent = buffContent; btn.catNameBox = catNameBox

        local line = btn:CreateTexture(nil, "BACKGROUND"); line:SetHeight(1);
        line:SetPoint("BOTTOMLEFT", 0, 0); line:SetPoint("BOTTOMRIGHT", 0, 0); line:SetTexture(1, 1, 1, 0.1)

        if i == CURRENT_CAT_INDEX then
            local hl = btn:CreateTexture(nil, "BACKGROUND"); hl:SetAllPoints(btn); hl:SetTexture(1, 1, 1, 0.2)
            if catNameBox then catNameBox:SetText(cat.name) end
        end
        
        local chk = CreateFrame("CheckButton", nil, btn, "OptionsCheckButtonTemplate")
        chk:SetWidth(20); chk:SetHeight(20); 
        chk:SetPoint("LEFT", 0, 0) 
        chk:SetHitRectInsets(0,0,0,0)
        chk:SetChecked(cat.enabled ~= false)
        chk:SetScript("OnClick", function() 
            local p = this:GetParent()
            local c = ConsumablesDB.categories[p.index]
            if c.enabled == false then c.enabled = true else c.enabled = false end
            UPDATE_QUEUED = true 
        end)

        local text = btn:CreateFontString(nil, "ARTWORK", "GameFontNormal");
        text:SetPoint("LEFT", 25, 0); 
        text:SetPoint("RIGHT", -20, 0); text:SetJustifyH("LEFT")
        text:SetText(cat.name)
        if i == CURRENT_CAT_INDEX then text:SetTextColor(1, 1, 1) else text:SetTextColor(0.5, 0.5, 0) end

        btn.isGroup = true 

        btn:SetScript("OnDragStart", function()
            DRAG_INFO = { type = "GROUP", index = this.index, sourceFrame = this }
            UpdateGhostFrame(this.label, nil)
        end)

        btn:SetScript("OnMouseUp", function()
            HideGhostFrame()
            if DRAG_INFO and DRAG_INFO.type == "GROUP" then
                local sourceIdx = DRAG_INFO.index
                local targetIdx = this.index
                local list = ConsumablesDB.categories
                
                if sourceIdx ~= targetIdx and list[sourceIdx] then
                    local item = table.remove(list, sourceIdx)
                    table.insert(list, targetIdx, item)
                    
                    if CURRENT_CAT_INDEX == sourceIdx then 
                        CURRENT_CAT_INDEX = targetIdx 
                    elseif sourceIdx < CURRENT_CAT_INDEX and targetIdx >= CURRENT_CAT_INDEX then
                        CURRENT_CAT_INDEX = CURRENT_CAT_INDEX - 1
                    elseif sourceIdx > CURRENT_CAT_INDEX and targetIdx <= CURRENT_CAT_INDEX then
                        CURRENT_CAT_INDEX = CURRENT_CAT_INDEX + 1
                    end
                    RefreshGroupList(this.catContent, this.buffContent, this.catNameBox)
                    UPDATE_QUEUED = true
                end
                DRAG_INFO = nil
                if getglobal("Consumables_DropIndicator") then getglobal("Consumables_DropIndicator"):Hide() end
            else
                CURRENT_CAT_INDEX = this.index
                RefreshGroupList(this.catContent, this.buffContent, this.catNameBox)
                RefreshBuffList(this.buffContent)
            end
        end)
        
        local btnCopy = CreateFrame("Button", nil, btn)
        btnCopy:SetWidth(16); btnCopy:SetHeight(16)
        btnCopy:SetPoint("RIGHT", btn, "RIGHT", -20, 0) -- Positioned to the left of Delete
        btnCopy:SetNormalTexture("Interface\\Buttons\\UI-GuildButton-PublicNote-Up")
        btnCopy:SetScript("OnClick", function()
            local idx = this:GetParent().index
            local original = ConsumablesDB.categories[idx]
            
            local newCat = { name = original.name .. " (Copy)", buffs = {} }
            
            for _, buffData in ipairs(original.buffs) do
                table.insert(newCat.buffs, { name = buffData.name })
            end
            
            table.insert(ConsumablesDB.categories, idx + 1, newCat)
            RefreshGroupList(catContent, buffContent, catNameBox)
            UPDATE_QUEUED = true
        end)

        btnCopy:SetScript("OnEnter", function()
            GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
            GameTooltip:SetText("Copy Group", 1, 1, 1)
            GameTooltip:Show()
        end)
        btnCopy:SetScript("OnLeave", function() GameTooltip:Hide() end)

        local btnDel = CreateFrame("Button", nil, btn);
        btnDel:SetWidth(16); btnDel:SetHeight(16); btnDel:SetPoint("RIGHT", btn, "RIGHT", -2, 0);
        btnDel:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up");
        btnDel:SetScript("OnClick", function()
            local idx = this:GetParent().index
            table.remove(ConsumablesDB.categories, idx)
            if CURRENT_CAT_INDEX >= idx and CURRENT_CAT_INDEX > 1 then CURRENT_CAT_INDEX = CURRENT_CAT_INDEX - 1 end
            if CURRENT_CAT_INDEX > table.getn(ConsumablesDB.categories) then CURRENT_CAT_INDEX = 1 end
            RefreshGroupList(catContent, buffContent, catNameBox); UPDATE_QUEUED = true
        end)
        y = y - 20
    end

    local totalHeight = math.abs(y)
    catContent:SetHeight(totalHeight)
    local parentScroll = catContent:GetParent()
    if parentScroll then
        parentScroll:UpdateScrollChildRect()
        parentScroll:EnableMouseWheel(true)
        parentScroll:SetScript("OnMouseWheel", function()
            local current = this:GetVerticalScroll()
            if arg1 > 0 then this:SetVerticalScroll(math.max(0, current - 20))
            else this:SetVerticalScroll(math.min(totalHeight - this:GetHeight() + 20, current + 20)) end
        end)
    end
end

local function CreateConfigWindow()
    if CONFIG_FRAME then return CONFIG_FRAME end
    local f = CreateFrame("Frame", "ConsumablesConfig", UIParent)
    f:SetWidth(600); f:SetHeight(500); f:SetPoint("CENTER", UIParent, "CENTER")
    f:SetBackdrop({ bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", tile=true, tileSize=32, edgeSize=32, insets={left=11, right=12, top=12, bottom=11} })
    f:EnableMouse(true); f:SetMovable(true); f:Hide()
    f:SetScript("OnMouseDown", function() f:StartMoving() end); f:SetScript("OnMouseUp", function() f:StopMovingOrSizing() end)

    local dropIndicator = CreateFrame("Frame", "Consumables_DropIndicator", f)
    dropIndicator:SetHeight(2)
    dropIndicator:SetFrameStrata("TOOLTIP") 
    local dropLineTex = dropIndicator:CreateTexture(nil, "OVERLAY")
    dropLineTex:SetAllPoints(dropIndicator)
    dropLineTex:SetTexture(1, 0.8, 0, 1) 
    dropIndicator:Hide()

    local header = f:CreateTexture(nil, "ARTWORK"); header:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header"); header:SetWidth(300); header:SetHeight(64); header:SetPoint("TOP", f, "TOP", 0, 12)
    local title = f:CreateFontString(nil, "ARTWORK", "GameFontNormal"); title:SetPoint("TOP", header, "TOP", 0, -14); title:SetText("Consumables")
    local close = CreateFrame("Button", nil, f, "UIPanelCloseButton"); close:SetPoint("TOPRIGHT", -5, -5)

    local mainTab = CreateFrame("Frame", nil, f); mainTab:SetAllPoints(f)
    local settingsTab = CreateFrame("Frame", nil, f); settingsTab:SetAllPoints(f); settingsTab:Hide()
    
    local btnMain = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); btnMain:SetWidth(80); btnMain:SetHeight(20); btnMain:SetPoint("TOPLEFT", 15, -25); btnMain:SetText("Groups")
    btnMain:SetScript("OnClick", function() mainTab:Show(); settingsTab:Hide() end)
    local btnSet = CreateFrame("Button", nil, f, "UIPanelButtonTemplate"); btnSet:SetWidth(80); btnSet:SetHeight(20); btnSet:SetPoint("LEFT", btnMain, "RIGHT", 5, 0); btnSet:SetText("Settings")
    btnSet:SetScript("OnClick", function() mainTab:Hide(); settingsTab:Show() end)

    -- LEFT PANEL (Groups)
    local leftPanel = CreateFrame("Frame", nil, mainTab)
    leftPanel:SetWidth(240); leftPanel:SetHeight(400); leftPanel:SetPoint("TOPLEFT", 20, -70)
    leftPanel:SetBackdrop({ bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 5, right = 5, top = 5, bottom = 5 } })
    leftPanel:SetBackdropColor(0, 0, 0, 0.4); leftPanel:SetBackdropBorderColor(0.6, 0.6, 0.6, 1)

    local catHeader = leftPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlightLarge"); 
    catHeader:SetPoint("TOPLEFT", leftPanel, "TOPLEFT", 10, -10); catHeader:SetText("Groups")

    local catNameBox = CreateFrame("EditBox", "ConsumablesCatNameBox", leftPanel, "InputBoxTemplate");
    catNameBox:SetWidth(130); catNameBox:SetHeight(20); catNameBox:SetPoint("TOPLEFT", 15, -35); catNameBox:SetAutoFocus(false)
    catNameBox:SetScript("OnEscapePressed", function() this:ClearFocus() end)
    
    local renameBtn = CreateFrame("Button", nil, leftPanel, "UIPanelButtonTemplate");
    renameBtn:SetWidth(70); renameBtn:SetHeight(20); renameBtn:SetPoint("LEFT", catNameBox, "RIGHT", 5, 0); renameBtn:SetText("Rename")

    local catScroll = CreateFrame("ScrollFrame", "ConsumablesCatScroll", leftPanel, "UIPanelScrollFrameTemplate");
    catScroll:SetPoint("TOPLEFT", 15, -65); catScroll:SetWidth(190); catScroll:SetHeight(280);
    local catContent = CreateFrame("Frame", nil, catScroll); catContent:SetWidth(190); catContent:SetHeight(280); catScroll:SetScrollChild(catContent)

    local newCatBox = CreateFrame("EditBox", "ConsumablesNewCatBox", leftPanel, "InputBoxTemplate");
    newCatBox:SetWidth(130); newCatBox:SetHeight(20); newCatBox:SetPoint("BOTTOMLEFT", 15, 15); newCatBox:SetAutoFocus(false)
    newCatBox:SetScript("OnEscapePressed", function() this:ClearFocus() end)

    local newCatBtn = CreateFrame("Button", nil, leftPanel, "UIPanelButtonTemplate");
    newCatBtn:SetWidth(70); newCatBtn:SetHeight(20); newCatBtn:SetPoint("LEFT", newCatBox, "RIGHT", 5, 0); newCatBtn:SetText("Add New")

    -- RIGHT PANEL (Buffs)
    local rightPanel = CreateFrame("Frame", nil, mainTab)
    rightPanel:SetWidth(300); rightPanel:SetHeight(400); rightPanel:SetPoint("TOPLEFT", leftPanel, "TOPRIGHT", 10, 0)
    rightPanel:SetBackdrop({ bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 5, right = 5, top = 5, bottom = 5 } })
    rightPanel:SetBackdropColor(0, 0, 0, 0.4); rightPanel:SetBackdropBorderColor(0.6, 0.6, 0.6, 1)

    local buffHeader = rightPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlightLarge"); 
    buffHeader:SetPoint("TOPLEFT", rightPanel, "TOPLEFT", 10, -10); buffHeader:SetText("Consumes/Buffs")

    local searchBox = CreateFrame("EditBox", "ConsumablesSearchBox", rightPanel, "InputBoxTemplate");
    searchBox:SetWidth(180); searchBox:SetHeight(20); searchBox:SetPoint("TOPLEFT", 15, -35); searchBox:SetAutoFocus(false)
    searchBox:SetScript("OnEscapePressed", function() this:ClearFocus(); if getglobal("ConsumablesSearchResults") then getglobal("ConsumablesSearchResults"):Hide() end end)
    local searchLabel = rightPanel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall"); searchLabel:SetPoint("LEFT", searchBox, "RIGHT", 5, 0); searchLabel:SetText("(Search)")

    local buffScroll = CreateFrame("ScrollFrame", "ConsumablesBuffScroll", rightPanel, "UIPanelScrollFrameTemplate");
    buffScroll:SetPoint("TOPLEFT", 15, -65); buffScroll:SetPoint("BOTTOMRIGHT", -30, 15)
    local buffContent = CreateFrame("Frame", nil, buffScroll); buffContent:SetWidth(260); buffContent:SetHeight(300); buffScroll:SetScrollChild(buffContent)

    -- ACTIONS
    renameBtn:SetScript("OnClick", function() if ConsumablesDB.categories[CURRENT_CAT_INDEX] then ConsumablesDB.categories[CURRENT_CAT_INDEX].name = catNameBox:GetText(); RefreshGroupList(catContent, buffContent, catNameBox); UPDATE_QUEUED = true end end)
    newCatBtn:SetScript("OnClick", function() local name = newCatBox:GetText(); if name and name ~= "" then table.insert(ConsumablesDB.categories, { name = name, buffs = {} }); newCatBox:SetText(""); RefreshGroupList(catContent, buffContent, catNameBox) end end)

    -- DRAG TRACKING LOOP
    f:SetScript("OnUpdate", function()
        if DRAG_INFO then
            if GHOST_FRAME and GHOST_FRAME:IsShown() then
                local x, y = GetCursorPosition()
                local scale = UIParent:GetEffectiveScale()
                GHOST_FRAME:ClearAllPoints()
                GHOST_FRAME:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", (x / scale) + 15, (y / scale) - 15)
            end

            local focus = GetMouseFocus()
            if focus and focus.GetParent and focus:GetParent() and (focus:GetParent().isBuff or focus:GetParent().isGroup) then
                focus = focus:GetParent()
            end

            if DRAG_INFO.type == "BUFF" and focus and focus.isBuff and focus ~= DRAG_INFO.sourceFrame then
                dropIndicator:ClearAllPoints()
                dropIndicator:SetWidth(focus:GetWidth())
                dropIndicator:SetPoint("BOTTOMLEFT", focus, "TOPLEFT", 0, -1) 
                dropIndicator:Show()
                return
            end

            if DRAG_INFO.type == "GROUP" and focus and focus.isGroup and focus ~= DRAG_INFO.sourceFrame then
                dropIndicator:ClearAllPoints()
                dropIndicator:SetWidth(focus:GetWidth())
                dropIndicator:SetPoint("BOTTOMLEFT", focus, "TOPLEFT", 0, -1) 
                dropIndicator:Show()
                return
            end
        end
        
        if dropIndicator:IsShown() then dropIndicator:Hide() end
    end)

    -- SEARCH LOGIC
    local resultsFrame = CreateFrame("Frame", "ConsumablesSearchResults", rightPanel);
    resultsFrame:SetWidth(220); resultsFrame:SetHeight(120); resultsFrame:SetPoint("TOPLEFT", searchBox, "BOTTOMLEFT", -10, 0)
    resultsFrame:SetBackdrop({ bgFile="Interface\\Tooltips\\UI-Tooltip-Background", edgeFile="Interface\\Tooltips\\UI-Tooltip-Border", tile=true, tileSize=16, edgeSize=16, insets={left=5, right=5, top=5, bottom=5} })
    resultsFrame:SetBackdropColor(0,0,0,1); resultsFrame:Hide(); resultsFrame:SetFrameStrata("DIALOG")
    
    local resultButtons = {}
    for i=1, 5 do
        local btn = CreateFrame("Button", nil, resultsFrame); btn:SetWidth(210); btn:SetHeight(20); btn:SetPoint("TOPLEFT", 5, -5 - ((i-1)*20))
        local icon = btn:CreateTexture(nil, "ARTWORK"); icon:SetWidth(16); icon:SetHeight(16); icon:SetPoint("LEFT", 0, 0)
        local text = btn:CreateFontString(nil, "ARTWORK", "GameFontHighlight"); text:SetPoint("LEFT", icon, "RIGHT", 5, 0)
        local bg = btn:CreateTexture(nil, "BACKGROUND"); bg:SetAllPoints(btn); bg:SetTexture(1, 1, 1, 0.3); bg:SetVertexColor(0,0,0,0); btn.bg = bg; btn.icon = icon; btn.text = text
        btn:SetScript("OnEnter", function() this.bg:SetVertexColor(1,1,1,0.3) end); btn:SetScript("OnLeave", function() this.bg:SetVertexColor(0,0,0,0) end)
        btn:SetScript("OnClick", function()
            local cat = ConsumablesDB.categories[CURRENT_CAT_INDEX]
            if cat then 
                local found = false
                for _, b in ipairs(cat.buffs) do
                    if b.name == this.dataName then found = true; break end
                end
                if not found then
                    table.insert(cat.buffs, { name = this.dataName }); 
                    RefreshBuffList(buffContent); UPDATE_QUEUED = true; searchBox:SetText(""); resultsFrame:Hide() 
                end
            end
        end)
        resultButtons[i] = btn
    end
    searchBox:SetScript("OnTextChanged", function()
        local text = searchBox:GetText()
        if text == "" then resultsFrame:Hide() else
            local matches = FindInDB(text)
            local count = table.getn(matches)
            if count == 0 then resultsFrame:Hide(); return end
            resultsFrame:SetHeight((count * 20) + 10); resultsFrame:Show()
            for i=1, 5 do
                local btn = resultButtons[i]
                if matches[i] then
                    btn:Show(); btn.text:SetText(matches[i].name); btn.icon:SetTexture("Interface\\Icons\\" .. matches[i].icon); btn.dataName = matches[i].name;
                else btn:Hide() end
            end
        end
    end)

    -- SETTINGS TAB
    local showCheck = CreateFrame("CheckButton", "ConsumablesShowCheck", settingsTab, "OptionsCheckButtonTemplate");
    showCheck:SetPoint("TOPLEFT", 20, -60); getglobal("ConsumablesShowCheckText"):SetText("Enable")
    showCheck:SetChecked(not ConsumablesDB.settings.hidden)
    showCheck:SetScript("OnClick", function() ConsumablesDB.settings.hidden = not this:GetChecked(); UPDATE_QUEUED = true end)

    local mouseoverCheck = CreateFrame("CheckButton", "ConsumablesMouseoverCheck", settingsTab, "OptionsCheckButtonTemplate");
    mouseoverCheck:SetPoint("TOPLEFT", 220, -60); 
    getglobal("ConsumablesMouseoverCheckText"):SetText("Show on Mouseover")
    mouseoverCheck:SetChecked(ConsumablesDB.settings.mouseover)
    mouseoverCheck:SetScript("OnClick", function() 
        ConsumablesDB.settings.mouseover = this:GetChecked()
        UPDATE_QUEUED = true 
    end)

    local bgCheck = CreateFrame("CheckButton", "ConsumablesBgCheck", settingsTab, "OptionsCheckButtonTemplate");
    bgCheck:SetPoint("TOPLEFT", 20, -90); getglobal("ConsumablesBgCheckText"):SetText("Show Background")
    bgCheck:SetChecked(ConsumablesDB.settings.showBackground ~= false)
    bgCheck:SetScript("OnClick", function() ConsumablesDB.settings.showBackground = this:GetChecked(); UPDATE_QUEUED = true end)

    local sizeSlider = CreateFrame("Slider", "ConsumablesSizeSlider", settingsTab, "OptionsSliderTemplate"); sizeSlider:SetWidth(180); sizeSlider:SetHeight(16);
    sizeSlider:SetPoint("TOPLEFT", 20, -130); sizeSlider:SetMinMaxValues(16, 64); sizeSlider:SetValueStep(2); sizeSlider:SetValue(ConsumablesDB.settings.iconSize)
    getglobal("ConsumablesSizeSliderText"):SetText("Icon Size: " .. ConsumablesDB.settings.iconSize); getglobal("ConsumablesSizeSliderLow"):SetText("16"); getglobal("ConsumablesSizeSliderHigh"):SetText("64")
    sizeSlider:SetScript("OnValueChanged", function() ConsumablesDB.settings.iconSize = math.floor(this:GetValue()); getglobal("ConsumablesSizeSliderText"):SetText("Icon Size: " .. ConsumablesDB.settings.iconSize); UPDATE_QUEUED = true end)

    local spaceSlider = CreateFrame("Slider", "ConsumablesSpaceSlider", settingsTab, "OptionsSliderTemplate"); spaceSlider:SetWidth(180); spaceSlider:SetHeight(16);
    spaceSlider:SetPoint("TOPLEFT", 20, -170); spaceSlider:SetMinMaxValues(0, 20); spaceSlider:SetValueStep(1); spaceSlider:SetValue(ConsumablesDB.settings.spacing)
    getglobal("ConsumablesSpaceSliderText"):SetText("Spacing: " .. ConsumablesDB.settings.spacing); getglobal("ConsumablesSpaceSliderLow"):SetText("0"); getglobal("ConsumablesSpaceSliderHigh"):SetText("20")
    spaceSlider:SetScript("OnValueChanged", function() ConsumablesDB.settings.spacing = math.floor(this:GetValue()); getglobal("ConsumablesSpaceSliderText"):SetText("Spacing: " .. ConsumablesDB.settings.spacing); UPDATE_QUEUED = true end)

    local catSpaceSlider = CreateFrame("Slider", "ConsumablesCatSpaceSlider", settingsTab, "OptionsSliderTemplate"); catSpaceSlider:SetWidth(180); catSpaceSlider:SetHeight(16);
    catSpaceSlider:SetPoint("TOPLEFT", 20, -210); catSpaceSlider:SetMinMaxValues(0, 50); catSpaceSlider:SetValueStep(2); catSpaceSlider:SetValue(ConsumablesDB.settings.catSpacing or 20)
    getglobal("ConsumablesCatSpaceSliderText"):SetText("Group Vertical Gap: " .. (ConsumablesDB.settings.catSpacing or 20)); getglobal("ConsumablesCatSpaceSliderLow"):SetText("0"); getglobal("ConsumablesCatSpaceSliderHigh"):SetText("50")
    catSpaceSlider:SetScript("OnValueChanged", function() ConsumablesDB.settings.catSpacing = math.floor(this:GetValue()); getglobal("ConsumablesCatSpaceSliderText"):SetText("Group Vertical Gap: " .. ConsumablesDB.settings.catSpacing); UPDATE_QUEUED = true end)

    local colSlider = CreateFrame("Slider", "ConsumablesColSlider", settingsTab, "OptionsSliderTemplate"); colSlider:SetWidth(180); colSlider:SetHeight(16);
    colSlider:SetPoint("TOPLEFT", 20, -250); colSlider:SetMinMaxValues(1, 20); colSlider:SetValueStep(1); colSlider:SetValue(ConsumablesDB.settings.columns or 10)
    getglobal("ConsumablesColSliderText"):SetText("Max Columns: " .. (ConsumablesDB.settings.columns or 10)); getglobal("ConsumablesColSliderLow"):SetText("1"); getglobal("ConsumablesColSliderHigh"):SetText("20")
    colSlider:SetScript("OnValueChanged", function() ConsumablesDB.settings.columns = math.floor(this:GetValue()); getglobal("ConsumablesColSliderText"):SetText("Max Columns: " .. ConsumablesDB.settings.columns); UPDATE_QUEUED = true end)

    local combatCheck = CreateFrame("CheckButton", "ConsumablesCombatCheck", settingsTab, "OptionsCheckButtonTemplate");
    combatCheck:SetPoint("TOPLEFT", 20, -290); getglobal("ConsumablesCombatCheckText"):SetText("Hide in Combat")
    combatCheck:SetChecked(ConsumablesDB.settings.hideCombat)
    combatCheck:SetScript("OnClick", function() ConsumablesDB.settings.hideCombat = this:GetChecked(); UPDATE_QUEUED = true end)

    local raidCheck = CreateFrame("CheckButton", "ConsumablesRaidCheck", settingsTab, "OptionsCheckButtonTemplate");
    raidCheck:SetPoint("TOPLEFT", 20, -320); getglobal("ConsumablesRaidCheckText"):SetText("Only Show in Raid")
    raidCheck:SetChecked(ConsumablesDB.settings.onlyRaid)
    raidCheck:SetScript("OnClick", function() ConsumablesDB.settings.onlyRaid = this:GetChecked(); UPDATE_QUEUED = true end)

    local activeCheck = CreateFrame("CheckButton", "ConsumablesActiveCheck", settingsTab, "OptionsCheckButtonTemplate");
    activeCheck:SetPoint("TOPLEFT", 20, -350); getglobal("ConsumablesActiveCheckText"):SetText("Hide Active Buffs")
    activeCheck:SetChecked(ConsumablesDB.settings.hideActive)
    activeCheck:SetScript("OnClick", function() ConsumablesDB.settings.hideActive = this:GetChecked(); UPDATE_QUEUED = true end)
    
    local independentCheck = CreateFrame("CheckButton", "ConsumablesIndependentCheck", settingsTab, "OptionsCheckButtonTemplate");
    independentCheck:SetPoint("TOPLEFT", 20, -380); getglobal("ConsumablesIndependentCheckText"):SetText("Detach Groups (Move Independently)")
    independentCheck:SetChecked(ConsumablesDB.settings.independent)
    independentCheck:SetScript("OnClick", function() 
        local isIndep = this:GetChecked()
        ConsumablesDB.settings.independent = isIndep
        UPDATE_QUEUED = true 
    end)
    
    local mmCheck = CreateFrame("CheckButton", "ConsumablesMMCheck", settingsTab, "OptionsCheckButtonTemplate");
    mmCheck:SetPoint("TOPLEFT", 20, -410); getglobal("ConsumablesMMCheckText"):SetText("Show Minimap Button")
    mmCheck:SetChecked(not (ConsumablesDB.settings.minimap and ConsumablesDB.settings.minimap.hide))
    mmCheck:SetScript("OnClick", function() 
        if not ConsumablesDB.settings.minimap then ConsumablesDB.settings.minimap = {} end
        ConsumablesDB.settings.minimap.hide = not this:GetChecked()
        UpdateMinimapButton()
    end)

    -- CONTROLS REFERENCE (Right Side)
    local controlsFrame = CreateFrame("Frame", nil, settingsTab)
    controlsFrame:SetWidth(200); controlsFrame:SetHeight(300)
    controlsFrame:SetPoint("TOPRIGHT", -20, -60)
    
    local ctrlTitle = controlsFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    ctrlTitle:SetPoint("TOPLEFT", 0, 0)
    ctrlTitle:SetText("How to Use")
    
    local ctrlText = controlsFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    ctrlText:SetPoint("TOPLEFT", 0, -30)
    ctrlText:SetJustifyH("LEFT")
    ctrlText:SetWidth(200)
    ctrlText:SetText("|cffffffffClick Icon:|r Use Item/Cast Spell\n\n" ..
                     "|cffffffffAlt + Left Drag:|r Move Main Frame (or Group)\n\n" ..
                     "|cffffffffAlt + Right Click:|r Toggle Left/Right Align\n\n")

    -- FOOTER CREDIT
    local creditText = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    creditText:SetPoint("BOTTOMRIGHT", -15, 15)
    creditText:SetText("|cffff5555Made by Draxen|r")

    CONFIG_FRAME = f; RefreshGroupList(catContent, buffContent, catNameBox); RefreshBuffList(buffContent); return f
end


function Consumables_ToggleEnable()
    if not ConsumablesDB then return end
    
    -- Toggle the variable
    ConsumablesDB.settings.hidden = not ConsumablesDB.settings.hidden
    
    -- Sync the checkbox in the config menu if it's currently open
    if ConsumablesShowCheck then
        ConsumablesShowCheck:SetChecked(not ConsumablesDB.settings.hidden)
    end
    
    -- Output status to chat
    local status = ConsumablesDB.settings.hidden and "|cffff0000Disabled|r" or "|cff00ff00Enabled|r"
    DEFAULT_CHAT_FRAME:AddMessage("Consumables: " .. status)
    
    -- Trigger the frame refresh
    UPDATE_QUEUED = true
end

ToggleConfig = function() 
    if not CONFIG_FRAME then CreateConfigWindow() end
    if CONFIG_FRAME:IsVisible() then 
        CONFIG_FRAME:Hide() 
    else 
        CONFIG_FRAME:Show() 
    end 
end

ToggleConfig = function() 
    if not CONFIG_FRAME then CreateConfigWindow() end
    if CONFIG_FRAME:IsVisible() then 
        CONFIG_FRAME:Hide() 
    else 
        CONFIG_FRAME:Show() 
    end 
end

-- =============================================================
-- EVENTS
-- =============================================================
SLASH_CONSUMABLES1 = "/co"; SlashCmdList["CONSUMABLES"] = function(msg) 
    if msg == "reset" then
        ConsumablesDB.settings.pos = nil
        for _, cat in ipairs(ConsumablesDB.categories) do cat.pos = nil end
        if MAIN_CONTAINER then MAIN_CONTAINER:ClearAllPoints(); MAIN_CONTAINER:SetPoint("CENTER", 0, -100) end
        DEFAULT_CHAT_FRAME:AddMessage("Consumables: Positions reset.")
        UPDATE_QUEUED = true
    else
        ToggleConfig() 
    end
end

-- =============================================================
-- LOGIC: MINIMAP BUTTON
-- =============================================================

local function UpdateMinimapButton() 
    if Cons_MinimapButton then
        if ConsumablesDB.settings.minimap.hide then
            Cons_MinimapButton:Hide()
        else
            Cons_MinimapButton:Show()
        end
    end
end 

local function CreateMinimapButton()
    if Cons_MinimapButton then return end

    local miniMapBtn = CreateFrame("Button", "Cons_MinimapButton", Minimap)
    miniMapBtn:SetWidth(33); miniMapBtn:SetHeight(33)
    miniMapBtn:SetFrameStrata("MEDIUM"); miniMapBtn:SetFrameLevel(8)
    miniMapBtn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    if not ConsumablesDB.settings.minimap then ConsumablesDB.settings.minimap = {} end
    if not ConsumablesDB.settings.minimap.angle then ConsumablesDB.settings.minimap.angle = 225 end

    miniMapBtn.icon = miniMapBtn:CreateTexture(nil, "BACKGROUND")
    miniMapBtn.icon:SetPoint("CENTER", 0, 0)
    miniMapBtn.icon:SetWidth(20); miniMapBtn.icon:SetHeight(20)
    miniMapBtn.icon:SetTexture("Interface\\Icons\\INV_Potion_51")
    miniMapBtn.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

    miniMapBtn.border = miniMapBtn:CreateTexture(nil, "OVERLAY")
    miniMapBtn.border:SetPoint("TOPLEFT", 0, 0)
    miniMapBtn.border:SetWidth(53); miniMapBtn.border:SetHeight(53)
    miniMapBtn.border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")

    local function UpdateMinimapButtonPosition()
        local angle = ConsumablesDB.settings.minimap.angle
        local radius = 80
        local x = radius * math.cos(math.rad(angle))
        local y = radius * math.sin(math.rad(angle))
        miniMapBtn:ClearAllPoints()
        miniMapBtn:SetPoint("CENTER", Minimap, "CENTER", x, y)
    end

    miniMapBtn:RegisterForDrag("RightButton")
    miniMapBtn:RegisterForClicks("LeftButtonUp")

    miniMapBtn:SetScript("OnDragStart", function()
        this:SetScript("OnUpdate", function()
            local mx, my = GetCursorPosition()
            local px, py = Minimap:GetCenter()
            local scale = Minimap:GetEffectiveScale()
            mx, my = mx / scale, my / scale
            local dx, dy = mx - px, my - py
            local angle = math.deg(math.atan2(dy, dx))
            if angle < 0 then angle = angle + 360 end
            ConsumablesDB.settings.minimap.angle = angle
            UpdateMinimapButtonPosition()
        end)
    end)

    miniMapBtn:SetScript("OnDragStop", function()
        this:SetScript("OnUpdate", nil)
    end)

    miniMapBtn:SetScript("OnClick", function()
        if arg1 == "LeftButton" then 
            ToggleConfig() 
        end
    end)

    miniMapBtn:SetScript("OnEnter", function()
        GameTooltip:SetOwner(this, "ANCHOR_LEFT")
        GameTooltip:AddLine("Consumables")
        GameTooltip:AddLine("Left Click: Menu", 1, 1, 1)
        GameTooltip:AddLine("Right Click: Drag", 0.7, 0.7, 0.7)
        GameTooltip:Show()
    end)
    miniMapBtn:SetScript("OnLeave", function() GameTooltip:Hide() end)

    UpdateMinimapButtonPosition()
    UpdateMinimapButton()
end

local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD");
eventFrame:RegisterEvent("VARIABLES_LOADED");
eventFrame:RegisterEvent("UNIT_AURA");
eventFrame:RegisterEvent("BAG_UPDATE");
eventFrame:RegisterEvent("RAID_ROSTER_UPDATE");
eventFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
eventFrame:RegisterEvent("PLAYER_REGEN_ENABLED");

eventFrame:SetScript("OnEvent", function()
if event == "VARIABLES_LOADED" then
        if not ConsumablesDB then
            ConsumablesDB = {
                settings = {
                    iconSize = 32, spacing = 4, catSpacing = 20, columns=10, alignRight=false,
                    hideCombat=false, hidden=false, onlyRaid=false, hideActive=false, independent=false,
                    showBackground=true, mouseover=false, minimap={ hide=false, angle=45 }
                },
                categories = { { name="Consumables", buffs={} } }
            }
        end
        if ConsumablesDB.settings.independent == nil then ConsumablesDB.settings.independent = false end
        if ConsumablesDB.settings.showBackground == nil then ConsumablesDB.settings.showBackground = true end
        if ConsumablesDB.settings.mouseover == nil then ConsumablesDB.settings.mouseover = false end
        if ConsumablesDB.settings.minimap == nil then ConsumablesDB.settings.minimap = { hide=false, angle=45 } end
        
        CreateMinimapButton()
        UPDATE_QUEUED = true
    elseif event == "UNIT_AURA" then
        if arg1 == "player" then UPDATE_QUEUED = true end
    end
end)

eventFrame:SetScript("OnUpdate", function()
    if UPDATE_QUEUED then
        local now = GetTime()
        if (now - LAST_UPDATE_TIME) > 0.5 then
            UpdateTrackers()
            UPDATE_QUEUED = false
            LAST_UPDATE_TIME = now
        end
    end
end)