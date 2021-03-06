--[[
66666666      6      666666        666666        6        6
     6               6      6      6      6       6     6
    6         6      6      6      6      6         6 6
   6          6      6666666       6666666           6
  6           6      6             6                 6
66666666      6      6             6                 6
                     6             6                 6

]]
local ZFlex = {}

ZFlex.Menu = {"ZFlex"}
ZFlex.optionEnabled = Menu.AddOptionBool(ZFlex.Menu, "Enabled", false)

--bounty hunter
ZFlex.Bh_Hero_Menu = {"ZFlex", "Heroes", "Bounty Hunter"}
ZFlex.Bh_optionEnabled = Menu.AddOptionBool(ZFlex.Bh_Hero_Menu, "Enabled", false)
Menu.AddMenuIcon(ZFlex.Bh_Hero_Menu, "panorama/images/heroes/icons/npc_dota_hero_bounty_hunter_png.vtex_c")
ZFlex.optionKey = Menu.AddKeyOption(ZFlex.Menu, "Key Combo", Enum.ButtonCode.KEY_V)
Menu.AddOptionIcon(ZFlex.Bh_optionEnabled, "panorama/images/items/bottle_bounty_png.vtex_c")
ZFlex.Bh_Spels = {"ZFlex", "Heroes", "Bounty Hunter", "Skills in Combo"} 
ZFlex.Bh_Track = Menu.AddOptionBool(ZFlex.Bh_Spels, "Track", false)
Menu.AddOptionIcon(ZFlex.Bh_Track, "panorama/images/spellicons/bounty_hunter/hunters_hoard/bounty_hunter_track_png.vtex_c")
ZFlex.Bh_ShurikenToss = Menu.AddOptionBool(ZFlex.Bh_Spels, "Shuriken Toss", false)
Menu.AddOptionIcon(ZFlex.Bh_ShurikenToss, "panorama/images/spellicons/bounty_hunter_shuriken_toss_png.vtex_c")
ZFlex.Bh_optionTrack = Menu.AddOptionBool(ZFlex.Bh_Hero_Menu, "Auto Track on invisibility heroes", false)
ZFlex.Bh_optionAutoTrackForDead = Menu.AddOptionBool(ZFlex.Bh_Hero_Menu, "AutoSteal Track + Toss", false)
ZFlex.Bh_Inviz = Menu.AddOptionBool(ZFlex.Bh_Hero_Menu, "Use Shadow Walk if lowhp", false)

--riki
ZFlex.Riki_Hero_Menu = {"ZFlex", "Heroes", "Riki"}
ZFlex.Riki_Spels = {"ZFlex", "Heroes", "Riki", "Skills in Combo"} 
ZFlex.Riki_optionEnabled = Menu.AddOptionBool(ZFlex.Riki_Hero_Menu, "Enabled", false)
Menu.AddOptionIcon(ZFlex.Riki_optionEnabled, "panorama/images/items/gem_of_true_sight_png.vtex_c")
Menu.AddMenuIcon(ZFlex.Riki_Hero_Menu, "panorama/images/heroes/icons/npc_dota_hero_riki_png.vtex_c")
ZFlex.Riki_Blink = Menu.AddOptionBool(ZFlex.Riki_Spels, "Blink Strike")
Menu.AddOptionIcon(ZFlex.Riki_Blink, "panorama/images/spellicons/riki/shadow_masquerade/riki_gold_blink_strike_png.vtex_c")
ZFlex.Riki_Smoke = Menu.AddOptionBool(ZFlex.Riki_Spels, "Smoke Screen")
Menu.AddOptionIcon(ZFlex.Riki_Smoke, "panorama/images/spellicons/riki/ti8_immortal_head/riki_smoke_screen_immortal_gold_png.vtex_c")
ZFlex.Riki_Ult = Menu.AddOptionBool(ZFlex.Riki_Spels, "Tricks Of The Trade")
Menu.AddOptionIcon(ZFlex.Riki_Ult, "panorama/images//spellicons/riki_tricks_of_the_trade_png.vtex_c")
ZFlex.Riki_Damage_Blink = Menu.AddOptionBool(ZFlex.Riki_Hero_Menu, "AutoStil second skills", false)

--Ursa
ZFlex.Ursa_Hero_Menu = {"ZFlex", "Heroes", "Ursa"}
ZFlex.Ursa_optionEnabled = Menu.AddOptionBool(ZFlex.Ursa_Hero_Menu, "Enabled", false)
Menu.AddOptionIcon(ZFlex.Ursa_optionEnabled, "panorama/images/items/quelling_blade_png.vtex_c")
Menu.AddMenuIcon(ZFlex.Ursa_Hero_Menu, "panorama/images/heroes/icons/npc_dota_hero_ursa_png.vtex_c")
ZFlex.Ursa_Spels = {"ZFlex", "Heroes", "Ursa", "Skills In Combo"} 
ZFlex.Ursa_OverPower = Menu.AddOptionBool(ZFlex.Ursa_Spels, "Overpower", false)
Menu.AddOptionIcon(ZFlex.Ursa_OverPower, "panorama/images/spellicons/ursa_overpower_png.vtex_c")
ZFlex.Ursa_EarthShock = Menu.AddOptionBool(ZFlex.Ursa_Spels, "Earthshock", false)
Menu.AddOptionIcon(ZFlex.Ursa_EarthShock, "panorama/images/spellicons/ursa_earthshock_png.vtex_c")
ZFlex.Ursa_EnRage = Menu.AddOptionBool(ZFlex.Ursa_Spels, "Enrage", false)
Menu.AddOptionIcon(ZFlex.Ursa_EnRage, "panorama/images/spellicons/ursa_enrage_png.vtex_c")
ZFlex.UrsaOptionUlt = Menu.AddOptionSlider({"ZFlex", "Heroes", "Ursa"}, "At what percentag of enemy health will use 'Enrage'", 0 , 100, 100)
ZFlex.Ursa_optionBkb = Menu.AddOptionBool(ZFlex.Ursa_Hero_Menu, "Do not use the EnRage if bkb is enabled", false)
ZFlex.Ursa_UseUlForBring = Menu.AddOptionBool(ZFlex.Ursa_Hero_Menu, "Use Enrage to remove debuffs?", false)
ZFlex.Ursa_Debuffs = {"ZFlex", "Heroes", "Ursa", "Debuffs"}
ZFlex.Ursa_Hunger = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "Battle Hunger", false)
Menu.AddOptionIcon(ZFlex.Ursa_Hunger, "panorama/images/spellicons/axe_battle_hunger_png.vtex_c")
ZFlex.Ursa_Defuse = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "Diffusal Blade", false)
Menu.AddOptionIcon(ZFlex.Ursa_Defuse, "panorama/images/items/diffusal_blade_png.vtex_c")
ZFlex.Ursa_Nil = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "Nullifier", false)
Menu.AddOptionIcon(ZFlex.Ursa_Nil, "panorama/images/items/nullifier_png.vtex_c")
ZFlex.Ursa_Atos = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "Rod Of Atos", false)
Menu.AddOptionIcon(ZFlex.Ursa_Atos, "panorama/images/items/rod_of_atos_png.vtex_c")
ZFlex.Ursa_Etherial = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "Ethereal Blade", false)
Menu.AddOptionIcon(ZFlex.Ursa_Etherial, "panorama/images/items/ethereal_blade_png.vtex_c")
ZFlex.Ursa_Frosbite = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "Frostbite", false)
Menu.AddOptionIcon(ZFlex.Ursa_Frosbite, "panorama/images/spellicons/crystal_maiden_frostbite_png.vtex_c")
ZFlex.Ursa_EarthBind = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "EarthBind", false)
Menu.AddOptionIcon(ZFlex.Ursa_EarthBind, "panorama/images/spellicons/meepo_earthbind_png.vtex_c")
ZFlex.Ursa_Dust = Menu.AddOptionBool(ZFlex.Ursa_Debuffs, "Dust Of Appearance", false)
Menu.AddOptionIcon(ZFlex.Ursa_Dust, "panorama/images/items/dust_png.vtex_c")



--Slardar
ZFlex.Slardar_Hero_Menu = {"ZFlex", "Heroes", "Slardar"}
ZFlex.Slardar_optionEnabled = Menu.AddOptionBool(ZFlex.Slardar_Hero_Menu, "Enabled", false)
Menu.AddMenuIcon(ZFlex.Slardar_Hero_Menu, "panorama/images/heroes/icons/npc_dota_hero_slardar_png.vtex_c")
Menu.AddOptionIcon(ZFlex.Slardar_optionEnabled, "panorama/images/items/aeon_disk_png.vtex_c")
ZFlex.Slardar_Spels = {"ZFlex", "Heroes", "Slardar", "Skills In Combo"} 
ZFlex.Slardar_GuardianSprint = Menu.AddOptionBool(ZFlex.Slardar_Spels, "Guardian Sprint", false)
Menu.AddOptionIcon(ZFlex.Slardar_GuardianSprint, "panorama/images/spellicons/slardar_sprint_png.vtex_c")
ZFlex.Slardar_SlithereenCrush = Menu.AddOptionBool(ZFlex.Slardar_Spels, "Slithereen Crush", false)
Menu.AddOptionIcon(ZFlex.Slardar_SlithereenCrush, "panorama/images/spellicons/slardar_slithereen_crush_png.vtex_c")
ZFlex.Slardar_CorrosiveHaze = Menu.AddOptionBool(ZFlex.Slardar_Spels, "Corrosive Haze", false)
Menu.AddOptionIcon(ZFlex.Slardar_CorrosiveHaze, "panorama/images/spellicons/slardar_amplify_damage_png.vtex_c")
ZFlex.Slardar_optionUlt = Menu.AddOptionBool(ZFlex.Slardar_Hero_Menu, "Auto Corrosive Haze on invisibility heroes", false)

