--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]
TEAM_THIEF = DarkRP.createJob("Thief", {
    color = Color(86, 86, 86, 255),
    model = "models/player/Group01/male_02.mdl",
    description = [[You are a thief, rob people, use your pickpocket skills
You CANNOT Raid!]],
    weapons = {"pickpocket", "weapon_fists"}, -- You may wanna find a pickpocket swep and add it here.
    command = "thief",
    max = 5,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_FIREFIGHTER = AddExtraTeam("Fire Fighter", {
color = Color(255, 165, 51, 255),
model = "models/fearless/fireman2.mdl",
description = [[You have to turn off fires.]],
weapons = {"fire_extinguisher", "fire_axe", "weapon_fists"},
command = "firefighter",
max = 6,
salary = 700,
admin = 0,
vote = false,
hasRadio = true,
category = "Emergency Services",
hasLicense = false
})

TEAM_TAXI = DarkRP.createJob("Drift Taxi Driver", {
    color = Color(255, 222, 0, 255),
    model = "models/player/Group01/Female_06.mdl",
    description = [[Drift around downtown diving people rides for some money

You can purchase your drift taxi from the F4 Vehicles Tab]],
    weapons = {"weapon_fists"},
    command = "drifttaxidriver",
    max = 2,
    salary = 270,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
customCheck = function(ply) return CLIENT or ply:GetUTimeTotalTime() >= 3600 end,
CustomCheckFailMsg = "You need 1 Hour on the server to become a Drift Taxi Driver!",
})


TEAM_KID = DarkRP.createJob("Kidnapper", {
    color = Color(25, 183, 125, 255),
    model = "models/player/timetosplit/ghost.mdl",
    description = [[You kidnap people and mug them, or hold them for ransom/money
Use your Bludgeon to knock your victim out with a Hit from behind
NOT ALLOWED TO RAID

MUST ADVERT KIDNAP BEFORE KIDNAPPING SOMEONE!]],
    weapons = {"m9k_ragingbull", "weapon_fists", "weapon_kidnapper"}, -- You may wanna find a pickpocket swep and add it here.
    command = "kidnapper",
    max = 2,
    salary = 45,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Criminals",
customCheck = function(ply) return CLIENT or ply:GetUTimeTotalTime() >= 3600 end,
CustomCheckFailMsg = "You need 1 Hour on the server to become a Kidnapper!",
}) 

TEAM_PROTHIEF = DarkRP.createJob("Professional Thief", {
    color = Color(90, 90, 90, 255),
    model = "models/player/hostage/hostage_03.mdl",
    description = [[You advanced levels to a professional thief
You are now equipped with a silent lockpick and can pickpocket people
You CAN also solo raid!
YOU MUST /ADVERT RAID]],
    weapons = {"pickpocket", "lockpick_silent", "weapon_fists"}, -- You may wanna find a pickpocket swep and add it here.
    command = "prothief",
    max = 3,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "VIP Jobs",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "vip_regular" or ply:GetUserGroup() == "server_manager" or ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "senior_admin_vip_gold" or ply:GetUserGroup() == "senior_admin_vip" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "admin_vip" or  ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" or ply:GetUserGroup() == "mod_vip" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP only!"

})

TEAM_PEDO = DarkRP.createJob("Rapist", {
    color = Color(166, 107, 164, 255),
    model = {"models/player/timetosplit/impersonator.mdl", "models/player/timetosplit/hybridmutant.mdl", "models/player/timetosplit/mrgiggles.mdl" },
    description = [[Give People STDs ;)
Use /rape while looking at a player]],
    weapons = {"music_action", "music_rush", "music_sad"},
    command = "mental",
    max = 10,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_HOBOL = DarkRP.createJob("Hobo Lord", {
    color = Color(0, 250, 0, 255),
    model = {"models/player/timetosplit/gargoyle.mdl", "models/player/charple.mdl", "models/player/timetosplit/zombie_crypt.mdl"},
    description = [[You are the hobo lord!
Build a hobo base with your fellow hobos or beg for money
throw boots at people

Rape people using /rape while looking at a person]],
    weapons = {"weapon_bugbait", "weapon_fists", "weapon_angryhobo", "weapon_beg"},
    command = "hobolord",
    max = 1,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Homeless",
})

TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(80, 45, 0, 255),
    model = "models/player/timetosplit/sergio.mdl",
    description = [[The lowest member of society. Everybody laughs at you.
        You have no home.
        Beg for your food and money
        Sing for everyone who passes to get money
        Make your own wooden home somewhere in a corner or outside someone else's door

Rape people using /rape while looking at a person]],
    weapons = {"weapon_bugbait", "weapon_fists", "weapon_beg"},
    command = "hobo",
    max = 0,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Homeless",
})

TEAM_HACK = DarkRP.createJob("Hacker", {
    color = Color(27, 169, 174, 255),
    model = "models/player/hostage/hostage_02.mdl",
    description = [[You work with the raiders and help them crack keypads to infultrate the base
YOU CANNOT SOLO RAID! must be with atleast 2 people!
MUST /ADVERT RAID!]],
    weapons = {"keypad_cracker", "weapon_fists"}, -- You may wanna find a pickpocket swep and add it here.
    command = "hacker",
    max = 4,
    salary = 75,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_BANKROBBER = DarkRP.createJob("Bank Robber", {
    color = Color(109, 53, 206, 255),
    model = {"models/player/pd2_chains_p.mdl", "models/player/pd2_dallas_p.mdl", "models/player/pd2_wolf_p.mdl"},
    description = [[Come up with a Heist to Rob the Government Bank inside the police station
NOT ALLOWED TO RAID!

IF SEEN NOT ROBBING BANK & FUCKING AROUND = BAN
]],
    weapons = {"weapon_fists", "m9k_sig_p229r"}, -- You may wanna find a pickpocket swep and add it here.
    command = "heister",
    max = 4,
    salary = 45,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Criminals",
})

TEAM_VIPPURGEE = DarkRP.createJob("Bank Heister", {
    color = Color(146, 0, 255, 255),
    model = "models/player/pd2_chains_p.mdl",
    description = [[You are a more experienced bank robber
and is equipped with a few extra things to make the job easyer 

]],
    weapons = {"weapon_fists", "m9k_usp", "lockpick", "bb_css_knife"}, -- You may wanna find a pickpocket swep and add it here.
    command = "vippurger",
    max = 5,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "VIP Jobs",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "vip_regular" or ply:GetUserGroup() == "server_manager" or ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "senior_admin_vip_gold" or ply:GetUserGroup() == "senior_admin_vip" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "admin_vip" or  ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" or ply:GetUserGroup() == "mod_vip" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP only!"
})

TEAM_GANGSTER = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_04.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_06.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"},
    description = [[The lowest person of crime
You are ALLOWED to solo raid
MUST /ADVERT!]],
    weapons = {"fists"},
    command = "gangster",
    max = 10,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_IS2 = DarkRP.createJob("ISIS Terrorist", {
    color = Color(129, 30, 0, 255),
    model = {"models/player/phoenix.mdl", "models/player/guerilla.mdl"},
    description = [[You are with the terrorist group ISIS
Your goal is to take the mayor hostage and hold him for money
if you are seen just playing around you will be demoted

YOUR ONLY ALLOWED TO PLAY WITH OTHER ISIS MEMBERS ONLINE! YOU WLL BE BLACKLISTED IF SEEN ALONE!
you MUST /advert before you do anything! raid/bomb
DO NOT JUST RDM!

/ADVERT TERROR IS NOT ALLOWED! YOU CAN ONLY RAID!
]],
    weapons = {"lockpick", "fire_molotov", "weapon_fists", "bb_css_knife", "m9k_ak47"}, -- You may wanna find a pickpocket swep and add it here.
    command = "voteterroist",
    max = 4,
    salary = 0,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "ISIS Cartel",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "vip_regular" or ply:GetUserGroup() == "server_manager" or ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "senior_admin_vip_gold" or ply:GetUserGroup() == "senior_admin_vip" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "admin_vip" or  ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" or ply:GetUserGroup() == "mod_vip" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP only!"
})

TEAM_ROB = DarkRP.createJob("Raider", {
    color = Color(10, 10, 10, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_04.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_06.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"},
    description = [[Break into houses, with your lockpicking skills and steal stuff
YOU MUST /ADVERT RAID before you are raiding!]],
    weapons = {"lockpick", "weapon_fists"}, -- You may wanna find a pickpocket swep and add it here.
    command = "raider",
    max = 8,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_PET = DarkRP.createJob("Renamon", {
    color = Color(230, 242, 0, 255),
    model = "models/renamon/renamon2009.mdl",
    description = [[Go find an owner and be their pet!
If you dont like somebody use the /rape command 

NOT ALLOWED TO USE GUNS!]],
    weapons = {}, -- You may wanna find a pickpocket swep and add it here.
    command = "pet",
    max = 1,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Pets",
})


TEAM_METH = DarkRP.createJob("Meth Cooker", {
    color = Color(166, 169, 69, 255),
    model = "models/player/timetosplit/envirosuit.mdl",
    description = [[Your a meth cook. go some cook meth and get rich]],
    weapons = {"weapon_fists"},
    command = "methcook",
    max = 10,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_VIPMETH = DarkRP.createJob("Advanced Meth Cooker", {
    color = Color(240, 240, 130, 255),
    model = "models/player/timetosplit/trooperblack.mdl",
    description = [[The worlds best meth cook
You are equipped with a pistol to defend your meth]],
    weapons = {"m9k_coltpython"},
    command = "walterwhite",
    max = 10,
    salary = 95,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "VIP Jobs",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "vip_regular" or ply:GetUserGroup() == "server_manager" or ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "senior_admin_vip_gold" or ply:GetUserGroup() == "senior_admin_vip" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "admin_vip" or  ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" or ply:GetUserGroup() == "mod_vip" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP only!"
})

TEAM_DRUG = DarkRP.createJob("Drug Dealer", {
    color = Color(68, 90, 43, 255),
    model = "models/player/hostage/hostage_02.mdl",
    description = [[Grow marijuana and dont get caught!
then sell it to the dealer down the street for money
You can access the Weed Growing tab to buy pots and stuff]],
    weapons = {"weapon_fists"},
    command = "drugd",
    max = 13,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_BLACKMARKET = DarkRP.createJob("Black Market Merchant", {
    color = Color(13, 13, 13, 255),
    model = "models/player/monk.mdl",
    description = [[You have access to the Black Market Tab in F4

Purchase a TNT Crafting Table and start making explosives
It crafts illegal explosives / items, sell your items to people around evocity

Able to sell Breach Charges, Car Bombs, Lockpicks, and Keypad Crackers]],
    weapons = {"weapon_fists"},
    command = "blackmarket",
    max = 3,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminals",
})

TEAM_CRAFT = DarkRP.createJob("Mining Foreman", {
    color = Color(144, 89, 7, 255),
    model = {"models/player/timetosplit/jebediahcrump.mdl"},
    description = [[You are able to purchase a crafting table in Misc Equipment
Craft weapons / items / money printers ect.
you must use your pickaxe and mine the needed resources]],
    weapons = {"weapon_pioche", "mining_orebag"},
    command = "miner",
    max = 15,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",

})

TEAM_VIPDRUG = DarkRP.createJob("Professional Drug Dealer", {
    color = Color(68, 90, 43, 255),
    model = "models/player/Group01/male_02.mdl",
    description = [[With your new knowledge of growing drugs, 
You can now grow weed and cocaine a better faster way and grow shrooms
Buy the VIP weed/coca Pot in the Weed Growing tab
you can either sell it or consume it]],
    weapons = {"weapon_fists"},
    command = "drugvip",
    max = 4,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "VIP Jobs",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "vip_regular" or ply:GetUserGroup() == "server_manager" or ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "senior_admin_vip_gold" or ply:GetUserGroup() == "senior_admin_vip" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "admin_vip" or  ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" or ply:GetUserGroup() == "mod_vip" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP only!"
})

TEAM_CHEMIST = DarkRP.createJob("Chemical Scientist", {
    color = Color(0, 157, 136, 255),
    model = "models/player/timetosplit/maletrooper.mdl",
    description = [[You are a chemist that makes stuff that gets people high
You can spawn a Chemistry Lab from the General Store via F4
and cook LSD, MDMA, or Ketamine and either sell it to players or consume it and get high]],
    weapons = {"weapon_fists"},
    command = "chemist",
    max = 6,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Scientists",
})

TEAM_ALCHEMIST = DarkRP.createJob("Alchemist", {
    color = Color(65,200,224,255),
    model = "models/player/timetosplit/crow.mdl",
    description = [[As an alchemist
You create potions for use or sell
Buy ingredients at the General Store near the taxi service to make your potions

Purchase a Alchemy Potion Lab from the General Store in F4
]],
    weapons = {"weapon_fists"},
    command = "alchemist",
    max = 5,
    salary = 45,
    admin = 0,
    vote = false,
category = "Scientists",
    hasLicense = false
})

TEAM_HITMAN = DarkRP.createJob("Bounty Hunter", {
    color = Color(255, 64, 0, 255),
    model = "models/agent_47/agent_47.mdl",
    description = [[People hire you to take out other people,
    this job require you to be completely focussed.
    A single breath can make you loose a shot.]],
    weapons = {"m9k_contender", "weapon_fists"},
    command = "hitman",
    max = 4,
    salary = 65,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Criminals",

})

TEAM_RGANG = DarkRP.createJob("Russian Byki Mobster", {
    color = Color(55, 55, 55, 255),
    model = "models/agent_47/agent_47.mdl",
    description = [[You are the Bodyguards of the mob
being the lowest rank in the mafia
You are to stay with with your fellow members at all times, this means no solo raiding
you must raid with a group or 2 atleast]],
    weapons = {"weapon_fists"},
    command = "russianmobster",
    max = 7,
    salary = 70,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Russian Mafia",
})

TEAM_RMOBS = DarkRP.createJob("Russian Sovietnik", {
    color = Color(55, 55, 55, 255),
    model = "models/agent_47/agent_47.mdl",
    description = [[The councilor or the advisor and one of the most trusted people of the Pakhan
YOU WILL BE BANNED FROM THIS JOB, IF SEEN PLAYING WITH NO OTHER RUSSIAN MOBSTERS ON
YOU CANNOT SOLO RAID]],
    weapons = {"m9k_vikhr", "unarrest_stick", "weapon_fists"},
    command = "russianstovietnik",
    max = 1,
    salary = 45,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Russian Mafia",
})

TEAM_RMOB = DarkRP.createJob("Russian Godfather", {
    color = Color(25, 25, 25, 255),
    model = "models/agent_47/agent_47.mdl",
    description = [[The ‘boss’ or the ‘Kresti otets’ is the ‘Godfather’ & controls everything.
Stay protected by your guards and members
YOU WILL BE BANNED FROM THIS JOB, IF SEEN PLAYING WITH NO OTHER RUSSIAN MOBSTERS ON
YOU CANNOT SOLO RAID]],
    weapons = {"lockpick", "unarrest_stick", "m9k_scoped_taurus", "weapon_fists"},
    command = "russianleader",
    max = 1,
    salary = 45,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Russian Mafia",
})

TEAM_HGANG = DarkRP.createJob("Italian Mafia Capo", {
    color = Color(80, 0, 230, 255),
    model = {"models/player/timetosplit/jakefenton.mdl"},
    description = [[You are the Italians capo, the bodyguard of the leader
You are to stay with with your fellow members at all times, this means no solo raiding
you must raid with a group or 2 atleast

YOU WILL BE BANNED FROM THIS JOB, IF SEEN PLAYING WITH NO OTHER ITALIAN MEMBERS ON]],
    weapons = {"m9k_mp7", "weapon_fists" },
    command = "yakuzahenchmen",
    max = 2,
    salary = 45,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Italian Mafia",
})

TEAM_POLICEUC = DarkRP.createJob("Undercover Police Unit", {
    color = Color(50, 50, 50, 255),
    model = {"models/player/Group01/Male_01.mdl", "models/player/Group01/Female_02.mdl"},
    description = [[You are a undercover unit ---- DO NOT ABUSE YOUR JOB!! ---
Disguise yourself and blend in with the mafia and meth cooks
and take them to jail, use the police baton!
Remember, your disguise does not last forever
Stay as lowkey as possible, try not to get caught!

Use the disguise kit to blend in]],
    weapons = {"m9k_glock", "door_ram", "disguise_kit", "weapon_policebaton", "weapon_fists", "weapon_physgun", "weapon_physcannon", "keys", "gmod_tool"},
    command = "ucunit",
    max = 2,
    salary = 250,
    admin = 0,
    vote = true,
hasRadio = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Government Officials",

PlayerLoadout = function(ply)
    ply:SetArmor(60)
    return true
end
})

TEAM_ANON = DarkRP.createJob("CIA Spec Ops Elite", {
    color = Color(44, 44, 44, 244),
    model = "models/specops/spec_ops.mdl",
    description = [[You are part of the C.I.A
A group of experienced fast and professional elites
You are the eyes behind the operation Be sneaky you are equipped with Active Camo
to infultrate the enemy base and take them out. Try not to get caught]],
weapons = {"arrest_stick", "m9k_m16a4_acog", "weapon_sh_flashbang", "bb_css_smoke", "m9k_vector", "bb_cssfrag", "bb_css_knife", "stunstick", "m9k_usas", "keys", "gmod_tool", "m9k_hk45", "weapon_taser", "weapon_camo", "weaponchecker", "handcuffsinhand", "weapon_policebaton", "weapon_fists", "door_ram", "weapon_physgun", "weapon_physcannon"},
    command = "specopselite",
    max = 2,
    salary = 300,
    admin = 0,
    vote = true,
    hasLicense = true,
hasRadio = true,
    category = "C.I.A Division",
customCheck = function(ply) return CLIENT or ply:GetUTimeTotalTime() >= 14400 end,
CustomCheckFailMsg = "You need 4 Hours on the server to become a C.I.A Spec Ops Elite!",
PlayerLoadout = function(ply)
    ply:SetArmor(60)
    return true
end

})

TEAM_CIAGENT = DarkRP.createJob("CIA Field Agent", {
    color = Color(75, 75, 180, 255),
    model = "models/player/smith.mdl",
    description = [[You are part of the C.I.A
A group of experienced fast and professional elites
You are the basic rank, Follow orders from your commander and investigate Drug Labs around town]],
weapons = {"arrest_stick", "m9k_mp9", "bb_css_knife", "stunstick", "keys", "gmod_tool", "m9k_hk45", "weapon_taser", "weaponchecker", "handcuffsinhand", "weapon_policebaton", "weapon_fists", "door_ram", "weapon_physgun", "weapon_physcannon"},
    command = "ciaagent",
    max = 4,
    salary = 300,
    admin = 0,
    vote = true,
    hasLicense = true,
hasRadio = true,
    category = "C.I.A Division",
customCheck = function(ply) return CLIENT or ply:GetUTimeTotalTime() >= 10800 end,
CustomCheckFailMsg = "You need 3 Hours on the server to become the C.I.A Field Agent!",
PlayerLoadout = function(ply)
    ply:SetArmor(25)
    return true
end

})

TEAM_CIALEAD = DarkRP.createJob("CIA Division Director", {
    color = Color(75, 75, 180, 255),
    model = "models/player/police.mdl",
    description = [[You are the Leader of the C.I.A
A group of experienced fast and professional elites
Command your Agents and take down all Criminal Activities]],
weapons = {"arrest_stick", "m9k_famas", "m9k_contender", "weapon_sh_flashbang", "bb_css_smoke", "bb_css_knife", "stunstick", "keys", "gmod_tool", "m9k_hk45", "m9k_deagle", "weapon_taser", "weaponchecker", "handcuffsinhand", "weapon_policebaton", "weapon_fists", "door_ram", "weapon_physgun", "weapon_physcannon"},
    command = "ciadirector",
    max = 1,
    salary = 400,
    admin = 0,
    vote = true,
    hasLicense = true,
hasRadio = true,
    category = "C.I.A Division",
customCheck = function(ply) return CLIENT or ply:GetUTimeTotalTime() >= 86400 end,
CustomCheckFailMsg = "You need 24 Hours on the server to become the C.I.A!",
PlayerLoadout = function(ply)
    ply:SetArmor(100)
    return true
end

})

TEAM_MK9 = DarkRP.createJob("CIA Spartan MK9 Elite", {
    color = Color(54, 116, 182, 255),
    model = "models/player/masterchiefh2.mdl",
    description = [[You are juggernaut of the C.I.A
You are called in when the situation can no longer be handled
Use your high power weapons to take down any enemy in your way]],
weapons = {"arrest_stick", "m9k_ares_shrike", "weapon_sh_flashbang", "bb_css_smoke", "stunstick", "bb_cssfrag", "keys", "gmod_tool", "m9k_striker12", "m9k_m14sp", "weapon_taser", "weaponchecker", "handcuffsinhand", "weapon_policebaton", "weapon_fists", "door_ram", "weapon_physgun", "weapon_physcannon"},
    command = "mk9",
    max = 1,
    salary = 300,
    admin = 0,
    vote = true,
    hasLicense = true,
hasRadio = true,
    category = "C.I.A Division",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP GOLD only!",

PlayerLoadout = function(ply)
    ply:SetArmor(100)
    return true
end

})

TEAM_MK10 = DarkRP.createJob("CIA Spartan MK10 Marksman", {
    color = Color(31, 121, 217, 255),
    model = "models/player/masterchiefh2.mdl",
    description = [[You are part of the C.I.A
The Main Eyes of the operation 
you are equipped with a high powered sniper to take out enemys.
Stay on high grounds or on roof tops]],
weapons = {"arrest_stick", "stunstick", "weapon_sh_flashbang", "bb_css_smoke", "m9k_intervention", "m9k_hk45", "bb_cssfrag", "gdcw_hkg28", "m9k_svu", "keys", "gmod_tool", "weapon_taser", "weaponchecker", "handcuffsinhand", "weapon_policebaton", "weapon_fists", "door_ram", "weapon_physgun", "weapon_physcannon"},
    command = "mk10",
    max = 1,
    salary = 300,
    admin = 0,
    vote = true,
    hasLicense = true,
hasRadio = true,
    category = "C.I.A Division",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP GOLD only!",

PlayerLoadout = function(ply)
    ply:SetArmor(100)
    return true
end
})

TEAM_POLICESN = DarkRP.createJob("S.W.A.T Sniper", {
    color = Color(25, 25, 170, 255),
    model = "models/player/timetosplit/riotofficer.mdl",
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
weapons = {"arrest_stick", "m9k_m98b", "stunstick", "weapon_policebaton", "weapon_fists", "door_ram", "weapon_physgun", "weapon_physcannon", "keys", "gmod_tool"},
    command = "swatsniper",
    max = 1,
    salary = 200,
    admin = 0,
    vote = true,
    hasLicense = true,
hasRadio = true,
    category = "S.W.A.T",
customCheck = function(ply)if SERVER then return ply:GetUserGroup() == "vip_regular" or ply:GetUserGroup() == "server_manager" or ply:GetUserGroup() == "staff_director" or ply:GetUserGroup() == "senior_admin_vip_gold" or ply:GetUserGroup() == "senior_admin_vip" or ply:GetUserGroup() == "superadmin" or ply:GetUserGroup() == "Community Owner" or ply:GetUserGroup() == "admin_vip_gold" or ply:GetUserGroup() == "admin_vip" or  ply:GetUserGroup() == "vip_gold" or ply:GetUserGroup() == "mod_vip_gold" or ply:GetUserGroup() == "mod_vip" end if CLIENT then return true end end,
CustomCheckFailMsg = "This job is VIP only!",

PlayerLoadout = function(ply)
    ply:SetArmor(65)
    return true
end
})


--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
