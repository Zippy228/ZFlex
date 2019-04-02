local mp = {}
mp.OptionEnabled = Menu.AddOptionBool({ "Общие", "Жанглерство мипо" }, "Включить", false)
mp.OptionKey = Menu.AddKeyOption({ "Общие", "Жанглерство мипо" }, "Кнопка", Enum.ButtonCode.KEY_F)
 
local myHero = nil
local myTeam = nil
local heroname = nil
mp.lastTick = 0
function mp.Init()
    if Engine.IsInGame() then
		myHero = Heroes.GetLocal()
		if not myHero then 
			return
		end
		heroName = NPC.GetUnitName(myHero)
        myTeam = Entity.GetTeamNum(myHero)
	end
end

function mp.OnGameStart()
	mp.Init()
end

function mp.OnUpdate()
    if not Menu.IsEnabled(mp.OptionEnabled) or not Engine.IsInGame() then 
        return 
    end
    if not myHero then
        mp.Init()
        return
    end
    if not Entity.IsAlive(myHero) or NPC.IsStunned(myHero) or NPC.IsSilenced(myHero) then 
        return
    end
    if heroName == "npc_dota_hero_meepo" and Menu.IsKeyDown(mp.OptionKey) then
        mp.Swither(myHero)
        mp.lastTick = os.clock()
    end
end

function mp.Swither(myHero)
    numbers = Heroes.Count()
    if numbers >= 3 then
    myHero1 = Heroes.Get(1)
    PosHero1 = Entity.GetAbsOrigin(myHero1)
    myHero2 = Heroes.Get(2)          
    PosHero2 = Entity.GetAbsOrigin(myHero2)    
    myHero3 = Heroes.Get(3)
    PosHero3 = Entity.GetAbsOrigin(myHero3)
    ability1 = NPC.GetAbility(myHero1, "meepo_poof")  
    ability2 = NPC.GetAbility(myHero2, "meepo_poof")  
    ability3 = NPC.GetAbility(myHero3, "meepo_poof")
    fontan1 = NPC.GetModifier(myHero1, "modifier_fountain_aura_buff")
    fontan2 = NPC.GetModifier(myHero2, "modifier_fountain_aura_buff")
    fontan3 = NPC.GetModifier(myHero3, "modifier_fountain_aura_buff")
    health1 = Entity.GetHealth(myHero1)
    health2 = Entity.GetHealth(myHero2)
    health3 = Entity.GetHealth(myHero3)
    --Log.Write(NPC.GetUnitName(myHero1))
            if fontan1 and not fontan3 and not fontan2 then
                if health2 >= health3 and health1 >= health3 then
                    if ability1 and Ability.IsReady(ability1) and ability3 and Ability.IsReady(ability3) then
                        Ability.CastPosition(ability3, PosHero1)
                        Ability.CastPosition(ability1, PosHero2)   
                    end
                elseif health2 < health3 then
                    if ability2 and Ability.IsReady(ability2) and ability1 and Ability.IsReady(ability1) then
                        Ability.CastPosition(ability2, PosHero1)
                        Ability.CastPosition(ability1, PosHero3)
                    end
                end
            elseif fontan3 and not fontan2 and not fontan1 then
                if health3 >= health2 and health1 >= health2 then
                    if ability3 and Ability.IsReady(ability3) and ability2 and Ability.IsReady(ability2) then
                        Ability.CastPosition(ability2, PosHero3)
                        Ability.CastPosition(ability3, PosHero1)
                    end
                elseif health1 < health2 then
                    if ability3 and Ability.IsReady(ability3) and ability1 and Ability.IsReady(ability1) then
                        Ability.CastPosition(ability1, PosHero3)
                        Ability.CastPosition(ability3, PosHero2)
                    end
                end
            elseif fontan2 and not fontan3 and not fontan1 then
                if health1 >= health3 and health2 >= health3 then
                    if ability3 and Ability.IsReady(ability3) and ability2 and Ability.IsReady(ability2) then
                        Ability.CastPosition(ability3, PosHero2)
                        Ability.CastPosition(ability2, PosHero1)
                    end
                elseif health1 < health3 then
                    if ability2 and Ability.IsReady(ability2) and ability1 and Ability.IsReady(ability1) then
                        Ability.CastPosition(ability1, PosHero2)
                        Ability.CastPosition(ability2, PosHero3)
                    end
                end
            end
       
    end
end

function mp.SleepReady(sleep, lastTick)
    if (os.clock() - mp.lastTick) >= sleep then
		return true
    end
	return false
end


return mp