--Faceless Void
--[[
ZFlex.Void_Hero_Menu = {"ZFlex", "Heroes", "Faceless Void"}
ZFlex.Void_optionEnabled = Menu.AddOptionBool(ZFlex.Void_Hero_Menu, "Enabled", false)
Menu.AddMenuIcon(ZFlex.Void_Hero_Menu, "panorama/images/heroes/icons/npc_dota_hero_faceless_void_png.vtex_c")
ZFlex.Void_Spels = {"ZFlex", "Heroes", "Faceless Void", "Skills In Combo"}
ZFlex.Void_TimeWalk = Menu.AddOptionBool(ZFlex.Void_Spels, "Time Walk", false)
Menu.AddOptionIcon(ZFlex.Void_TimeWalk, "panorama/images/spellicons/faceless_void_time_walk_png.vtex_c")
ZFlex.Void_TimeDilation = Menu.AddOptionBool(ZFlex.Void_Spels, "Time Dilation", false)
Menu.AddOptionIcon(ZFlex.Void_TimeDilation, "panorama/images/spellicons/faceless_void_time_dilation_png.vtex_c")
ZFlex.Void_ChronoSphere = Menu.AddOptionBool(ZFlex.Void_Spels, "ChronoSphere", false)
Menu.AddOptionIcon(ZFlex.Void_ChronoSphere, "panorama/images/spellicons/faceless_void_chronosphere_png.vtex_c")
ZFlex.Void_optiomChronoSphere = Menu.AddOptionSlider(ZFlex.Void_Hero_Menu, "For how many heroes to use ChronoSphere ", 1 , 5, 1)
]]

--Lycan
ZFlex.Lycan_Hero_Menu = {"ZFlex", "Heroes", "Lycan"}
ZFlex.Lycan_optionEnabled = Menu.AddOptionBool(ZFlex.Lycan_Hero_Menu, "Enabled", false)
Menu.AddMenuIcon(ZFlex.Lycan_Hero_Menu, "panorama/images/heroes/icons/npc_dota_hero_lycan_png.vtex_c")
ZFlex.Lycan_Spels = {"ZFlex", "Heroes", "Lycan", "Skills In Combo"}
ZFlex.Summon_Wolves = Menu.AddOptionBool(ZFlex.Lycan_Spels, "Summon Wolves", false)
Menu.AddOptionIcon(ZFlex.Summon_Wolves, "panorama/images/spellicons/lycan_summon_wolves_png.vtex_c")
ZFlex.Howl = Menu.AddOptionBool(ZFlex.Lycan_Spels, "Howl", false)
Menu.AddOptionIcon(ZFlex.Howl, "panorama/images/spellicons/lycan_howl_png.vtex_c")
ZFlex.ShapeShift = Menu.AddOptionBool(ZFlex.Lycan_Spels, "ShapeShift", false)
Menu.AddOptionIcon(ZFlex.ShapeShift, "panorama/images/spellicons/lycan_shapeshift_png.vtex_c")
ZFlex.optionHowl = Menu.AddOptionBool(ZFlex.Lycan_Hero_Menu, "Use Howl on couldown", false)
--ZFlex.optionPush = Menu.AddOptionBool(ZFlex.Lycan_Hero_Menu, "Push",false)
--ZFlex.KeyPush = Menu.AddKeyOption(ZFlex.Lycan_Hero_Menu, "Key Push", Enum.ButtonCode.KEY_N)
--ZFlex.optionWolves = Menu.AddOptionBool(ZFlex.Lycan_Hero_Menu, "Use Wolves for warding", false)
--ZFlex.optionWolvesKey = Menu.AddKeyOption(ZFlex.Lycan_Hero_Menu,"Warding Wolves", Enum.ButtonCode.KEY_N)
ZFlex.optionDominator = Menu.AddOptionBool(ZFlex.Lycan_Hero_Menu, "Use Skills of Dominator creep", false)

--Items
ZFlex.Items = {"ZFlex", "Items"}
--ItemsInCombo
ZFlex.ItemsInCombo = {"ZFlex", "Items", "Item In Combo"}
ZFlex.BlackKingBar = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Black King Bar", false)
Menu.AddOptionIcon(ZFlex.BlackKingBar, "panorama/images/items/black_king_bar_png.vtex_c")
ZFlex.BladeMail = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Blade Mail", false)
Menu.AddOptionIcon(ZFlex.BladeMail, "panorama/images/items/blade_mail_png.vtex_c")
ZFlex.Pipe = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Pipe", false)
Menu.AddOptionIcon(ZFlex.Pipe, "panorama/images/items/pipe_png.vtex_c")
ZFlex.Shiva = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Shiva's Guard", false)
Menu.AddOptionIcon(ZFlex.Shiva, "panorama/images/items/shivas_guard_png.vtex_c")
ZFlex.Abysal = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Abyssal blade", false)
Menu.AddOptionIcon(ZFlex.Abysal, "panorama/images/items/abyssal_blade_png.vtex_c")
ZFlex.Medal = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Medallion Of Courage/Solar Crest", false)
Menu.AddOptionIcon(ZFlex.Medal, "panorama/images/items/medallion_of_courage_png.vtex_c")
ZFlex.Satanic = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Satanic", false)
Menu.AddOptionIcon(ZFlex.Satanic, "panorama/images/items/satanic_png.vtex_c")
ZFlex.Orchid = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Orchid/Bloodthorn", false)
Menu.AddOptionIcon(ZFlex.Orchid, "panorama/images/items/bloodthorn_png.vtex_c")
ZFlex.Nul = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Nullifier", false)
Menu.AddOptionIcon(ZFlex.Nul, "panorama/images/items/nullifier_png.vtex_c")
ZFlex.Urn = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Урна или Спирит Вессел", false)
Menu.AddOptionIcon(ZFlex.Urn, "panorama/images/items/spirit_vessel_png.vtex_c")
ZFlex.Mjollnir = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Mjollnir", false)
Menu.AddOptionIcon(ZFlex.Mjollnir, "panorama/images/items/mjollnir_png.vtex_c")
ZFlex.Defuse = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Diffusal Blade", false)
Menu.AddOptionIcon(ZFlex.Defuse, "panorama/images/items/diffusal_blade_png.vtex_c")
ZFlex.Manta = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Manta Style", false)
Menu.AddOptionIcon(ZFlex.Manta, "panorama/images/items/manta_png.vtex_c")
ZFlex.Mask = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Mask of Madness", false)
Menu.AddOptionIcon(ZFlex.Mask, "panorama/images/items/mask_of_madness_png.vtex_c")
ZFlex.Blink = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Blink Dagger", false)
Menu.AddOptionIcon(ZFlex.Blink, "panorama/images/items/blink_png.vtex_c")
ZFlex.Hex = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Hex", false)
Menu.AddOptionIcon(ZFlex.Hex, "panorama/images/items/sheepstick_png.vtex_c")
ZFlex.Necra = Menu.AddOptionBool(ZFlex.ItemsInCombo, "Necra", false)
Menu.AddOptionIcon(ZFlex.Necra, "panorama/images/items/necronomicon_png.vtex_c")


--ItemsForSafe
--[[ZFlex.optionSafeItem = Menu.AddOptionBool(ZFlex.Items, "Use item for safe", false)
ZFlex.ItemsForSafe = {"ZFlex", "Items", "Item For Safe"}
ZFlex.Eul = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Eul", false)
Menu.AddOptionIcon(ZFlex.Eul, "panorama/images/items/cyclone_png.vtex_c")
ZFlex.ForceStaff = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Force Staff/Pike", false)
Menu.AddOptionIcon(ZFlex.ForceStaff, "panorama/images/items/force_staff_png.vtex_c")
ZFlex.Lotus = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Lotus Orb", false)
Menu.AddOptionIcon(ZFlex.Lotus, "panorama/images/items/lotus_orb_png.vtex_c")
ZFlex.Sb = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Shadow Blade/Silver Edge", false)
Menu.AddOptionIcon(ZFlex.Sb, "panorama/images/items/silver_edge_png.vtex_c")
ZFlex.GuardianGreaves = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Meka/Guradian Greaves", false)
Menu.AddOptionIcon(ZFlex.GuardianGreaves, "panorama/images/items/guardian_greaves_png.vtex_c")
ZFlex.HealUrn = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Urn/Spirit Vessel", false)
Menu.AddOptionIcon(ZFlex.HealUrn, "panorama/images/items/spirit_vessel_png.vtex_c")
ZFlex.Manta = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Manta Style", false)
Menu.AddOptionIcon(ZFlex.Manta, "panorama/images/items/manta_png.vtex_c")
ZFlex.Hex = Menu.AddOptionBool(ZFlex.ItemsForSafe, "Scythe Of Vyse", false)
Menu.AddOptionIcon(ZFlex.Hex, "panorama/images/items/sheepstick_png.vtex_c")
]]

ZFlex.optionBlink = Menu.AddOptionCombo(ZFlex.Items, "Type Blink", {"Best Position", "To enemy"}, 1)
ZFlex.optionSatanic = Menu.AddOptionBool(ZFlex.Items, "Use Satanic only less 50% health", false)
--[[ZFlex.OptionManta = {"ZFlex", "Items", "Bring debuff Manta style"}
ZFlex.AxeHunger = Menu.AddOptionBool(ZFlex.OptionManta, "Buttle Hunger", false) --modifier_axe_battle_hunger
Menu.AddOptionIcon(ZFlex.AxeHunger, "panorama/images/spellicons/axe_battle_hunger_png.vtex_c")
ZFlex.AncientSeal = Menu.AddOptionBool(ZFlex.OptionManta, "Ancient Seal", false)
Menu.AddOptionIcon(ZFlex.AncientSeal, "panorama/images/spellicons/skywrath_mage_ancient_seal_png.vtex_c") --modifier_skywrath_mage_ancient_seal
]]
ZFlex.NearestTarget =  Menu.AddOptionSlider(ZFlex.Menu, "Closest to mouse range", 200, 800, 100)
ZFlex.targetIndicator = Menu.AddOptionBool(ZFlex.Menu, "Draw Target", false)
ZFlex.targetParticle2 = Menu.AddOptionCombo(ZFlex.Menu, "Type draw", {"Ultra Draw(only drugs)", "Normal Target", "Rot Target", "Void Target", "Super Target(recommend)", "Normal Target 2", "Not Bad Target(Soft drugs)", "Blue Fire Target"
, "Blue Butterfly", "Red Butterfly", "Dark Rot", "Ultra Draw 2(only drugs)", "Purple Fire"}, 1)
--ZFlex.optionLanguage = Menu.AddOptionCombo(ZFlex.Menu, "Language:", {"Русский", "English"}, 1)

ZFlex.DamageInformer = {"ZFlex", "Damage Informer"}
ZFlex.OptionDamageInformer = Menu.AddOptionBool(ZFlex.DamageInformer, "Enable", false)
ZFlex.OptionX = Menu.AddOptionSlider(ZFlex.DamageInformer, "X", 1 , 1000, 791)
ZFlex.OptionY = Menu.AddOptionSlider(ZFlex.DamageInformer, "Y", 1 , 1000, 92)
ZFlex.OptionDisnance = Menu.AddOptionSlider(ZFlex.DamageInformer, "Distance", 250 , 1000, 250)

ZFlex.fontItem = Renderer.LoadFont("Arial", 18, Enum.FontWeight.EXTRABOLD)

local myHero = nil
local heroName
local myPlayer
local myTeam
local enemy = nil
local hero = nil
local bkb, bm, pipe, shiva, abysal, medal, satanic, orchid, nul, urn, mjollnir, defuse, manta, mask, blink, necra
local eul, forcestaff, lotus, sb, guardiangreaves, healurn, hex
local modifier_axehunger, modifier_ancientseal
local void_timeWalk, void_chronosphere, void_timedilation
local slardar_corrosivehaze, slardar_slithereencrush, slardar_guardiansprint
local ursa_enrage, ursa_earthshok, ursa_overpower
local ursa_defuse, ursa_nil, ursa_atos, ursa_etherial, ursa_frosbite, ursa_earthbind, ursa_dust, ursa_hunger
local riki_blink, riki_smoke, riki_ult, riki_ultmod
local bh_track, bh_shurikentoss, bh_trackmod
local howl, wolves, shapeshift
local enemy_origin
local cursor_pos
ZFlex.lastTick = 0
local myMana
local enemyInRage
local targetParticle = 0

local kol_udar = 0
local myHero
local name

local distance
local x = 791
local y = 92
local speed
local ursault_resist = 1
local kol_udar_super = 0

function ZFlex.Init()
	if Engine.IsInGame() then
		myHero = Heroes.GetLocal()
		if not myHero then 
			return
		end
		heroName = NPC.GetUnitName(myHero)
		myPlayer = Players.GetLocal()
        myTeam = Entity.GetTeamNum(myHero)
        
	end
end


function ZFlex.OnGameStart()
	ZFlex.Init()
end

function ZFlex.OnUpdate()
    if not Menu.IsEnabled(ZFlex.optionEnabled) or not Engine.IsInGame() then return end
	if not myHero then
		ZFlex.Init()
		return
	end
    if not Entity.IsAlive(myHero) or NPC.IsStunned(myHero) or NPC.IsSilenced(myHero) then 
        return
     end
    --if Menu.IsEnabled(ZFlex.optionSafeItem) then 
       -- ZFlex.optionItemSafe(myHero, myMana, enemy)
   -- end
   if Menu.IsEnabled(ZFlex.OptionDamageInformer) then
    ZFlex.Informer(myHero)
   end
    if heroName == "npc_dota_hero_bounty_hunter" and Menu.IsEnabled(ZFlex.Bh_optionEnabled) then
        enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
        if enemy and enemy ~= 0 then
        if Menu.IsEnabled(ZFlex.Bh_optionTrack) then
            ZFlex.BhAutoTrackForInviz(myHero, enemy)
        end
        if Menu.IsEnabled(ZFlex.Bh_optionAutoTrackForDead) then
            ZFlex.BhAutoTrackForSteal(myHero, enemy)
        end
        if Menu.IsEnabled(ZFlex.Bh_Inviz) then
            ZFlex.BhInviz(myHero, enemy)
        end
        if Menu.IsKeyDown(ZFlex.optionKey) then
                myMana = NPC.GetMana(myHero)
                ZFlex.Bh(myHero, enemy, myMana)
                ZFlex.UseItems(myHero, enemy, myMana)
            end
        end
    end
   
    if heroName == "npc_dota_hero_riki" and Menu.IsEnabled(ZFlex.Riki_optionEnabled) then
        enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
        if enemy and enemy ~= 0 then         
            if Menu.IsKeyDown(ZFlex.optionKey) then  
                myMana = NPC.GetMana(myHero)
                ZFlex.Riki(myHero, enemy, myMana)
                ZFlex.UseItems(myHero, enemy, myMana)
                if ZFlex.SleepReady(0.6) then
                ZFlex.RikiUlt(myHero, enemy)
                ZFlex.lastTick = os.clock()
                end
            end
            if Menu.IsEnabled(ZFlex.Riki_Damage_Blink) then
                ZFlex.RikiStealBlink(myHero, enemy) 
            end   
        end
    end

    if heroName == "npc_dota_hero_ursa" and Menu.IsEnabled(ZFlex.Ursa_optionEnabled) then
        enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
        if enemy and enemy ~= 0 then   
  
            if Menu.IsKeyDown(ZFlex.optionKey) then  
                myMana = NPC.GetMana(myHero)
                ZFlex.Ursa(myHero, enemy, myMana)
                ZFlex.UseItems(myHero, enemy, myMana)
                ZFlex.UrsaUlt(myHero, enemy)
            end
        end
        if Menu.IsEnabled(ZFlex.Ursa_UseUlForBring) then
            ZFlex.ModifierUrsaDebuff(myHero)
            ZFlex.UrsaBringDebuff(myHero)
        end
    end

    if heroName == "npc_dota_hero_slardar" and Menu.IsEnabled(ZFlex.Slardar_optionEnabled) then
        enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
        if enemy and enemy ~= 0 then  
            if Menu.IsEnabled(ZFlex.Slardar_optionUlt) then
                ZFlex.SlardarAutoUlt(myHero, myMana, enemy)
               end       
            if Menu.IsKeyDown(ZFlex.optionKey) then  
                myMana = NPC.GetMana(myHero)
                ZFlex.Slardar(myHero, enemy, myMana)
                ZFlex.UseItems(myHero, enemy, myMana)
            end  
        end
    end

    if heroName == "npc_dota_hero_lycan" and Menu.IsEnabled(ZFlex.Lycan_optionEnabled) then
        enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
       -- if Menu.IsEnabled(ZFlex.optionPush) and Menu.IsKeyDown(ZFlex.KeyPush) then
       --     ZFlex.TowerStentecher(myHero, myMana)
       -- end
        if enemy and enemy ~= 0 then        
            if Menu.IsEnabled(ZFlex.optionHowl) then
                ZFlex.LycanHowl(myHero)
            end 
            if Menu.IsKeyDown(ZFlex.optionKey) then  
                myMana = NPC.GetMana(myHero)
                ZFlex.Lycan(myHero, enemy, myMana)
                if ZFlex.SleepReady(0.5) then
                    ZFlex.UseItems(myHero, enemy, myMana)
                end
                if Menu.IsEnabled(ZFlex.optionDominator) then
                    ZFlex.LycanSkillDominator(myHero, enemy)
                end
            end 
        end
    end

end
local name = 0
local name2 = 0
local name3 = 0
local name4 = 0
local name5 = 0
function ZFlex.Informer(myHero)
    scor=NPC.GetAttackTime(myHero)
    local demegemk
    if NPC.GetUnitName(myHero) == "npc_dota_hero_monkey_king" then
        mk = NPC.GetModifier(myHero, "modifier_monkey_king_quadruple_tap_bonuses")
        if mk then
            demegemk = Ability.GetLevelSpecialValueFor(NPC.GetAbility(myHero, "monkey_king_jingu_mastery" ), "bonus_damage")
        else
            demegemk = 0
        end
    else
        demegemk = 0
    end
    kol_damege=NPC.GetTrueDamage(myHero)
    enemys = Entity.GetHeroesInRadius(myHero, 900, Enum.TeamType.TEAM_ENEMY)
    if enemys and #enemys > 0 then
        for i=1, #enemys do
            enemy10 = enemys[i]
            local enemy2 = enemys[2]
            local enemy3 = enemys[3]
            local enemy4 = enemys[4]
            local enemy5 = enemys[5]
            local enemy = enemys[1]
            if NPC.GetUnitName(enemy10) == "npc_dota_hero_ursa" then
                    ursault = NPC.GetModifier(enemy10, "modifier_ursa_enrage")
                    if ursault then
                        kol_damege = kol_damege*2*0.1
                    end
            end
            if enemy then
                armor = NPC.GetArmorDamageMultiplier(enemy)
                regen = NPC.GetHealthRegen(enemy)
                healthEn = Entity.GetHealth(enemy)
                name = NPC.GetUnitName(enemy)
                kol_damege1=armor*(kol_damege+demegemk)
                kol_damege_fromregenuch = kol_damege1/scor
                speed1 = healthEn/kol_damege_fromregenuch
                healthWithRegen = (speed1*regen)+healthEn
                kol_udar_withregen = healthWithRegen/kol_damege1
                speedwithregen =  kol_udar_withregen*scor   
            else
                name = 0         
            end
            if enemy2 then
                armor2 = NPC.GetArmorDamageMultiplier(enemy2)
                regen2 = NPC.GetHealthRegen(enemy2)
                healthEn2 = Entity.GetHealth(enemy2)
                name2 = NPC.GetUnitName(enemy2)
                kol_damege2=armor2*(kol_damege+demegemk)
                kol_damege_fromregenuch2 = kol_damege2/scor
                speed2 = healthEn2/kol_damege_fromregenuch2
                healthWithRegen2 = (speed2*regen2)+healthEn2+1
                kol_udar_withregen2 = healthWithRegen2/kol_damege2
                speedwithregen2 =  kol_udar_withregen2*scor  
            else
                name2 = 0
            end
            if enemy3 then
                armor3 = NPC.GetArmorDamageMultiplier(enemy3)
                regen3 = NPC.GetHealthRegen(enemy3)
                healthEn3 = Entity.GetHealth(enemy3)
                name3 = NPC.GetUnitName(enemy3)
                kol_damege3=armor*(kol_damege+demegemk)
                kol_damege_fromregenuch3 = kol_damege3/scor
                speed3 = healthEn3/kol_damege_fromregenuch3
                healthWithRegen3 = (speed3*regen3)+healthEn3+1
                kol_udar_withregen3 = healthWithRegen3/kol_damege3
                speedwithregen3 =  kol_udar_withregen3*scor 
            else
                name3 = 0
            end
            if enemy4 then
                armor4 = NPC.GetArmorDamageMultiplier(enemy4)
                regen4 = NPC.GetHealthRegen(enemy4)
                healthEn4 = Entity.GetHealth(enemy4)
                name4 = NPC.GetUnitName(enemy4)
                kol_damege4=armor*(kol_damege+demegemk)
                kol_damege_fromregenuch4 = kol_damege4/scor
                speed4 = healthEn4/kol_damege_fromregenuch4
                healthWithRegen4 = (speed4*regen4)+healthEn4+1
                kol_udar_withregen4 = healthWithRegen4/kol_damege4
                speedwithregen4 =  kol_udar_withregen4*scor 
      
            else
                name4 = 0
            end
            if enemy5 then
                armor5 = NPC.GetArmorDamageMultiplier(enemy5)
                regen5 = NPC.GetHealthRegen(enemy5)
                healthEn5 = Entity.GetHealth(enemy5)
                name5 = NPC.GetUnitName(enemy5)
                kol_damege5=armor*(kol_damege+demegemk)
                kol_damege_fromregenuch5 = kol_damege5/scor
                speed5 = healthEn5/kol_damege_fromregenuch5
                healthWithRegen5 = (speed5*regen5)+healthEn5+1
                kol_udar_withregen5 = healthWithRegen5/kol_damege5
                speedwithregen5 =  kol_udar_withregen5*scor      
            else
                name5 = 0
            end
        end
    end
end

function ZFlex.cord()
    x = Menu.GetValue(ZFlex.OptionX)
    y = Menu.GetValue(ZFlex.OptionY)
    xText = x-59
    yText = y+34
    yText2 = y+49
    distance = Menu.GetValue(ZFlex.OptionDisnance)
    distance1 = 0
    distance2 = distance
    distance3 = distance*2
    distance4 = distance*3
    distance5 = distance*4
    posXdistance1 = x
    posXdistance2 = x+distance2
    posXdistance3 = x+distance3
    posXdistance4 = x+distance4
    posXdistance5 = x+distance5
    xTextdistance1 = xText
    xTextdistance2 = xText+distance2
    xTextdistance3 = xText+distance3
    xTextdistance4 = xText+distance4
    xTextdistance5 = xText+distance5
end

function ZFlex.OnDraw()
    if Menu.IsEnabled(ZFlex.OptionDamageInformer) then
        ZFlex.cord()
        if name ~= 0 then
            Renderer.SetDrawColor(255, 255, 255, 255)
            icon = Renderer.LoadImage("panorama/images/heroes/icons/"..name.."_png.vtex_c")
            IconDraw = Renderer.DrawImage(icon, posXdistance1, y, 30, 40)
            Text_Draw_Kol = Renderer.DrawText(ZFlex.fontItem, xTextdistance1, yText, "Для убийства нужно ударов: "..math.ceil(kol_udar_withregen))
            Text_Draw_Time = Renderer.DrawText(ZFlex.fontItem, xText, yText2, "Время убийства: "..math.ceil(speedwithregen).. " sec")
        elseif name == 0 then
            IconDraw = nil
            Text_Draw_Kol = nil
            Text_Draw_Time = nil
        end
        if name2 ~= 0 then
            icon2 = Renderer.LoadImage("panorama/images/heroes/icons/"..name2.."_png.vtex_c")
            Icon2Draw = Renderer.DrawImage(icon2, posXdistance2, y, 30, 40)
            Text_Draw_Kol2 = Renderer.DrawText(ZFlex.fontItem, xTextdistance2, yText, "Для убийства нужно ударов: "..math.ceil(kol_udar_withregen2))
            Text_Draw_Time2 = Renderer.DrawText(ZFlex.fontItem, xTextdistance2, yText2, "Время убийства: "..math.ceil(speedwithregen2).. " sec")
        elseif name2 == 0 then
            Icon2Draw = nil
            Text_Draw_Kol2 = nil
            Text_Draw_Time2 = nil
        end
        if name3 ~= 0 then
            icon3 = Renderer.LoadImage("panorama/images/heroes/icons/"..name3.."_png.vtex_c")
            Icon3Draw = Renderer.DrawImage(icon3, posXdistance3, y, 30, 40)
            Text_Draw_Kol3 = Renderer.DrawText(ZFlex.fontItem, xTextdistance3, yText, "Для убийства нужно ударов: "..math.ceil(kol_udar_withregen3))
            Text_Draw_Time3 = Renderer.DrawText(ZFlex.fontItem, xTextdistance3, yText2, "Время убийства: "..math.ceil(speedwithregen3).. " sec")
        elseif name3 == 0 then
            Icon3Draw = nil
            Text_Draw_Kol3 = nil
            Text_Draw_Time3 = nil
        end
        if name4 ~= 0 then
            icon4 = Renderer.LoadImage("panorama/images/heroes/icons/"..name4.."_png.vtex_c")
            Icon4Draw = Renderer.DrawImage(icon4, posXdistance4, y, 30, 40)
            Text_Draw_Kol4 = Renderer.DrawText(ZFlex.fontItem, xTextdistance4, yText, "Для убийства нужно ударов: "..math.ceil(kol_udar_withregen4))
            Text_Draw_Time4 = Renderer.DrawText(ZFlex.fontItem, xTextdistance4, yText2, "Время убийства: "..math.ceil(speedwithregen4).. " sec")
        elseif name4 == 0 then
            Icon4Draw = nil
            Text_Draw_Kol4 = nil
            Text_Draw_Time4 = nil
        end
        if name5 ~= 0 then
            icon5 = Renderer.LoadImage("panorama/images/heroes/icons/"..name5.."_png.vtex_c")
            Icon5Draw = Renderer.DrawImage(icon5, posXdistance5, y, 30, 40)
            Text_Draw_Kol5 = Renderer.DrawText(ZFlex.fontItem, xTextdistance5, yText, "Для убийства нужно ударов: "..math.ceil(kol_udar_withregen5))
            Text_Draw_Time5 = Renderer.DrawText(ZFlex.fontItem, xTextdistance5, yText2, "Время убийства: "..math.ceil(speedwithregen5).. " sec")
        elseif name5 == 0 then
            Icon5Draw = nil
            Text_Draw_Kol5 = nil
            Text_Draw_Time5 = nil
        end
    end
    if not Menu.IsEnabled(ZFlex.optionEnabled) or not Engine.IsInGame() then
		if targetParticle ~= 0 then
            Particle.Destroy(targetParticle)		
            targetParticle = 0
		end
	    return
    end
    enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
    local enemyStatus = (enemy and enemy~= 0)
    cursor_pos = Input.GetWorldCursorPos()
    if enemy and enemy ~= 0 then
    enemy_origin = Entity.GetAbsOrigin(enemy)

    if (cursor_pos - enemy_origin):Length2D() > Menu.GetValue(ZFlex.NearestTarget) then 
            Particle.Destroy(targetParticle)		
			targetParticle = 0
            enemy = nil 
        return 
    end
    if Menu.IsEnabled(ZFlex.targetIndicator) then
		local particleEnemy = enemy
		if (not particleEnemy and targetParticle ~= 0) or not enemyStatus then
            Particle.Destroy(targetParticle)
			targetParticle = 0
			particleEnemy = enemy
		else
            if targetParticle == 0 and enemyStatus then
                Renderer.SetDrawColor(255, 165, 0, 1)
                if Menu.GetValue(ZFlex.targetParticle2) == 0 then
                targetParticle = Particle.Create("particles/units/heroes/heroes_underlord/abbysal_underlord_darkrift_ambient.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 1 then
                targetParticle = Particle.Create("particles/ui_mouseactions/range_finder_tower_aoe.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)	
                elseif Menu.GetValue(ZFlex.targetParticle2) == 2 then
                    targetParticle = Particle.Create("particles/units/heroes/hero_pudge/pudge_rot.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 3 then	
                    targetParticle = Particle.Create("particles/units/heroes/hero_faceless_void/faceless_void_chronosphere.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)	
                elseif Menu.GetValue(ZFlex.targetParticle2) == 4 then
                    targetParticle = Particle.Create("particles/ui/ui_sweeping_ring.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 5 then
                    targetParticle = Particle.Create("particles/ui_mouseactions/range_finder_tp_dest_target.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 6 then
                    targetParticle = Particle.Create("particles/ui/ui_game_start_hero_spotlight.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 7 then
                    targetParticle = Particle.Create("particles/ui/ui_debut_underlord_blastup.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 8 then
                    targetParticle = Particle.Create("particles/world_creature_fx/butterfly_alt2.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 9 then
                    targetParticle = Particle.Create("particles/world_creature_fx/butterfly_alt3.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 10 then
                    targetParticle = Particle.Create("particles/dark_smoke_test.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 11 then
                    targetParticle = Particle.Create("particles/dev/curlnoise_test.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                elseif Menu.GetValue(ZFlex.targetParticle2) == 12 then
                    targetParticle = Particle.Create("particles/dev/rune_test_owner.vpcf", Enum.ParticleAttachment.PATTACH_INVALID, enemy)
                end
			end
            if targetParticle ~= 0 and enemyStatus then
                if Menu.GetValue(ZFlex.targetParticle2) == 1 or Menu.GetValue(ZFlex.targetParticle2) == 5 then
				Particle.SetControlPoint(targetParticle, 2, Entity.GetOrigin(myHero))
				Particle.SetControlPoint(targetParticle, 6, Vector(1, 0, 0))
                Particle.SetControlPoint(targetParticle, 7, Entity.GetOrigin(enemy))
                elseif Menu.GetValue(ZFlex.targetParticle2) ~= 1 then
                Particle.SetControlPoint(targetParticle, 2, Entity.GetOrigin(enemy))
				Particle.SetControlPoint(targetParticle, 6, Vector(1, 0, 0))
                Particle.SetControlPoint(targetParticle, 7, Entity.GetOrigin(myHero))
                end
			end
		end
	else
		if targetParticle ~= 0 or enemy == nil then
            Particle.Destroy(targetParticle)		
            targetParticle = 0
		end
    end
    end
end

function ZFlex.GetItems(myHero)
    blink = NPC.GetItem(myHero, "item_blink")
    bm = NPC.GetItem(myHero, "item_blade_mail")
    bkb = NPC.GetItem(myHero, "item_black_king_bar")
    shiva = NPC.GetItem(myHero, "item_shivas_guard")
    pipe = NPC.GetItem(myHero, "item_pipe")
    abysal = NPC.GetItem(myHero, "item_abyssal_blade")
    medal = NPC.GetItem(myHero, "item_solar_crest") 
    if not medal then
        medal = NPC.GetItem(myHero, "item_medallion_of_courage")
    end
    lotus = NPC.GetItem(myHero, "item_lotus_orb")
    satanic = NPC.GetItem(myHero, "item_satanic")
    orchid = NPC.GetItem(myHero, "item_orchid")
    if not orchid then
        orchid = NPC.GetItem(myHero, "item_bloodthorn")
    end
    nul = NPC.GetItem(myHero, "item_nullifier")
    urn = NPC.GetItem(myHero,"item_urn_of_shadows")
    if not urn then
        urn = NPC.GetItem(myHero, "item_spirit_vessel")
    end
    mjollnir = NPC.GetItem(myHero,"item_mjollnir")
    defuse = NPC.GetItem(myHero,"item_diffusal_blade")
    manta = NPC.GetItem(myHero,"item_manta")
    mask = NPC.GetItem(myHero,"item_mask_of_madness")
    silver = NPC.GetItem(myHero,"item_shadow_blade")
    if not silver then
        silver = NPC.GetItem(myHero,"item_silver_edge")
    end
    eul = NPC.GetItem(myHero,"item_cyclone") 
    force = NPC.GetItem(myHero,"item_force_staff")
    meka = NPC.GetItem(myHero,"item_mekansm")
    if not meka then
        meka = NPC.GetItem(myHero,"item_guardian_greaves")
    end
    hex = NPC.GetItem(myHero,"item_sheepstick")
    necra = NPC.GetItem(myHero,"item_necronomicon")
    if not necra then
        for i = 1, 3 do
			necra = NPC.GetItem(myHero, "item_necronomicon_" .. i)
			if necra then 
				break 
            end
        end
    end
end

--Bounty Hunter
function ZFlex.Bh(myHero, enemy, myMana)
    ZFlex.BhSkills(myHero, myMana, enemy)
    if Menu.IsKeyDown(ZFlex.optionKey) and Entity.GetHealth(enemy) > 0  then
        if not NPC.IsEntityInRange(myHero, enemy, 2000)	then return end
        ZFlex.GetItems(myHero)
        cursor_pos = Input.GetWorldCursorPos()
        enemy_origin = Entity.GetAbsOrigin(enemy)
        if (cursor_pos - enemy_origin):Length2D() > Menu.GetValue(ZFlex.NearestTarget) then enemy = nil return end
        if ZFlex.SleepReady(0.6) then
        Player.AttackTarget(Players.GetLocal(), myHero, enemy, true)
        if bh_track and Menu.IsEnabled(ZFlex.Bh_Track) and Ability.IsReady(bh_track) and not bh_trackmod then 
            Ability.CastTarget(bh_track, enemy) 
        end
        if bh_shurikentoss and Menu.IsEnabled(ZFlex.Bh_ShurikenToss) and Ability.IsReady(bh_shurikentoss) then Ability.CastTarget(bh_shurikentoss, enemy)
            ZFlex.lastTick = os.clock()
        end
        Player.AttackTarget(Players.GetLocal(), myHero, enemy, true)
        end
    end
end

--Riki
function ZFlex.Riki(myHero, enemy, myMana)
    ZFlex.RikiSkills(myHero, myMana, enemy)
    if Menu.IsKeyDown(ZFlex.optionKey) and Entity.GetHealth(enemy) > 0 and not riki_ultmod then
        if not NPC.IsEntityInRange(myHero, enemy, 2000)	then return end
        ZFlex.GetItems(myHero)
        cursor_pos = Input.GetWorldCursorPos()
        mypos = Entity.GetAbsOrigin(myHero)
        enemy_origin = Entity.GetAbsOrigin(enemy)
        if (cursor_pos - enemy_origin):Length2D() > Menu.GetValue(ZFlex.NearestTarget) then enemy = nil return end
        if ZFlex.SleepReady(0.4) then
            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)              
            if riki_blink and Ability.IsCastable(riki_blink, myMana) and Menu.IsEnabled(ZFlex.Riki_Blink) then
                Ability.CastTarget(riki_blink, enemy) 
            end
            if riki_smoke and Ability.IsCastable(riki_smoke, myMana) and Menu.IsEnabled(ZFlex.Riki_Smoke) then
                Ability.CastPosition(riki_smoke, enemy_origin)
                ZFlex.lastTick = os.clock()
            end
            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)
        end
    end
end

--Ursa
function ZFlex.Ursa(myHero, enemy, myMana)
    ZFlex.UrsaSkills(myHero, myMana)
    if Menu.IsKeyDown(ZFlex.optionKey) and Entity.GetHealth(enemy) > 0 then
        if not NPC.IsEntityInRange(myHero, enemy, 2000)	then return end
        ZFlex.GetItems(myHero)
        cursor_pos = Input.GetWorldCursorPos()
        mypos = Entity.GetAbsOrigin(myHero)
        enemy_origin = Entity.GetAbsOrigin(enemy)
        RadiusForUseSkill = (mypos - enemy_origin):Length2D()
        if (cursor_pos - enemy_origin):Length2D() > Menu.GetValue(ZFlex.NearestTarget) then enemy = nil return end
        if ZFlex.SleepReady(0.4) then
            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)              
            if ursa_overpower and Ability.IsCastable(ursa_overpower, myMana) and Menu.IsEnabled(ZFlex.Ursa_OverPower) then
                Ability.CastNoTarget(ursa_overpower) 
            end
            if ursa_earthshok and Ability.IsCastable(ursa_earthshok, myMana) and Menu.IsEnabled(ZFlex.Ursa_EarthShock) and RadiusForUseSkill < 340 then
                Ability.CastNoTarget(ursa_earthshok)
                ZFlex.lastTick = os.clock()
            end

            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)
        end
    end
end
--Slardar
function ZFlex.Slardar(myHero, enemy, myMana)
    ZFlex.SlardarSkills(myHero, myMana, enemy)
    if Menu.IsKeyDown(ZFlex.optionKey) and Entity.GetHealth(enemy) > 0 then
        if not NPC.IsEntityInRange(myHero, enemy, 2000)	then return end
        ZFlex.GetItems(myHero)
        cursor_pos = Input.GetWorldCursorPos()
        mypos = Entity.GetAbsOrigin(myHero)
        enemy_origin = Entity.GetAbsOrigin(enemy)
        RadiusForUseSkill = (mypos - enemy_origin):Length2D()
        if (cursor_pos - enemy_origin):Length2D() > Menu.GetValue(ZFlex.NearestTarget) then enemy = nil return end
        if ZFlex.SleepReady(0.4) then
            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)              
            if slardar_guardiansprint and Ability.IsCastable(slardar_guardiansprint, myMana) and Menu.IsEnabled(ZFlex.Slardar_GuardianSprint) then
                Ability.CastNoTarget(slardar_guardiansprint) 
            end
            if slardar_slithereencrush and Ability.IsCastable(slardar_slithereencrush, myMana) and Menu.IsEnabled(ZFlex.Slardar_SlithereenCrush) and RadiusForUseSkill < 240 then
                Ability.CastNoTarget(slardar_slithereencrush)
            end
            if slardar_corrosivehaze and Ability.IsReady(slardar_corrosivehaze, myMana) and not slardar_corrosivehazeMod and not Ability.IsReady(slardar_slithereencrush) then
                Ability.CastTarget(slardar_corrosivehaze, enemy)
                ZFlex.lastTick = os.clock()
            end

            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)
        end
    end
end

--Lycan
function ZFlex.Lycan(myHero, enemy, myMana)
    ZFlex.LycanSkills(myHero, myMana, enemy)
    if Menu.IsKeyDown(ZFlex.optionKey) and Entity.GetHealth(enemy) > 0 then
        if not NPC.IsEntityInRange(myHero, enemy, 2000)	then return end
        ZFlex.GetItems(myHero)
        if ZFlex.SleepReady(0.8) then
        ZFlex.UnitsGo(myHero, enemy)
        end
        cursor_pos = Input.GetWorldCursorPos()
        mypos = Entity.GetAbsOrigin(myHero)
        enemy_origin = Entity.GetAbsOrigin(enemy)
        RadiusForUseSkill = (mypos - enemy_origin):Length2D()
        if (cursor_pos - enemy_origin):Length2D() > Menu.GetValue(ZFlex.NearestTarget) then enemy = nil return end
        if ZFlex.SleepReady(0.4) then
            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)              
            if wolves and Ability.IsCastable(wolves, myMana) and Menu.IsEnabled(ZFlex.Summon_Wolves) then
                Ability.CastNoTarget(wolves) 
            end
            if howl and Ability.IsCastable(howl, myMana) and Menu.IsEnabled(ZFlex.Howl) and RadiusForUseSkill < 240 then
                Ability.CastNoTarget(howl)
                ZFlex.lastTick = os.clock()
            end
            if shapeshift and Ability.IsReady(shapeshift, myMana) and Menu.IsEnabled(ZFlex.ShapeShift) then
                Ability.CastNoTarget(shapeshift)
                if ZFlex.SleepReady(1.5) then end
            end
            Player.AttackTarget(Players.GetLocal(), myHero, enemy, false)
        end
    end
end

function ZFlex.UseItems(myHero, enemy, myMana)
    if not enemy then return end
    enemy_origin = Entity.GetAbsOrigin(enemy)
    local myhp = Entity.GetHealth(myHero)
    local mymaxhp = Entity.GetMaxHealth(myHero)
    mypos = Entity.GetAbsOrigin(myHero)
    local RadiusForUseItem = (mypos - enemy_origin):Length2D()
    modAbysal = NPC.HasModifier(enemy,"modifier_bashed")
    modMjol = NPC.HasModifier(myHero,"modifier_item_mjollnir_static")
    modHex = NPC.HasModifier(enemy,"modifier_sheepstick_debuff")
    modDefuze = NPC.HasModifier(enemy,"modifier_item_diffusal_blade_slow")
    modNul = NPC.HasModifier(enemy,"modifier_item_nullifier_mute")
    modBkb = NPC.HasModifier(myHero,"modifier_black_king_bar_immune")
    modOrchid = NPC.HasModifier(enemy,"modifier_orchid_malevolence_debuff")
    mypos = Entity.GetAbsOrigin(myHero)
    if ZFlex.SleepReady(0.4) then

        if Menu.GetValue(ZFlex.optionBlink) ~= 1 then
            if blink and Ability.IsReady(blink) and Menu.IsEnabled(ZFlex.Blink) then
                    Ability.CastPosition(blink,  ZFlex.getBestPosition(Heroes.InRadius(Entity.GetAbsOrigin(enemy), 385 * 2, Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY), 385))
            end
        elseif Menu.GetValue(ZFlex.optionBlink) == 1 and RadiusForUseItem <= 1200 then
            if blink and Ability.IsReady(blink) and Menu.IsEnabled(ZFlex.Blink) then
                Ability.CastPosition(blink, enemy_origin)
            end
        end
    
            if bkb and Ability.IsReady(bkb) and Menu.IsEnabled(ZFlex.BlackKingBar) and RadiusForUseItem < 550 then
                Ability.CastNoTarget(bkb)
            end
    
            if bm and Ability.IsReady(bm, myMana) and Menu.IsEnabled(ZFlex.BladeMail) and RadiusForUseItem < 550 then
                Ability.CastNoTarget(bm)
  
            end
    
            if shiva and Ability.IsReady(shiva, myMana) and Menu.IsEnabled(ZFlex.Shiva) and RadiusForUseItem < 1100 then
                Ability.CastNoTarget(shiva)
               
            end
            if urn and Ability.IsReady(urn) and Menu.IsEnabled(ZFlex.Urn) and RadiusForUseItem < 950 then
                Ability.CastTarget(urn, enemy)

            end
            if Menu.IsEnabled(ZFlex.optionSatanic) then
                if satanic and Ability.IsReady(satanic) and Menu.IsEnabled(ZFlex.Satanic) and myhp < mymaxhp*50*0.01 then 

                end
            elseif not Menu.IsEnabled(ZFlex.optionSatanic) then
                if satanic and Ability.IsReady(satanic) and Menu.IsEnabled(ZFlex.Satanic) then 
                    ZFlex.lastTick = os.clock()
                end
            end
            if hex and Ability.IsReady(hex, myMana) and Menu.IsEnabled(ZFlex.Hex) then
                Ability.CastTarget(hex, enemy)

            end
            if necra and Ability.IsReady(necra, myMana) and Menu.IsEnabled(ZFlex.Necra) then
                Ability.CastNoTarget(necra)

            end
            if medal and Ability.IsReady(medal, myMana) and Menu.IsEnabled(ZFlex.Medal) and RadiusForUseItem < 1000 then
                Ability.CastTarget(medal, enemy)
           
            end
    
            if manta and Ability.IsReady(manta) and Menu.IsEnabled(ZFlex.Manta) then
                Ability.CastNoTarget(manta)
            end
    
            if orchid and Ability.IsReady(orchid, myMana) and Menu.IsEnabled(ZFlex.Orchid) and RadiusForUseItem < 901 then
                Ability.CastTarget(orchid, enemy)
         
            end
            if abysal and Ability.IsReady(abysal, myMana) and Menu.IsEnabled(ZFlex.Abysal) and RadiusForUseItem < 280 then
                if hex then
                    if not Ability.IsReady(hex) and not modHex and ZFlex.SleepReady(0.4) then
                        Ability.CastTarget(abysal, enemy)
                    end
                elseif not hex then
                    Ability.CastTarget(abysal, enemy)
                end
            end
    
            if nul and Ability.IsReady(nul) and Menu.IsEnabled(ZFlex.Nul) then
                if hex then
                    if not Ability.IsReady(hex) and not modHex and ZFlex.SleepReady(0.5) then
                        Ability.CastTarget(nul, enemy)
                    end
                elseif not hex then
                    Ability.CastTarget(nul, enemy)
                end
            end
    
            if pipe and Ability.IsReady(pipe, myMana) and Menu.IsEnabled(ZFlex.Pipe) and RadiusForUseItem < 550 then
                if bkb then
                    if not Ability.IsReady(bkb) and not modBkb and ZFlex.SleepReady(0.5) then
                        Ability.CastNoTarget(pipe)
                    end
                elseif not bkb then
                    Ability.CastNoTarget(pipe)
                end  
            end
    
            if lotus and Ability.IsReady(lotus, myMana) and Menu.IsEnabled(ZFlex.Lotus) and RadiusForUseItem < 550 then
                if bkb then
                    if not Ability.IsReady(bkb) and not modBkb and ZFlex.SleepReady(0.5) then
                        Ability.CastTarget(lotus, myHero)
                    end
                elseif not bkb and orchid then
                    if not Ability.IsReady(orchid) and not modOrchid and ZFlex.SleepReady(0.5) then
                        Ability.CastTarget(lotus, myHero)
                    end
                elseif not bkb and not orchid then
                    Ability.CastTarget(lotus, myHero)
                end
        
            end
    
            if defuse and Ability.IsReady(defuse) and Menu.IsEnabled(ZFlex.Defuse) and RadiusForUseItem < 600 then
                if abysal then
                    if not Ability.IsReady(abysal) and not modAbysal and ZFlex.SleepReady(0.5) then
                        Ability.CastTarget(defuse, enemy)
                    end
                elseif not abysal and hex then
                    if not Ability.IsReady(hex) and not modHex and ZFlex.SleepReady(0.5) then
                        Ability.CastTarget(defuse, enemy)
                    end
                elseif not abysal and not hex then
                    Ability.CastTarget(defuse, enemy)
                end
            end
    
            if mjollnir and Ability.IsReady(mjollnir, myMana) and Menu.IsEnabled(ZFlex.Mjollnir) and RadiusForUseItem < 550 then
                if abysal then
                    if not Ability.IsReady(abysal) and not modAbysal and ZFlex.SleepReady(0.5) then
                        Ability.CastTarget(mjollnir, myHero)
                    end
                elseif not abysal and hex then
                    if not Ability.IsReady(hex) and not modHex and ZFlex.SleepReady(0.5) then
                        Ability.CastTarget(mjollnir, myHero)
                    end
                elseif not abysal and not hex then
                    Ability.CastTarget(mjollnir, myHero)
                end

            end
    end
end

function ZFlex.getBestPosition(unitsAround, radius)
    if not unitsAround or #unitsAround < 1 then
        return
    end
 
    local countEnemies = #unitsAround
 
    if countEnemies == 1 then
        return Entity.GetAbsOrigin(unitsAround[1])
    end
 
    return ZFlex.getMidPoint(unitsAround)
end
 
function ZFlex.getMidPoint(entityList)
 
    if not entityList then return end
    if #entityList < 1 then return end
 
    local pts = {}
    for i, v in ipairs(entityList) do
        if v and not Entity.IsDormant(v) then
            local pos = Entity.GetAbsOrigin(v)
            local posX = pos:GetX()
            local posY = pos:GetY()
            table.insert(pts, { x=posX, y=posY })
        end
    end
 
    local x, y, c = 0, 0, #pts
 
    if (pts.numChildren and pts.numChildren > 0) then c = pts.numChildren end
 
    for i = 1, c do
        x = x + pts[i].x
        y = y + pts[i].y
    end
 
    return Vector(x/c, y/c, 0)
end


--[[function ZFlex.SafeItems(myHero)
enemy = Input.GetNearestHeroToCursor(Entity.GetTeamNum(myHero), Enum.TeamType.TEAM_ENEMY)
if not NPC.IsEntityInRange(myHero, enemy, 400)	then 
    return 
end
if not Menu.IsKeyDown(ZFlex.optionKey) then
if enemy and enemy ~= 0 then
    ZFlex.GetItems(myHero)
    if eul and Ability.IsReady(eul) and Menu.IsEnabled(ZFlex.Eul) then
        Ability.CastTarget(eul, enemy)
    end
end
end
end
]]

--Bounty Hunter Function
function ZFlex.BhSkills(myHero, myMana, enemy)
    bh_track = NPC.GetAbility(myHero, "bounty_hunter_track")
    bh_trackmod = NPC.GetModifier(enemy, "modifier_bounty_hunter_track")
    bh_shurikentoss = NPC.GetAbility(myHero, "bounty_hunter_shuriken_toss")
    bh_inviz = NPC.GetAbility(myHero, "bounty_hunter_wind_walk")
end
function ZFlex.BhAutoTrackForInviz(myHero, enemy)
    if not NPC.IsEntityInRange(myHero, enemy, 1000)	then 
        return 
    end
    ZFlex.BhSkills(myHero, myMana, enemy)
    local enemyname = NPC.GetUnitName(enemy)
    if not bh_trackmod or ZFlex.SleepReady(26.0) then
        if NPC.HasItem(enemy, "item_silver_edge") or NPC.HasItem(enemy, "item_shadow_amulet") or NPC.HasItem(enemy, "item_glimmer_cape") or NPC.HasItem(enemy, "item_invis_sword") then 
            Ability.CastTarget(bh_track, enemy) 
            ZFlex.lastTick = os.clock()  
        end
        if NPC.HasModifier(enemy, "modifier_riki_permanent_invisibility") or NPC.HasModifier(enemy, "modifier_invisible") or NPC.HasModifier(enemy, "modifier_item_invisibility_edge_windwalk") or NPC.HasModifier(enemy, "modifier_weaver_shukuchi") then
            Ability.CastTarget(bh_track, enemy)   
            ZFlex.lastTick = os.clock()   
        end
        if enemyname == "npc_dota_hero_invoker" then
            Invoker_Inviz = NPC.GetAbility(enemy, "invoker_ghost_walk")
            if Ability.GetIndex(Invoker_Inviz) == 3 or Ability.GetIndex(Invoker_Inviz) == 4 then
                Ability.CastTarget(bh_track, enemy)  
                ZFlex.lastTick = os.clock()  
            end
        end
        if enemyname == "npc_dota_hero_clinkz" then
            Clingz_Inviz = NPC.GetAbility(enemy, "clinkz_wind_walk")
            if Ability.IsReady(Clingz_Inviz) then
                Ability.CastTarget(bh_track, enemy)
                ZFlex.lastTick = os.clock() 
            end
        end
        if enemyname == "npc_dota_hero_weaver" then
            Weaver_Inviz = NPC.GetAbility(enemy, "weaver_shukuchi")
            if Ability.IsReady(Weaver_Inviz) then
                Ability.CastTarget(bh_track, enemy)
                ZFlex.lastTick = os.clock() 
             end
        end

    end
end
function ZFlex.BhAutoTrackForSteal(myHero, enemy)
    if not NPC.IsEntityInRange(myHero, enemy, 1000)	then 
        return 
    end
    ZFlex.BhSkills(myHero, myMana, enemy)
    local XpEnemy = Entity.GetHealth(enemy)
    local XpMaxEnemy = Entity.GetMaxHealth(enemy)
    local lvl_toss = Ability.GetLevel(bh_shurikentoss)
    local damage_toss = Ability.GetLevelSpecialValueForFloat(bh_shurikentoss, "bonus_damage")
    if XpEnemy <= damage_toss*NPC.GetMagicalArmorDamageMultiplier(enemy) then
        if Ability.IsReady(bh_track) and not bh_trackmod and ZFlex.SleepReady(0.3) then
            Ability.CastTarget(bh_track, enemy)
        end
        if Ability.IsReady(bh_shurikentoss) then
            Ability.CastTarget(bh_shurikentoss, enemy)
        end
    end
end
function ZFlex.BhInviz(myHero, enemy)
    ZFlex.Init()
    ZFlex.BhSkills(myHero, myMana, enemy)
    local myHeroHp = Entity.GetHealth(myHero)
    local myHeroMaxHp = Entity.GetMaxHealth(myHero)
    if myHeroHp < myHeroMaxHp*30*0.01 then
        if Ability.IsReady(bh_inviz) and ZFlex.SleepReady(0.3) then
            Ability.CastNoTarget(bh_inviz)
        end
    end
end
--Riki Function
function ZFlex.RikiSkills(myHero, myMana, enemy)
    riki_ult = NPC.GetAbility(myHero, "riki_tricks_of_the_trade")
    riki_blink = NPC.GetAbility(myHero, "riki_blink_strike")
    riki_smoke = NPC.GetAbility(myHero, "riki_smoke_screen")
    riki_ultmod = NPC.GetModifier(myHero, "modifier_riki_tricks_of_the_trade_phase")
end
function ZFlex.RikiUlt(myHero, enemy)
    ZFlex.RikiSkills(myHero, myMana, enemy)
    mypos = Entity.GetAbsOrigin(myHero)
    enemy_origin = Entity.GetAbsOrigin(enemy)
    rangeforult = (mypos - enemy_origin):Length2D()
    if ZFlex.SleepReady(0.5) then
        if riki_ult and Ability.IsReady(riki_ult) and Menu.IsEnabled(ZFlex.Riki_Ult) and rangeforult < 400 then
            Ability.CastNoTarget(riki_ult)
        end
    end
    if riki_ultmod then return end
end
function ZFlex.RikiStealBlink(myHero, enemy)
    ZFlex.RikiSkills(myHero, myMana, enemy)
    if not NPC.IsEntityInRange(myHero, enemy, Ability.GetCastRange(riki_blink))	then 
        return 
    end
    RikiXpEnemy = Entity.GetHealth(enemy)
    RikiXpMaxEnemy = Entity.GetMaxHealth(enemy)
    LvlDamage = Ability.GetLevelSpecialValueForFloat(riki_blink, "bonus_damage")*NPC.GetMagicalArmorDamageMultiplier(enemy)
    if RikiXpEnemy <= LvlDamage then
        if Ability.IsReady(riki_blink) and ZFlex.SleepReady(0.3) then
            Ability.CastTarget(riki_blink, enemy)
            Player.AttackTarget(Players.GetLocal(), myHero, enemy, true)
        end
    end
end

--Ursa Function
function ZFlex.ModifierUrsaDebuff(myHero)
    if Menu.IsEnabled(ZFlex.Ursa_Hunger) then
        ursa_hunger = NPC.GetModifier(myHero, "modifier_axe_battle_hunger")
    end
    if Menu.IsEnabled(ZFlex.Ursa_Defuse) then
        ursa_defuse = NPC.GetModifier(myHero, "modifier_item_diffusal_blade_slow")
    end
    if Menu.IsEnabled(ZFlex.Ursa_Nil) then
        ursa_nil = NPC.GetModifier(myHero, "modifier_item_nullifier_mute")
    end
    if Menu.IsEnabled(ZFlex.Ursa_Atos) then
        ursa_atos = NPC.GetModifier(myHero, "modifier_rod_of_atos_debuff")
    end
    if Menu.IsEnabled(ZFlex.Ursa_Etherial) then
        ursa_etherial = NPC.GetModifier(myHero, "modifier_item_ethereal_blade_ethereal")
    end
    if Menu.IsEnabled(ZFlex.Ursa_Frosbite) then
        ursa_frosbite = NPC.GetModifier(myHero, "modifier_crystal_maiden_frostbite")
    end
    if Menu.IsEnabled(ZFlex.Ursa_EarthBind) then
        ursa_earthbind = NPC.GetModifier(myHero, "modifier_meepo_earthbind")
    end
    if Menu.IsEnabled(ZFlex.Ursa_Dust) then
        ursa_dust = NPC.GetModifier(myHero, "modifier_item_dustofappearance")
    end
end
function ZFlex.UrsaSkills(myHero, myMana)
    ursa_overpower = NPC.GetAbility(myHero, "ursa_overpower")
    ursa_earthshok = NPC.GetAbility(myHero, "ursa_earthshock")
    ursa_enrage = NPC.GetAbility(myHero, "ursa_enrage")
    ursa_bkb_mod = NPC.GetModifier(myHero, "modifier_black_king_bar_immune")
end
function ZFlex.UrsaUlt(myHero, enemy)
    UrsaHpEnemy = Entity.GetHealth(enemy)
    UrsaMaxHpEnemy = Entity.GetMaxHealth(enemy)
    enemy_origin = Entity.GetAbsOrigin(enemy)
    mypos = Entity.GetAbsOrigin(myHero)
    RadiusForUseUlt = (mypos - enemy_origin):Length2D()
    ZFlex.UrsaSkills(myHero, myMana, enemy)
    if ZFlex.SleepReady(0.8) then
        if UrsaHpEnemy <= UrsaMaxHpEnemy*Menu.GetValue(ZFlex.UrsaOptionUlt)*0.01 then
            if Menu.IsEnabled(ZFlex.Ursa_optionBkb) then
                if ursa_enrage and Ability.IsReady(ursa_enrage) and RadiusForUseUlt < 300 and not ursa_bkb_mod then
                    Ability.CastNoTarget(ursa_enrage)
                end
            elseif not Menu.IsEnabled(ZFlex.Ursa_optionBkb) then 
                if ursa_enrage and Ability.IsReady(ursa_enrage) and RadiusForUseUlt < 300 then
                    Ability.CastNoTarget(ursa_enrage)
                end
            end
        end
    end
end
function ZFlex.UrsaBringDebuff(myHero)

    ZFlex.ModifierUrsaDebuff(myHero)
    ZFlex.UrsaSkills(myHero, myMana)
    if ursa_enrage and Ability.IsReady(ursa_enrage) then
        if ursa_hunger then
            Ability.CastNoTarget(ursa_enrage)
        end
        if ursa_defuse then
            Ability.CastNoTarget(ursa_enrage)
        end
        if ursa_nil then
            Ability.CastNoTarget(ursa_enrage)
        end
        if ursa_atos then
            Ability.CastNoTarget(ursa_enrage)
        end
        if ursa_etherial then
            Ability.CastNoTarget(ursa_enrage)
        end
        if ursa_frosbite then
            Ability.CastNoTarget(ursa_enrage)
        end
        if ursa_earthbind then
            Ability.CastNoTarget(ursa_enrage)
        end
        if ursa_dust then
            Ability.CastNoTarget(ursa_enrage)
        end
    end
end
--Slardar function
function ZFlex.SlardarSkills(myHero, myMana, enemy)
    slardar_corrosivehaze = NPC.GetAbility(myHero, "slardar_amplify_damage")
    slardar_slithereencrush = NPC.GetAbility(myHero, "slardar_slithereen_crush")
    slardar_guardiansprint = NPC.GetAbility(myHero, "slardar_sprint")
    slardar_corrosivehazeMod = NPC.GetModifier(enemy, "modifier_slardar_amplify_damage")
end
function ZFlex.SlardarAutoUlt(myHero, myMana, enemy)
    enemyname = NPC.GetUnitName(enemy)
    ZFlex.SlardarSkills(myHero, myMana, enemy)
    if not slardar_corrosivehazeMod or ZFlex.SleepReady(15.0) then
        if NPC.HasItem(enemy, "item_silver_edge") or NPC.HasItem(enemy, "item_shadow_amulet") or NPC.HasItem(enemy, "item_glimmer_cape") or NPC.HasItem(enemy, "item_invis_sword") then 
                Ability.CastTarget(slardar_corrosivehaze, enemy)   
                ZFlex.lastTick = os.clock()
        end
        if NPC.HasModifier(enemy, "modifier_riki_permanent_invisibility") or NPC.HasModifier(enemy, "modifier_invisible") or NPC.HasModifier(enemy, "modifier_item_invisibility_edge_windwalk") then
                Ability.CastTarget(slardar_corrosivehaze, enemy)    
                ZFlex.lastTick = os.clock()
        end
        if enemyname == "npc_dota_hero_invoker" then
            Invoker_Inviz = NPC.GetAbility(enemy, "invoker_ghost_walk")
            if Ability.GetIndex(Invoker_Inviz) == 3 or Ability.GetIndex(Invoker_Inviz) == 4 then
                Ability.CastTarget(slardar_corrosivehaze, enemy)  
                ZFlex.lastTick = os.clock()  
            end
        end
        if enemyname == "npc_dota_hero_clinkz" then
            Clingz_Inviz = NPC.GetAbility(enemy, "clinkz_wind_walk")
            if Ability.IsReady(Clingz_Inviz) then
                Ability.CastTarget(slardar_corrosivehaze, enemy)
                ZFlex.lastTick = os.clock() 
            end
        end
        if enemyname == "npc_dota_hero_weaver" then
            Weaver_Inviz = NPC.GetAbility(enemy, "weaver_shukuchi")
            if Ability.IsReady(Weaver_Inviz) then
                Ability.CastTarget(slardar_corrosivehaze, enemy)
                ZFlex.lastTick = os.clock() 
             end
        end
    end
end
--Lycan Function
function ZFlex.LycanSkills(myHero, myMana, enemy)
    wolves = NPC.GetAbility(myHero, "lycan_summon_wolves")
    howl = NPC.GetAbility(myHero, "lycan_howl") 
    shapeshift = NPC.GetAbility(myHero, "lycan_shapeshift") 
end
function ZFlex.UnitsGo(myHero, enemy)
local units = Entity.GetUnitsInRadius(myHero, 1800, Enum.TeamType.TEAM_FRIEND)
    if units and #units > 0 and ZFlex.SleepReady(0.3) then
        for i=1, #units do
            local unit = units[i]
            if unit then
                if NPC.GetUnitName(unit) == "npc_dota_lycan_wolf1" or NPC.GetUnitName(unit) == "npc_dota_lycan_wolf1" or NPC.GetUnitName(unit) == "npc_dota_lycan_wolf2" or NPC.GetUnitName(unit) == "npc_dota_lycan_wolf3" or NPC.GetUnitName(unit) == "npc_dota_lycan_wolf4" or NPC.GetUnitName(unit) == "npc_dota_necronomicon_archer_1" or NPC.GetUnitName(unit) == "npc_dota_necronomicon_archer_2" or NPC.GetUnitName(unit) == "npc_dota_necronomicon_archer_3" or NPC.GetUnitName(unit) == "npc_dota_necronomicon_warrior_1" or NPC.GetUnitName(unit) == "npc_dota_necronomicon_warrior_2" or NPC.GetUnitName(unit) == "npc_dota_necronomicon_warrior_3" then
                Player.AttackTarget(Players.GetLocal(), unit, enemy, false)
                end
            end
            ZFlex.lastTick = os.clock()
        end
    end
end
function ZFlex.LycanHowl(myHero)
    ZFlex.GetItems(myHero)
    if howl and Ability.IsReady(howl, myMana) and ZFlex.SleepReady(0.5) then
        Ability.CastNoTarget(howl)
    end
end
function ZFlex.LycanSkillDominator(myHero, enemy)
    vse_units = Entity.GetUnitsInRadius(myHero, 800, Enum.TeamType.TEAM_FRIEND)
    if vse_units and #vse_units > 0 and ZFlex.SleepReady(0.2) then
        for i=1, #vse_units do
            local vse_unit = vse_units[i]
            if vse_unit and ZFlex.SleepReady(0.2) then
                if not Entity.IsAlive(vse_unit) or NPC.IsStunned(vse_unit) or NPC.IsSilenced(vse_unit) then 
                    return
                 end
                rangeenemy = Entity.GetAbsOrigin(enemy)
                rangekrip = Entity.GetAbsOrigin(vse_unit)
                mypos = Entity.GetAbsOrigin(myHero)
                unitMana = NPC.GetMana(vse_unit)
                rangeforuseskills = (rangekrip - rangeenemy):Length2D()
                rangeforattack = (mypos - rangeenemy):Length2D()
                if rangeforattack <= 1000 then
                    Player.AttackTarget(Players.GetLocal(), vse_unit, enemy, false) 
                end
                if NPC.GetUnitName(vse_unit) == "npc_dota_neutral_centaur_khan" then
                    centaur_stan = NPC.GetAbility(vse_unit, "centaur_khan_war_stomp")
                    if centaur_stan and Ability.IsReady(centaur_stan, unitMana) and rangeforuseskills <=230 then
                        Ability.CastNoTarget(centaur_stan)
                        ZFlex.lastTick = os.clock()
                    end
                end

                if NPC.GetUnitName(vse_unit) == "npc_dota_neutral_mud_golem" then
                    golem_stan = NPC.GetAbility(vse_unit, "mud_golem_hurl_boulder")
                    if golem_stan and Ability.IsReady(golem_stan, unitMana) and rangeforuseskills <=600 then
                        Ability.CastTarget(golem_stan, enemy)
                        ZFlex.lastTick = os.clock()
                    end
                end
        
                if NPC.GetUnitName(vse_unit) == "npc_dota_neutral_polar_furbolg_ursa_warrior" then
                    ursa_clap = NPC.GetAbility(vse_unit, "polar_furbolg_ursa_warrior_thunder_clap")
                    if ursa_clap and Ability.IsReady(ursa_clap, unitMana) and rangeforuseskills <=270 then
                        Ability.CastNoTarget(ursa_clap)
                        ZFlex.lastTick = os.clock()
                    end
                end
                
                if NPC.GetUnitName(vse_unit) == "npc_dota_neutral_dark_troll_warlord" then
                    setka = NPC.GetAbility(vse_unit, "dark_troll_warlord_ensnare")
                    skeletu = NPC.GetAbility(vse_unit, "dark_troll_warlord_raise_dead")
                    if skeletu and Ability.IsReady(skeletu, unitMana) and rangeforuseskills <=250 then
                        Ability.CastNoTarget(skeletu)
                        ZFlex.lastTick = os.clock()
                    end
                    if setka and Ability.IsReady(setka, unitMana) and rangeforuseskills <=500 then
                        Ability.CastTarget(setka, enemy)
                        ZFlex.lastTick = os.clock()
                    end
                end

                if NPC.GetUnitName(vse_unit) == "npc_dota_neutral_ogre_magi" then
                    Armor = NPC.GetAbility(vse_unit, "ogre_magi_frost_armor")
                    ArmorMod = NPC.GetModifier(myHero, "modifier_ogre_magi_frost_armor")
                    if Armor and Ability.IsReady(Armor) and not ArmorMod then
                        Ability.CastTarget(Armor, myHero)
                    end
                end
                if NPC.GetUnitName(vse_unit) == "npc_dota_neutral_satyr_hellcaller" then
                    Shock = NPC.GetAbility(vse_unit, "satyr_hellcaller_shockwave")
                    if Shock and Ability.IsReady(Shock, unitMana) then
                        Ability.CastPosition(Shock, rangeenemy)
                        ZFlex.lastTick = os.clock()
                    end
                end
 
            end
        end
    end
end

-- Function Item
--[[function ZFlex.optionItemSafe(myHero, myMana, enemy)
    ZFlex.GetItems(myHero)
    if NPC.IsEntityInRange(myHero, enemy, 350) then 
        return 
    end
    mypos = NPC.GetOrigin(myHero)
    Log.Write(NPC.GetTimeToFacePosition(enemy, mypos))
   timeface = NPC.GetTimeToFacePosition(enemy, mypos)
   if timeface == 0 then
        if eul and Ability.IsReady(eul, myMana) and Menu.IsEnabled(ZFlex.Eul) then
            Ability.CastTarget(eul, enemy)
        end
    end

end

]]

--[[function ZFlex.TowerStentecher(myHero, myMana)
    vse_units = Entity.GetUnitsInRadius(myHero, 900, Enum.TeamType.TEAM_FRIEND)
    Towera = Entity.GetUnitsInRadius(myHero, 60000, Enum.TeamType.TEAM_ENEMY)
    ZFlex.GetItems(myHero)
    ZFlex.LycanSkills(myHero, myMana, enemy)

    if vse_units and #vse_units > 0 and ZFlex.SleepReady(0.3) then
        for i=1, #vse_units do
            local vse_unit = vse_units[i]
            if vse_unit then
                if Towera and #Towera > 0 then
                    for i=1, #Towera do
                        local Tower = Towera[i]
                        if Tower then
                            if NPC.IsTower(Tower) then
                            if wolves and Ability.IsReady(wolves, myMana) and ZFlex.SleepReady(0.5) then
                                    Ability.CastNoTarget(wolves)
                            end
                            if necra and Ability.IsReady(necra, myMana) and ZFlex.SleepReady(0.5) then
                                Ability.CastNoTarget(necra)
                            end
                            if NPC.GetUnitName(vse_unit) == "npc_dota_lycan_wolf1" or NPC.GetUnitName(vse_unit) == "npc_dota_lycan_wolf1" or NPC.GetUnitName(vse_unit) == "npc_dota_lycan_wolf2" or NPC.GetUnitName(vse_unit) == "npc_dota_lycan_wolf3" or NPC.GetUnitName(vse_unit) == "npc_dota_lycan_wolf4" or NPC.GetUnitName(vse_unit) == "npc_dota_necronomicon_archer_1" or NPC.GetUnitName(vse_unit) == "npc_dota_necronomicon_archer_2" or NPC.GetUnitName(vse_unit) == "npc_dota_necronomicon_archer_3" or NPC.GetUnitName(vse_unit) == "npc_dota_necronomicon_warrior_1" or NPC.GetUnitName(vse_unit) == "npc_dota_necronomicon_warrior_2" or NPC.GetUnitName(vse_unit) == "npc_dota_necronomicon_warrior_3" then
                                    Player.AttackTarget(Players.GetLocal(), vse_unit, Tower, false) 
                            end
                        end
                    end
                    end
                end
            end
        end

        ZFlex.lastTick = os.clock()
    end
end
]]
function ZFlex.SleepReady(sleep, lastTick)
    if (os.clock() - ZFlex.lastTick) >= sleep then
		return true
    end
	return false
end

return ZFlex
