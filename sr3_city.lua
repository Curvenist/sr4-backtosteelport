--SR3 City Lua file 

-- *** TUTORIAL DISABLE SETTINGS ***
-- TUTORIAL_DISABLE = true (default) disables all open world tutorial messages (does not affect missions)
-- TUTORIAL_DISABLE = false allows tutorial popups to happen in the open world just like normal vanilla
TUTORIAL_DISABLE = true

-- Tutorial flag to disable all popups
Tutorial_Disable_Flag = true
-- Command variables
COOP_COMMANDS = false
SUPERPOWER_ATTACKS_ACTIVE = false
SUPERPOWER_MOVEMENT_ACTIVE = true
SUPERPOWER_NO_COOLDOWN = false
DRUGGED_COUNTER = 1
CLONE_SPAWNING = false
PLEASANTVILLE_WALK = false
NOTORIETY_ZERO = false
COMBAT_50S_COPS = false
JOE_STATUE_SWAP = false
SIDESCROLL_ANIMS = false
STREAKING_ANIMS = false
MURDERBOT_ANIMS = false
SPAWN_ZOMBIES = false
SPAWN_MASCOTS = false
SPAWN_RIFT = false
NOTORIETY_COUNTER = 0
DRUNK_ANIMS = false
PLAYER_VULNERABLE = true
PLAYA_DANCE_COUNTER = 1
POLICE_TEAM = false
CIVILIAN_TEAM = false
FREE_CAM = false
HEIGHT_UP_COUNTER = 1
HEIGHT_DOWN_COUNTER = 1

-- HUD Stuff
local Openworld_hud_state = {
	hide_minimap = -1,
	hide_everything = -1
}
HUD_NORMAL = true

--local current_radio_song = ""

-- WIP VARIABLES
--FOLLOWERS_DANCE = false
--CAR_SPEED = 0

-- Back To Steelport functions
local TIMEDILATION = false -- super slowmo variation toggle
local CAMERA_RIGHT = true
local CAMERA_MODE = false	-- Standard / Platforming
local QUICK_CLEANUP = false -- the corpse cleanup activation variable, if you want relentless waves
local FORCE_CAMERA_SIDE = true -- this variable locks the camera to help direct switching Left / Right, otherwise, it loads up another another right sided that is not dynamic
local RAGDOLLED = false -- checking if the character was ragdolled (to activatate super power movement and quick ragdoll cancellation)
local WEAPON_HOLSTERED = false -- Hides the current weapon

--Buttons:
B_INSERT = "CBA_VDC_OFFHAND_GRENADE"
B_HOME = "CBA_WRECKER_EXTEND_CORD"
B_PGUP = "CBA_WRECKER_RETRACT_CORD"
B_DELETE = "CBA_GAC_CANCEL_ACTIVITY"
B_END = "CBA_VDC_WATERCRAFT_FIRE_SECONDARY"
B_PGDWN = "CBA_OFC_DEBUG_PRATFALL"
B_RIGHT = "CBA_SKYDIVE_DIVE"
B_DOWN = "CBA_TOW_TRUCK_TOWING_RIGHT"
B_LEFT = "CBA_TOW_TRUCK_TOWING_LEFT"
B_UP = "CBA_TOW_TRUCK_RELEASE_VEHICLE"
B_LBRACKET = "CBA_FIGHT_CLUB_BLOCK"
B_RBRACKET = "CBA_MP_SCOREBOARD"
--Key list can be found in misc_tables.vpp_pc in control_binding_sets.xbtl
B_ZOOM_IN = "CBA_OFC_ZOOM_IN"
B_ZOOM_OUT = "CBA_OFC_ZOOM_OUT"

--[[KEY BINDINGS THAT FAILED

CBA_VDC_RC_SELF_DESTRUCT
CBA_SKYDIVE_FLIP
CBA_AVATAR_SWORD_SWEEP
CBA_AVATAR_SHOCKWAVE
CBA_AVATAR_FLAME_BREATH
CBA_AVATAR_DASH
CBA_OFC_MULTI_PRATFALL
CBA_SWC_FIRE_GUIDED
CBA_SWC_FIRE_FREE
CBA_SWC_FIRE_BULLETS
CBA_SWC_MISSILE_ACCELERATE
CBA_SWC_MISSILE_DECELERATE
CBA_VDC_WATERCRAFT_FIRE_PRIMARY
]]



local KEYCOMBO_THREAD_ON = 1
local CORPSERESET_THREAD_ON = 1
local Keycombo_Handle = INVALID_THREAD_HANDLE
local CorpseReset_Handle = INVALID_THREAD_HANDLE

-- Pivot states for key combos
ZOOM_IN_PUSHED = false
ZOOM_OUT_PUSHED= false
CROUCH_PUSHED = false
RECRUIT_PUSHED = false
TAUNT_PUSHED = false
COMPLIMENT_PUSHED = false
USE_PUSHED = false
GRENADE_PUSHED = false
RELOAD_PUSHED = false
MELEE_PUSHED = false
ONE_PUSHED = false
TWO_PUSHED = false
THREE_PUSHED = false
FOUR_PUSHED = false
FIVE_PUSHED = false
SIX_PUSHED = false
SEVEN_PUSHED = false
EIGHT_PUSHED = false

local weapon_select_keys = {
    "CBA_GAC_WEAPON_SELECT_1",
    "CBA_GAC_WEAPON_SELECT_3",
    "CBA_GAC_WEAPON_SELECT_4",
    "CBA_GAC_WEAPON_SELECT_5",
    "CBA_GAC_WEAPON_SELECT_6",
    "CBA_GAC_WEAPON_SELECT_7",
    "CBA_GAC_WEAPON_SELECT_8"
}

local dir = {
	UP = "CBA_INVENTORY_UP",
	DOWN = "CBA_INVENTORY_DOWN",
	LEFT = "CBA_INVENTORY_LEFT",
	RIGHT = "CBA_INVENTORY_RIGHT",
}

local lower_keys = {
	function()
        return player_action_is_pressed("CBA_OFC_ZOOM_IN") -- B_ZOOM_OUT or map your own key if you don't want a conflict'
    end
}

--Used for custom teleports
ctele_Posx = 1361.8412
ctele_Posy = -818.131
ctele_Posz = 32.8916

--Used for saved positions to create custom teleports
tsavposx, tsavposy, tsavposz = 0, 0, 0

--Custom saved

--Examples
--sandboxplus_message("HOME HUD")
--debug_print("RIGHT BRACKET\n")
--city_zone_swap("vr",true)

local tod_data_reworked = {
	{ file = "blue_pd_tod_override.todx", label = "blue_pd" },
	{ file = "sunrise_tod_override.todx", label = "sunrise" },
	{ file = "orange_tod_override.todx", label = "orange" },
}

local tod_data_reworked_2 = {
	{ file = "blue_pd_tod_override.todx", label = "blue_pd" },
	{ file = "violet_tod_override.todx", label = "violet" },
	{ file = "orange_tod_override.todx", label = "orange" },
	{ file = "red_tod_override.todx",    label = "red" },
	{ file = "vintage_tod_override.todx", label = "vintage" },
	{ file = "sunrise_tod_override.todx", label = "sunrise" },
	{ file = "classic_tod_override.todx", label = "classic" },
	{ file = "modern_tod_override.todx",  label = "modern" },
	{ file = "nm_cheat_tod_override.todx", label = "nm_cheat" },
}

local tod_data_colored = {
    { file = "blue_tod_override.todx",   label = "blue" },
    { file = "noir_tod_override.todx",   label = "noir" },
	{ file = "m15_tod_override.todx", label = "m15" },
    { file = "m16_tod_override.todx", label = "m16" },
}

local tod_data_day = {
	{ file = "dlc1_m01_tod_override.todx", label = "dlc1_m01" },
    { file = "dlc1_m02_tod_override.todx", label = "dlc1_m02" },
    { file = "dlc1_m03_tod_override.todx", label = "dlc1_m03" },
    { file = "dlc1_m04_tod_override.todx", label = "dlc1_m04" },
    { file = "dlc1_m05_tod_override.todx", label = "dlc1_m05" },
	{ file = "m00_out_tod_override.todx",  label = "m00_out" },
    { file = "sunset_tod_override.todx",   label = "sunset" },
	{ file = "m01test_tod_override.todx",  label = "m01test" },
    { file = "day_tod_override.todx",     label = "day" },
    { file = "nm_dark_tod_override.todx", label = "nm_dark" },
	{ file = "nm_noon_tod_override.todx", label = "nm_noon" },
    { file = "nm_noonb_tod_override.todx", label = "nm_noonb" },
}

local tod_data_special_1 = {
    { file = "training_tod_override.todx", label = "training" },
    { file = "warden_tod_override_noon.todx", label = "warden" },
    { file = "mothership_tod_override.todx",    label = "mothership" },
    { file = "nightmare_dark_tod_override.todx",label = "nightmare_dark" },
    { file = "blue_predawn_tod_override.todx",  label = "blue_predawn" },
    { file = "infrared_tod_override.todx",  label = "infrared" },
	{ file = "spacelit_tod_override.todx",  label = "spacelit" },
    { file = "space_tod_override.todx",     label = "space" },
    { file = "suburbia_tod_override.todx",  label = "suburbia" },
}

local tod_data_special_2 = {
	{ file = "m01_tod_override.todx",      label = "m01" },
    { file = "m00_n_tod_override.todx",    label = "m00_n" },
    { file = "m00_tod_override.todx",      label = "m00" },
    { file = "m02_tod_override.todx",      label = "m02" },
    { file = "m06_2_tod_override.todx",    label = "m06_2" },
    { file = "m08_tod_override.todx",      label = "m08" },
    { file = "m15_tod_override.todx",      label = "m15" },
    { file = "m16_tod_override.todx",      label = "m16" },
    { file = "m18_tod_override.todx",      label = "m18" },
    { file = "nm_02out_tod_override.todx", label = "nm_02out" },
    { file = "r_leap01_tod_override.todx", label = "r_leap01" },
}

local weather = 0

-- Display ToD Order
local preset_order = {"reworked", "colored", "reworked_2", "day", "special_2", "special_1" }

local all_presets = {
	reworked 	= tod_data_reworked,
	reworked_2 = tod_data_reworked_2,
    day         = tod_data_day,
	colored     = tod_data_colored,
    special_1   = tod_data_special_1,
    special_2   = tod_data_special_2,
}

local CURRENT_PRESET_INDEX = 1
local TOD_COUNTER = 1

function apply_current_tod()
	local preset_name = preset_order[CURRENT_PRESET_INDEX]
	local preset_list = all_presets[preset_name]
	local entry = preset_list[TOD_COUNTER]

	if not entry then
		sandboxplus_message("Invalid TOD index")
		return
	else
		mission_override_clear_all_temp()
		set_time_of_day(0, 0)
		mission_override_push_temp(entry.file)

		local msg = "ToD: " .. entry.label .. " (" .. preset_name .. ")" .. " counter: "  .. TOD_COUNTER
		sandboxplus_message(msg)

		TOD_COUNTER = (TOD_COUNTER % #preset_list) + 1
	end
end

-- Switching tod preset category
function switch_preset()
	CURRENT_PRESET_INDEX = (CURRENT_PRESET_INDEX % #preset_order) + 1
	TOD_COUNTER = 1
	local new_preset = preset_order[CURRENT_PRESET_INDEX]
	sandboxplus_message("Switched ToD preset to '" .. new_preset .. "'")
end

function reapply_current_tod_with_time()
	local preset_name = preset_order[CURRENT_PRESET_INDEX]
	local preset_list = all_presets[preset_name]
	local entry = preset_list[TOD_COUNTER == 1 and #preset_list or (TOD_COUNTER - 1)]

	if not entry then
		sandboxplus_message("No active ToD.")
		return
	end

	mission_override_clear_all_temp()
	set_time_of_day(hour, min)
	mission_override_push_temp(entry.file)

	local msg = "Updated ToD: " .. entry.label .. " (" .. preset_name .. ") at " .. hour .. " : " .. min
	sandboxplus_message(msg)
end

function weather_swap()
	weather = (weather + 1) % 2
	set_weather(weather, true)
	if weather == 1 then
		sandboxplus_message("Weather set to: rain warden")
	else
		sandboxplus_message("Weather set to: clear")
	end
end

-- END TOD section

-- SECTION camera

local camera_presets = 	{
	{
		"Joe Ladle",
	},
	{
		"SR1 Flashback Camera",
		"SR3 Script Camera",
	},
	{
		"SR3 M00 Combat Cam",
	},
	{
		"Crib Ship Cam",
	},
	{
		"SR2 Flashback Camera",
	},
}

-- Index & State
local CAMERA_INDEX = 1
local CAMERA_PRESET = 1
local CAMERA_ACTIVE = false

-- Active Preset Table
local function get_current_preset_list()
	return camera_presets[CAMERA_PRESET]
end

-- Next Preset activation
function swap_camera_preset()
	CAMERA_PRESET = (CAMERA_PRESET % #camera_presets) + 1
	CAMERA_INDEX = 1
	sandboxplus_message("Switched to camera preset set " .. CAMERA_PRESET)
end

-- Apply camera values in selected preset
function apply_next_camera()
	local presets = get_current_preset_list()
	local cam_name = presets[CAMERA_INDEX]

	if cam_name == "DEFAULT" then
		camera_script_disable()
		sandboxplus_message("Camera set to default")
		CAMERA_ACTIVE = false
	else
		camera_script_enable(cam_name)
		sandboxplus_message("Camera enabled: " .. cam_name)
		CAMERA_ACTIVE = true
	end

	CAMERA_INDEX = (CAMERA_INDEX % #presets) + 1
end

-- END SECTION Camera

-- SECTION Notoriety

function update_notoriety(level)
	if level >= 1 and level <= 5 then
		notoriety_set_min_and_max("police", level, level)
		notoriety_set("police", level)
		sandboxplus_message(" Notoriety set to " .. level)
	elseif level >= 6 or level <= 0 then
		notoriety_reset("police")
		sandboxplus_message(" Notoriety reset to zero and locks removed")
	end
end

-- END SECTION Notoriety

-- SECTION RECALL FOLLOWER
function recall_follower(follower_id)
    if follower_id ~= nil then
        local follower_tag = "#FOLLOWER" .. follower_id .. "#"
        teleport_to_object(follower_tag, LOCAL_PLAYER, false, nil, 0.5)
        sandboxplus_message("Follower " .. follower_id .. " recalled")
		-- adding a flag to ignore turning against player when shoot at
    else
		-- Recall all followers to player
        for i = 1, 3 do
            local tag = "#FOLLOWER" .. i .. "#"
            teleport_to_object(tag, LOCAL_PLAYER, false, nil, 0.5)
        end
        sandboxplus_message("Followers recalled")
		-- adding a flag to ignore turning against player when shoot at
    end
end

-- END SECTION RECALL FOLLOWER

-- Dodge area
local DODGING = false
local photo_anim = "photo op"
local dodgeB = "superjump land slide back"

-- RTS = Roll - Type - SWAP
local RTS = {
	STAND_1 = {
		dodgeR = "dodge right 1",
		dodgeL = "dodge left 1",
	},
	ROLL = {
		dodgeR = "dive right",
		dodgeL = "dive left",
	},
	STAND_2 = {
		dodgeR = "dodge right",
		dodgeL = "dodge left",
	}
}

-- Preset order (if you want to change the order, this part is quicker)
local RTS_ORDER = {"STAND_1", "STAND_2", "ROLL"}
local CURRENT_RTS = RTS_ORDER[1]

-- Preset change function
function swap_rts(index)
	CURRENT_RTS = RTS_ORDER[index]
end

function keycombo_thread()
	while KEYCOMBO_THREAD_ON == 1 do
		for _, check in ipairs(lower_keys) do -- we loop through the lower_keys functions with check() iteration "variable"
			if check() then
				character_set_combat_ready(LOCAL_PLAYER, false, 0)
				break
			end
		end

		for _, key in ipairs(weapon_select_keys) do
			if player_action_is_pressed(key) then
				character_set_combat_ready(LOCAL_PLAYER, false, 0)
				break
			end
		end

		if player_action_is_pressed("CBA_OFC_CROUCH") then -- CTRL (crouch)
			if player_action_is_pressed(B_INSERT) and not CROUCH_PUSHED then
				if not SUPERPOWER_ATTACKS_ACTIVE then
					player_super_attacks_enable(true)
					sandboxplus_message(" Superpower attacks activated")
				else
					player_super_attacks_enable(false)
					sandboxplus_message(" Superpower attacks deactivated")
				end
				SUPERPOWER_ATTACKS_ACTIVE = not SUPERPOWER_ATTACKS_ACTIVE
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not CROUCH_PUSHED then
				if not SUPERPOWER_MOVEMENT_ACTIVE then
					player_super_movement_enable(true)
					sandboxplus_message(" Superpower movement activated")
				else
					player_super_movement_enable(false)
					sandboxplus_message(" Superpower movement deactivated")
				end
				SUPERPOWER_MOVEMENT_ACTIVE = not SUPERPOWER_MOVEMENT_ACTIVE
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not CROUCH_PUSHED then
				if not SUPERPOWER_NO_COOLDOWN then
					player_super_power_set_temp_charge(1.0)
					sandboxplus_message(" Superpower cooldown disabled")
				else
					player_super_power_set_temp_charge(-1.0)
					sandboxplus_message(" Superpower cooldown restored")
				end
				SUPERPOWER_NO_COOLDOWN = not SUPERPOWER_NO_COOLDOWN
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not CROUCH_PUSHED then
				local CURRENT_VEHICLE = get_char_vehicle_name(LOCAL_PLAYER)
				local IS_IN_VEHICLE = character_is_in_vehicle(LOCAL_PLAYER)
		                if IS_IN_VEHICLE == false then
					sandboxplus_message(" Player is not in a vehicle!")
		                else
					vehicle_repair(CURRENT_VEHICLE)
					sandboxplus_message(" Fixed current vehicle")
				end
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_END) and not CROUCH_PUSHED then
				if not CLONE_SPAWNING then
					spawn_global_override_set_category("m14_clonearmy")
					sandboxplus_message(" Enable clone army spawning")
				else
					spawn_global_override_clear_category()
					sandboxplus_message(" Disable clone army spawning")
				end
				CLONE_SPAWNING = not CLONE_SPAWNING
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not CROUCH_PUSHED then
				--[[if not SPAWN_ZOMBIES then
					spawn_global_override_set_category("sp_cat_Arapice_Zombies")
					sandboxplus_message(" Enable Zombie spawning")
				else
					spawn_global_override_clear_category()
					sandboxplus_message(" Disable zombie spawning")
				end
				SPAWN_ZOMBIES = not SPAWN_ZOMBIES]]
				weather_swap()
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not CROUCH_PUSHED then
				if not CAMERA_RIGHT or FORCE_CAMERA_SIDE then -- LEFT SIDE CAMERA ACTIVATION; force camera if you need to lock a position even if you swap a position camera
					camera_script_enable("SR3 Script Camera")
					sandboxplus_message("Camera enabled: SR3 Script Camera")
					CAMERA_RIGHT = true
				else -- RIGHT SIDE CAMERA ACTIVATION
					camera_script_enable("SR1 Flashback Camera")
					sandboxplus_message("Camera enabled: SR1 Flashback Camera")
					CAMERA_RIGHT = false
				end
				CROUCH_PUSHED = true
				--[[if not SPAWN_MASCOTS then
					spawn_global_override_set_category("sp_cat_Cheat_Mascot")
					sandboxplus_message(" Enable mascot spawning")
				else
					spawn_global_override_clear_category()
					sandboxplus_message(" Disable mascot spawning")
				end
				SPAWN_MASCOTS = not SPAWN_MASCOTS]]

			elseif player_action_is_pressed(B_RIGHT) and not CROUCH_PUSHED then
				camera_script_disable()
				sandboxplus_message("Camera set to default")
				--[[if not SPAWN_RIFT then
					spawn_global_override_set_category("sp_cat_ForbiddenZone")
					sandboxplus_message(" Enable Rift Glitch spawning")
				else
					spawn_global_override_clear_category()
					sandboxplus_message(" Disable Rift Glitch spawning")
				end
				SPAWN_RIFT = not SPAWN_RIFT]]
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not CROUCH_PUSHED then
				--[[if not COMBAT_50S_COPS then
					notoriety_enable_custom_spawning("m02 Pleasant Police")
					notoriety_set_min_and_max("police", 0, 1)
					sandboxplus_message(" Pleasantville cop spawning enabled")
				else
					notoriety_reset("police")
					sandboxplus_message(" Pleasantville Cops Have Gone For Donuts")
				end
				COMBAT_50S_COPS = not COMBAT_50S_COPS]]
				camera_script_disable()
				sandboxplus_message("Camera set to default")
				CROUCH_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not CROUCH_PUSHED then
				--[[if not NOTORIETY_ZERO then
					notoriety_set_min_and_max("police", 0, 0)
					sandboxplus_message("Notoriety locked at zero")
				else
					notoriety_reset("police")
					sandboxplus_message("Notoriety lock removed")
				end
				NOTORIETY_ZERO = not NOTORIETY_ZERO
						if not SYNCED_FINISHER then
				character_use_synced_finishers(LOCAL_PLAYER, true)
				sandboxplus_message("sync finisher on")
				else
				character_use_synced_finishers(LOCAL_PLAYER, false)
				sandboxplus_message("sync finisher off")
				end
				SYNCED_FINISHER = not SYNCED_FINISHER]]
				player_super_movement_enable(false)
				sandboxplus_message(" Superpower movement deactivated")
				SUPERPOWER_MOVEMENT_ACTIVE = false
				CROUCH_PUSHED = true
			end
		elseif player_action_is_pressed("CBA_OFC_ZOOM_IN") then -- ZOOM_IN (notoriety cycle)
			if player_action_is_pressed(B_LBRACKET) and not ZOOM_IN_PUSHED then
				NOTORIETY_COUNTER = NOTORIETY_COUNTER + 1
				if NOTORIETY_COUNTER > 6 then
					NOTORIETY_COUNTER = 0 -- reset
				end
				update_notoriety(NOTORIETY_COUNTER)
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not ZOOM_IN_PUSHED then
				--[[ NOTORIETY_COUNTER = NOTORIETY_COUNTER - 1
					if NOTORIETY_COUNTER < 1 then
						NOTORIETY_COUNTER = 6 -- reset
					end
					update_notoriety(NOTORIETY_COUNTER)]]
				NOTORIETY_COUNTER = 0
				update_notoriety(NOTORIETY_COUNTER)
				sandboxplus_message(" Notoriety fully reset")
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not ZOOM_IN_PUSHED then
				if not TIMEDILATION then
					time_dilation_enable(true)
				else
					time_dilation_enable(false)
				end 
				TIMEDILATION = not TIMEDILATION
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not ZOOM_IN_PUSHED then
				swap_camera_preset()
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not ZOOM_IN_PUSHED then
				apply_next_camera()
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not ZOOM_IN_PUSHED then
				if not CAMERA_RIGHT or FORCE_CAMERA_SIDE then -- LEFT SIDE CAMERA ACTIVATION; force camera if you need to lock a position even if you swap a position camera
					camera_script_enable("SR3 Script Camera")
					sandboxplus_message("Camera enabled: SR3 Script Camera")
					CAMERA_RIGHT = true
				else -- RIGHT SIDE CAMERA ACTIVATION
					camera_script_enable("SR1 Flashback Camera")
					sandboxplus_message("Camera enabled: SR1 Flashback Camera")
					CAMERA_RIGHT = false
				end
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not ZOOM_IN_PUSHED then
				camera_script_disable()
				if not CAMERA_MODE then -- if camera is not centered
					CAMERA_RIGHT = false
				end
				sandboxplus_message("Camera set to default")
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not ZOOM_IN_PUSHED then
				if not CAMERA_MODE then
					camera_set_platforming_mode(true)
					sandboxplus_message("Platforming Camera Submode Enabled")
					CAMERA_MODE = true
				else
					camera_set_platforming_mode(false)
					sandboxplus_message("Platforming Camera Submode Disabled")
					CAMERA_MODE = false
				end
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_END) and not ZOOM_IN_PUSHED then
				camera_script_enable("SR2 Flashback Camera")
				sandboxplus_message("Camera enabled: SR2 Flashback Camera")
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not ZOOM_IN_PUSHED then
				camera_script_enable("SR1 Flashback Camera")
				sandboxplus_message("Camera enabled: SR3 M00 Combat Cam")
				CAMERA_RIGHT = false
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not ZOOM_IN_PUSHED then
				camera_script_enable("SR3 M00 Combat Cam")
				sandboxplus_message("Camera enabled: SR3 M00 Combat Cam")
				CAMERA_RIGHT = true
				ZOOM_IN_PUSHED = true
			elseif player_action_is_pressed("CBA_GAC_RECRUIT_DISMISS") and not ZOOM_IN_PUSHED then
				if not SUPERPOWER_MOVEMENT_ACTIVE then
					player_super_movement_enable(true)
					sandboxplus_message(" Superpower movement activated")
				else
					player_super_movement_enable(false)
					sandboxplus_message(" Superpower movement deactivated")
				end
				SUPERPOWER_MOVEMENT_ACTIVE = not SUPERPOWER_MOVEMENT_ACTIVE
				ZOOM_IN_PUSHED = true
			end
		elseif player_action_is_pressed("CBA_OFC_ZOOM_OUT") then -- zooming out combo, roll states, custom teleports or animations
				if player_action_is_pressed(B_RIGHT) and not ZOOM_OUT_PUSHED then
					action_play(LOCAL_PLAYER, RTS[CURRENT_RTS].dodgeR, nil, true, 0, true)
					ZOOM_OUT_PUSHED = true
				elseif player_action_is_pressed(B_LEFT) and not ZOOM_OUT_PUSHED then
					action_play(LOCAL_PLAYER, RTS[CURRENT_RTS].dodgeL, nil, true, 0, true)
					ZOOM_OUT_PUSHED = true
				elseif player_action_is_pressed(B_UP) and not ZOOM_OUT_PUSHED  then
					swap_rts(1)
					ZOOM_OUT_PUSHED = true
				elseif player_action_is_pressed(B_DOWN) and not ZOOM_OUT_PUSHED  then
					swap_rts(3)
					ZOOM_OUT_PUSHED = true
				elseif player_action_is_pressed(B_END) and not ZOOM_OUT_PUSHED  then
					swap_rts(2)
					ZOOM_OUT_PUSHED = true
				elseif player_action_is_pressed(B_DELETE) and not ZOOM_OUT_PUSHED  then --photo_animation
					action_play(LOCAL_PLAYER, photo_anim, nil, true, 0, true)
					ZOOM_OUT_PUSHED = true
				elseif player_action_is_pressed(B_PGUP) and not ZOOM_OUT_PUSHED then
					tsavposx, tsavposz, tsavposy = get_object_pos(LOCAL_PLAYER)
					sandboxplus_message(" Custom location value stored as x, y, z :" .. tsavposx .. ", " .. tsavposy .. ", " .. tsavposz)
					ZOOM_OUT_PUSHED = true
				elseif player_action_is_pressed(B_HOME) and not ZOOM_OUT_PUSHED then
					reset_all_zones()
					local tposx,tposy,tposz = (tsavposx - ctele_Posx), (tsavposy - ctele_Posy), (tsavposz - ctele_Posz)
					sandboxplus_message(" Teleport to custom saved location" .. tposx .. ", " .. tposy .. ", " .. tposz)
					teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
					if COOP_COMMANDS and coop_is_active() then
						teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
					end
					ZOOM_OUT_PUSHED = true
				elseif not ZOOM_OUT_PUSHED then
					action_play(LOCAL_PLAYER, dodgeB, nil, true, 0, true)
					ZOOM_OUT_PUSHED = true
				end
		elseif player_action_is_pressed("CBA_GAC_ACTION") then -- USE/ACTION E
			-- this function allows a quick super power activation and deactivation if you're character is getting ragdolled
			if character_is_ragdolled(LOCAL_PLAYER) and not SUPERPOWER_MOVEMENT_ACTIVE and not USE_PUSHED then
				-- action_play(LOCAL_PLAYER, "ragdoll recover", "ragdoll recover", true)
				SUPERPOWER_MOVEMENT_ACTIVE = true
				RAGDOLLED = true
				player_super_movement_enable(true)
				USE_PUSHED = true
			elseif SUPERPOWER_MOVEMENT_ACTIVE and RAGDOLLED and not USE_PUSHED then -- we return to initial state 
				RAGDOLLED = false
				SUPERPOWER_MOVEMENT_ACTIVE = false
				player_super_movement_enable(false)
				USE_PUSHED = true
			end

			if player_action_is_pressed(B_INSERT) and not USE_PUSHED then
				if not PLEASANTVILLE_WALK then
					--set_animation_set(LOCAL_PLAYER, "Mission02")
					character_set_animation_overrides(LOCAL_PLAYER, "M02 confused stand", "M02 confused walk", "")
					player_can_sprint(LOCAL_PLAYER, false)
					player_force_walk(LOCAL_PLAYER, true)
					sandboxplus_message(" Activate Pleasantville walk")
					if COOP_COMMANDS and coop_is_active() then
						character_set_animation_overrides(REMOTE_PLAYER, "M02 confused stand", "M02 confused walk", "")
						player_can_sprint(REMOTE_PLAYER, false)
						player_force_walk(REMOTE_PLAYER, true)
					end
				else
					character_set_animation_overrides(LOCAL_PLAYER, nil, nil, nil)
					player_can_sprint(LOCAL_PLAYER, true)
					player_force_walk(LOCAL_PLAYER, false)
					sandboxplus_message(" Normal walk animation restored")
					if COOP_COMMANDS and coop_is_active() then
						character_set_animation_overrides(REMOTE_PLAYER, nil, nil, nil)
						player_can_sprint(REMOTE_PLAYER, true)
						player_force_walk(REMOTE_PLAYER, false)
					end
				end
				PLEASANTVILLE_WALK = not PLEASANTVILLE_WALK
				USE_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not USE_PUSHED then
				if not SIDESCROLL_ANIMS then
					set_animation_set(LOCAL_PLAYER, "Sidescroll_PLYM")
					player_super_attacks_enable(false)
					player_super_movement_enable(false)
					sandboxplus_message(" 2D Sidescroller animations activated")
					if COOP_COMMANDS and coop_is_active() then
						set_animation_set(REMOTE_PLAYER, "Sidescroll_PLYM")
					end
				else
					--set_animation_for_gender("LOCAL_PLAYER")
					set_animation_set(LOCAL_PLAYER, "PLYM")
					player_super_attacks_enable(true)
					player_super_movement_enable(true)
					sandboxplus_message(" 2D Sidescroller animations deactivated")
					if COOP_COMMANDS and coop_is_active() then
						--set_animation_for_gender("REMOTE_PLAYER")
						set_animation_set(REMOTE_PLAYER, "PLYM")
					end
				end
				SIDESCROLL_ANIMS = not SIDESCROLL_ANIMS
				USE_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not USE_PUSHED then
				if not STREAKING_ANIMS then
					player_super_attacks_enable(false)
					player_super_movement_enable(false)
					player_can_sprint(false)
					character_set_animation_overrides(LOCAL_PLAYER, "streaking stand", "streaking run", "streaking run")
					sandboxplus_message(" Activate streaking animations")
					if COOP_COMMANDS and coop_is_active() then
						character_set_animation_overrides(REMOTE_PLAYER, "streaking stand", "streaking run", "streaking run")
					end
				else
					character_set_animation_overrides(LOCAL_PLAYER, nil, nil, nil)
					sandboxplus_message(" Deactive streaking animations")
					player_super_attacks_enable(true)
					player_super_movement_enable(true)
					player_can_sprint(true)
					if COOP_COMMANDS and coop_is_active() then
						character_set_animation_overrides(REMOTE_PLAYER, nil, nil, nil)
					end
				end
				STREAKING_ANIMS = not STREAKING_ANIMS
				USE_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not USE_PUSHED then
				--[[if not MURDERBOT_ANIMS then
					set_animation_set(LOCAL_PLAYER, "Terminator")
					sandboxplus_message(" Murderbot animations activated")
					if COOP_COMMANDS and coop_is_active() then
						set_animation_set(REMOTE_PLAYER, "Terminator")
					end
				else
					--set_animation_for_gender("LOCAL_PLAYER")
					set_animation_set(LOCAL_PLAYER, "PLYM")
					sandboxplus_message(" Murderbot animations deactivated")
					if COOP_COMMANDS and coop_is_active() then
						--set_animation_for_gender("REMOTE_PLAYER")
					set_animation_set(REMOTE_PLAYER, "PLYM")
					end
				end
				MURDERBOT_ANIMS = not MURDERBOT_ANIMS]]
				if not WEAPON_HOLSTERED then
				character_force_holster_weapon(LOCAL_PLAYER, true)
				else
				character_force_holster_weapon(LOCAL_PLAYER, false)
				end
				WEAPON_HOLSTERED = not WEAPON_HOLSTERED
				USE_PUSHED = true
			elseif player_action_is_pressed(B_END) and not USE_PUSHED then
				--[[if not DRUNK_ANIMS then
					customization_swap_player_rig( "cm_body.rig", "Drunk" )
					sandboxplus_message(" Drunk animations activated")
				else
					customization_restore_player_rig()
					sandboxplus_message(" Drunk animations deactivated")
				end
				DRUNK_ANIMS = not DRUNK_ANIMS]]
				if not QUICK_CLEANUP then
					npc_max_corpses_override(0)
					sandboxplus_message("Cleanup Routine Activated")
				else
					npc_max_corpses_override(3)
					sandboxplus_message("Cleanup Routine 3 corpses in vicinity")
				end
				QUICK_CLEANUP = not QUICK_CLEANUP
				USE_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not USE_PUSHED then
				local sandbox_drug_scalar = 0
				if DRUGGED_COUNTER == 1 then
					sandbox_drug_scalar = 0.25
					sandboxplus_message(" Player takes drugs - weak")
				elseif DRUGGED_COUNTER == 2 then
					sandbox_drug_scalar = 0.5
					sandboxplus_message(" Player takes drugs - medium")
				elseif DRUGGED_COUNTER == 3 then
					sandbox_drug_scalar = 1.0
					sandboxplus_message(" Player is one with the universe")
				elseif DRUGGED_COUNTER == 4 then
					sandbox_drug_scalar = 0
					sandboxplus_message(" Player has cleaned up his life")
				end
				get_fucking_high_bitches(sandbox_drug_scalar)
				if DRUGGED_COUNTER == 4 then
					DRUGGED_COUNTER = 1
				else
					DRUGGED_COUNTER = DRUGGED_COUNTER + 1
				end
				USE_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not USE_PUSHED then
				if PLAYER_VULNERABLE then
					sandboxplus_message("Player is now invulnerable")
					turn_invulnerable(LOCAL_PLAYER)
					if COOP_COMMANDS and coop_is_active() then
						turn_invulnerable(REMOTE_PLAYER)
					end
				else
					sandboxplus_message("Player is now vulnerable")
					turn_vulnerable(LOCAL_PLAYER)
					if COOP_COMMANDS and coop_is_active() then
						turn_vulnerable(REMOTE_PLAYER)
					end
				end
				PLAYER_VULNERABLE = not PLAYER_VULNERABLE
				USE_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not USE_PUSHED then
				if human_is_downed("#FOLLOWER1#") then
					npc_revive("#FOLLOWER1#")
				elseif human_is_downed("#FOLLOWER2#") then
					npc_revive("#FOLLOWER2#")
				elseif human_is_downed("#FOLLOWER3#") then
					npc_revive("#FOLLOWER3#")
				else
					sandboxplus_message(" None of your followers need revival")
				end
				USE_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not USE_PUSHED then
			--[[
			if PLAYA_DANCE_COUNTER == 1 then
				set_animation_state(LOCAL_PLAYER, "dance b")
				sandboxplus_message(" Playa dance party engage")
			elseif PLAYA_DANCE_COUNTER == 2 then
				set_animation_state(LOCAL_PLAYER, "dance c")
				sandboxplus_message(" Playa dance party 2: Electric Boogaloo")
			elseif PLAYA_DANCE_COUNTER == 3 then
				clear_animation_state(LOCAL_PLAYER)
				sandboxplus_message(" Party's over")
			end
			if PLAYA_DANCE_COUNTER == 3 then
				PLAYA_DANCE_COUNTER = 1
			else
				PLAYA_DANCE_COUNTER = PLAYA_DANCE_COUNTER + 1
			end				
			Followers animations not working for some reason. Worked fine in srtt
				if not FOLLOWERS_DANCE then	
					set_animation_state(LOCAL_PLAYER, "dance b")	-- Sets dance animations. Feel free to replace them with your own.
					set_animation_state("#FOLLOWER#", "dance c")
					set_animation_state("#FOLLOWER2#", "dance b")
					set_animation_state("#FOLLOWER3#", "dance c")

					sandboxplus_message(" Party time!")
				else
					clear_animation_state(LOCAL_PLAYER)
					clear_animation_state("#FOLLOWER#")
					clear_animation_state("#FOLLOWER2#")
					clear_animation_state("#FOLLOWER3#")
					sandboxplus_message(" Party's over!")
				end
				FOLLOWERS_DANCE  = not FOLLOWERS_DANCE]]
				FORCE_CAMERA_SIDE = not FORCE_CAMERA_SIDE
				USE_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not USE_PUSHED then
				--cash_add(100000)
				--audio_object_post_event("WEAPON_PURCHASE", nil, nil, LOCAL_PLAYER)
				USE_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not USE_PUSHED then
				if HEIGHT_DOWN_COUNTER == 1 then
					player_change_default_size(LOCAL_PLAYER, 0.9, false)
					sandboxplus_message(" Decrease Player Size .9")
				elseif HEIGHT_DOWN_COUNTER == 2 then
					player_change_default_size(LOCAL_PLAYER, 0.8, false)
					sandboxplus_message(" Decrease Player Size .8")
				elseif HEIGHT_DOWN_COUNTER == 3 then
					player_change_default_size(LOCAL_PLAYER, 0.7, false)
					sandboxplus_message(" Decrease Player Size .7")
				elseif HEIGHT_DOWN_COUNTER == 4 then
					player_change_default_size(LOCAL_PLAYER, 0.6, false)
					sandboxplus_message(" Decrease Player Size .6")
				elseif HEIGHT_DOWN_COUNTER == 5 then
					player_change_default_size(LOCAL_PLAYER, 0.5, false)
					sandboxplus_message(" Decrease Player Size .5")
				elseif HEIGHT_DOWN_COUNTER == 6 then
					player_change_default_size(LOCAL_PLAYER, 0.4, false)
					sandboxplus_message(" Decrease Player Size .4")
				elseif HEIGHT_DOWN_COUNTER == 7 then
					player_change_default_size(LOCAL_PLAYER, 0.3, false)
					sandboxplus_message(" Decrease Player Size .3")
				elseif HEIGHT_DOWN_COUNTER == 8 then
					player_change_default_size(LOCAL_PLAYER, 0.2, false)
					sandboxplus_message(" Decrease Player Size .2")
				elseif HEIGHT_DOWN_COUNTER == 9 then
					player_change_default_size(LOCAL_PLAYER, 0.1, false)
					sandboxplus_message(" Decrease Player Size .1")
				elseif HEIGHT_DOWN_COUNTER == 10 then
					player_change_default_size(LOCAL_PLAYER, 1.0, false)
					sandboxplus_message(" Player height restored to default")
				end
				if HEIGHT_DOWN_COUNTER == 10 then
					HEIGHT_DOWN_COUNTER = 1
				else
					HEIGHT_DOWN_COUNTER = HEIGHT_DOWN_COUNTER + 1
				end
				USE_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not USE_PUSHED then
				if HEIGHT_UP_COUNTER == 1 then
					player_change_default_size(LOCAL_PLAYER, 1.1, false)
					sandboxplus_message(" Increase Player Size 1.1")
				elseif HEIGHT_UP_COUNTER == 2 then
					player_change_default_size(LOCAL_PLAYER, 1.2, false)
					sandboxplus_message(" Increase Player Size 1.2")
				elseif HEIGHT_UP_COUNTER == 3 then
					player_change_default_size(LOCAL_PLAYER, 1.3, false)
					sandboxplus_message(" Increase Player Size 1.3")
				elseif HEIGHT_UP_COUNTER == 4 then
					player_change_default_size(LOCAL_PLAYER, 1.4, false)
					sandboxplus_message(" Increase Player Size 1.4")
				elseif HEIGHT_UP_COUNTER == 5 then
					player_change_default_size(LOCAL_PLAYER, 1.5, false)
					sandboxplus_message(" Increase Player Size 1.5")
				elseif HEIGHT_UP_COUNTER == 6 then
					player_change_default_size(LOCAL_PLAYER, 1.6, false)
					sandboxplus_message(" Increase Player Size 1.6")
				elseif HEIGHT_UP_COUNTER == 7 then
					player_change_default_size(LOCAL_PLAYER, 1.7, false)
					sandboxplus_message(" Increase Player Size 1.7")
				elseif HEIGHT_UP_COUNTER == 8 then
					player_change_default_size(LOCAL_PLAYER, 1.8, false)
					sandboxplus_message(" Increase Player Size 1.8")
				elseif HEIGHT_UP_COUNTER == 9 then
					player_change_default_size(LOCAL_PLAYER, 1.9, false)
					sandboxplus_message(" Increase Player Size 1.9")
				elseif HEIGHT_UP_COUNTER == 10 then
					player_change_default_size(LOCAL_PLAYER, 2.0, false)
					sandboxplus_message(" Increase Player Size 2.0")
				elseif HEIGHT_UP_COUNTER == 11 then
					player_change_default_size(LOCAL_PLAYER, 2.5, false)
					sandboxplus_message(" Increase Player Size 2.5")
				elseif HEIGHT_UP_COUNTER == 12 then
					player_change_default_size(LOCAL_PLAYER, 3.0, false)
					sandboxplus_message(" Increase Player Size 3.0")
				elseif HEIGHT_UP_COUNTER == 13 then
					player_change_default_size(LOCAL_PLAYER, 3.5, false)
					sandboxplus_message(" Increase Player Size 3.5")
				elseif HEIGHT_UP_COUNTER == 14 then
					player_change_default_size(LOCAL_PLAYER, 4.0, false)
					sandboxplus_message(" Increase Player Size 4.0")
				elseif HEIGHT_UP_COUNTER == 15 then
					player_change_default_size(LOCAL_PLAYER, 4.5, false)
					sandboxplus_message(" Increase Player Size 4.5")
				elseif HEIGHT_UP_COUNTER == 16 then
					player_change_default_size(LOCAL_PLAYER, 5.0, false)
					sandboxplus_message(" Increase Player Size 5.0")
				elseif HEIGHT_UP_COUNTER == 17 then
					player_change_default_size(LOCAL_PLAYER, 6.0, false)
					sandboxplus_message(" Increase Player Size 6.0")
				elseif HEIGHT_UP_COUNTER == 18 then
					player_change_default_size(LOCAL_PLAYER, 7.0, false)
					sandboxplus_message(" Increase Player Size 7.0")
				elseif HEIGHT_UP_COUNTER == 19 then
					player_change_default_size(LOCAL_PLAYER, 8.0, false)
					sandboxplus_message(" Increase Player Size 8.0")
				elseif HEIGHT_UP_COUNTER == 20 then
					player_change_default_size(LOCAL_PLAYER, 9.0, false)
					sandboxplus_message(" Increase Player Size 9.0")
				elseif HEIGHT_UP_COUNTER == 21 then
					player_change_default_size(LOCAL_PLAYER, 10.0, false)
					sandboxplus_message(" Increase Player Size 10.0")
				elseif HEIGHT_UP_COUNTER == 22 then
					player_change_default_size(LOCAL_PLAYER, 1.0, false)
					sandboxplus_message(" Player Height restored")
				end
				if HEIGHT_UP_COUNTER == 22 then
					HEIGHT_UP_COUNTER = 1
				else
					HEIGHT_UP_COUNTER = HEIGHT_UP_COUNTER + 1
				end
				USE_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_OFC_PICKUP_RELOAD") then -- R(eload)
			if player_action_is_pressed(B_INSERT) and not RELOAD_PUSHED then
				--[[if not POLICE_TEAM then
				 	set_team(LOCAL_PLAYER, "Police")
				 	if COOP_COMMANDS and coop_is_active() then
				 		set_team(REMOTE_PLAYER, "Police")
				 	end
				 	sandboxplus_message("Team switched to Police")
				 else
				 	set_team(LOCAL_PLAYER, "Playas")
				 	if COOP_COMMANDS and coop_is_active() then
				 		set_team(REMOTE_PLAYER, "Playas")
				 	end
				 	sandboxplus_message("Team restored to Saints")
				 end
				 POLICE_TEAM = not POLICE_TEAM]]
				 recall_follower(1)
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not RELOAD_PUSHED then
				recall_follower(2)
				RELOAD_PUSHED = true
				--[[SLEW MODE (free camera)
				if not FREE_CAM then
					-- slew_mode(true)
					sandboxplus_message("Slew mode activated")
				else
					-- slew_mode(false)
					sandboxplus_message("Slew mode deactivated")
				end
				FREE_CAM = not FREE_CAM]]
			elseif player_action_is_pressed(B_PGUP) and not RELOAD_PUSHED then
				--[[TELEPORT REMOTE PLAYER TO HOST
				if ( coop_is_active() == true ) then
					if character_is_in_vehicle(LOCAL_PLAYER) then
						vehicle_enter_teleport(REMOTE_PLAYER,get_char_vehicle_name(LOCAL_PLAYER),1)
					else
						teleport_to_object(REMOTE_PLAYER, LOCAL_PLAYER, false, nil, 0.5)
					end
						sandboxplus_message("Remote player teleported to host")
				else
					sandboxplus_message("Teleport remote player to host FAILED")
				end]]
				recall_follower(3)
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not RELOAD_PUSHED then
				recall_follower()
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_END) and not RELOAD_PUSHED then						
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not RELOAD_PUSHED then
				--[[TELEPORT HOST TO REMOTE PLAYER
				if ( coop_is_active() == true ) then
					if character_is_in_vehicle(REMOTE_PLAYER) then
						vehicle_enter_teleport(LOCAL_PLAYER,get_char_vehicle_name(REMOTE_PLAYER),1)
					else
						teleport_to_object(LOCAL_PLAYER, REMOTE_PLAYER, false, nil, 0.5)
					end
					sandboxplus_message("Host teleported to remote player")
				else
					sandboxplus_message("Teleport to remote player FAILED")
				end]]
				if not COMBAT_50S_COPS then
					notoriety_enable_custom_spawning("m02 Pleasant Police")
					notoriety_set_min_and_max("police", 0, 1)
					sandboxplus_message(" Pleasantville cop spawning enabled")
				else
					notoriety_reset("police")
					sandboxplus_message(" Pleasantville Cops Have Gone For Donuts")
				end
				COMBAT_50S_COPS = not COMBAT_50S_COPS

				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not RELOAD_PUSHED then
				hud_push_screen("store_common", SYNC_ALL)
				hud_push_screen("store_crib", SYNC_ALL)
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not RELOAD_PUSHED then
				-- hud_push_screen("store_common", SYNC_ALL)
				-- hud_push_screen("store_character", SYNC_ALL)
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not RELOAD_PUSHED then
				hud_push_screen("store_common", SYNC_ALL)
				hud_push_screen("store_weapon", SYNC_ALL)
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not RELOAD_PUSHED then
				hud_push_screen("store_common", SYNC_ALL)
				hud_push_screen("store_clothing", SYNC_ALL)
				RELOAD_PUSHED = true

			-- Female / Male Animation swap
			elseif player_action_is_pressed(B_LBRACKET) and not RELOAD_PUSHED then
				set_animation_set(LOCAL_PLAYER, "PLYF")
				player_can_sprint(true)
				set_never_crouch_flag(LOCAL_PLAYER, false)
				sandboxplus_message("Female animations swap")
				RELOAD_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not RELOAD_PUSHED then
				set_animation_set(LOCAL_PLAYER, "PLYM")
				player_can_sprint(true)
				set_never_crouch_flag(LOCAL_PLAYER, false)
				sandboxplus_message("Male animations swap")
				RELOAD_PUSHED = true
			end


		elseif player_action_is_pressed("CBA_GAC_RECRUIT_DISMISS") then -- Z (recruit/dismiss)
			if player_action_is_pressed(B_INSERT) and not RECRUIT_PUSHED then
				--TELEPORT TO SAINTS ZERO THIRTY INSIDE BASE
				city_zone_swap("M_00", true)
				local tposx,tposy,tposz = (2760.611 - ctele_Posx), (-304.804 - ctele_Posy), (445.112 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Zero Saints Thirty")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not RECRUIT_PUSHED then
				--TELEPORT TO SAINTS ZERO THIRTY CUTSCENE (OUTSIDE)
				city_zone_swap("M_00", true)
				local tposx,tposy,tposz = (2051.361 - ctele_Posx), (-2492.004 - ctele_Posy), (545.961 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Zero Saints Thirty - Outside base")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not RECRUIT_PUSHED then
				--TELEPORT TO White House - Cutscene floor
				city_zone_swap("wh", true)
				local tposx,tposy,tposz = (589.623 - ctele_Posx), (2014.219 - ctele_Posy), (317.826 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to White House - Cutscene Floor")
				-- Found By Pliskin Hunter
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not RECRUIT_PUSHED then
				--TELEPORT TO White House Press Conference
				city_zone_swap("wh", true)
				local tposx,tposy,tposz = (633.256 - ctele_Posx), (1960.711 - ctele_Posy), (326.396 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to White House - Press conference")
				-- Found By Pliskin Hunter
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end

				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_END) and not RECRUIT_PUSHED then
				--TELEPORT TO WHITE CRIB 1
				city_zone_swap("wh", true)
				local tposx,tposy,tposz = (681.894 - ctele_Posx), (1961.763 - ctele_Posy), (340.132 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to White House 1 destroyed")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not RECRUIT_PUSHED then
				--TELEPORT TO WHITE CRIB 2
				city_zone_swap("wh", true)
				local tposx,tposy,tposz = (683.452 - ctele_Posx), (1978.624 - ctele_Posy), (340.132 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to White House 2 destroyed")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not RECRUIT_PUSHED then
				--TELEPORT TO PLEASANTVILLE
				city_zone_swap("pv", true)
				local tposx,tposy,tposz = (242.062 - ctele_Posx), (-2288.013 - ctele_Posy), (5.606 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Pleasantville")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not RECRUIT_PUSHED then
				--TELEPORT TO ZIN SHIP - THE ESCAPE
				city_zone_swap("m3_escape", true)
				local tposx,tposy,tposz = (-2184.858 - ctele_Posx), (-2441.276 - ctele_Posy), (351.005 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to The Escape - Zin ship")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not RECRUIT_PUSHED then
				--TELEPORT TO ZIN SHIP - FYING SECTION
				city_zone_swap("m3_fox", true)
				local tposx,tposy,tposz = (-1681.257 - ctele_Posx), (-1243.657 - ctele_Posy), (1094.517 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to The Escape - Flying section")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not RECRUIT_PUSHED then
				--TELEPORT TO MILLER SPACE VIRTUAL PRISON
				city_zone_swap("vr", true)
				local tposx,tposy,tposz = (-2326.832 - ctele_Posx), (1035.341 - ctele_Posy), (1183.765 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Miller Space - Virtual Prison")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not RECRUIT_PUSHED then
				--TELEPORT TO MILLER SPACE CHOOSE DOOR
				city_zone_swap("vr", true)
				local tposx,tposy,tposz = (-1793.410 - ctele_Posx), (1580.336 - ctele_Posy), (1020.260  - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Miller Space - Virtual Prison")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				RECRUIT_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not RECRUIT_PUSHED then
				--TELEPORT TO MATT MILLER RESCUE
				city_zone_swap("m7_matt", true)
				local tposx,tposy,tposz = (2094.197 - ctele_Posx), (-2327.994 - ctele_Posy), (387.246 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Matt Miller rescue")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end

				RECRUIT_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_OFC_TAUNT_TWO") then -- X (taunt)
			if player_action_is_pressed(B_INSERT) and not TAUNT_PUSHED then
				--TELEPORT TO DE PLANE 1
				city_zone_swap("m3", true)
				city_zone_swap("int_m2", true)
				local tposx,tposy,tposz = (1885.904 - ctele_Posx), (1508.658 - ctele_Posy), (1422.657 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to De Plane 1")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not TAUNT_PUSHED then
				--TELEPORT TO DE PLANE 2
				city_zone_swap("m3", true)
				city_zone_swap("int_m2", true)
				local tposx,tposy,tposz = (1835.632 - ctele_Posx), (1433.058 - ctele_Posy), (1416.290 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to De Plane 2")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not TAUNT_PUSHED then
				--TELEPORT TO DE PLANE CLUB
				city_zone_swap("m3", true)
				city_zone_swap("int_m2", true)
				local tposx,tposy,tposz = (-536.369 - ctele_Posx), (1908.538 - ctele_Posy), (73.901 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to De Plane - Nightclub")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not TAUNT_PUSHED then
				--TELEPORT TO Saints HQ
				city_zone_swap("molp1_no", true)
				local tposx,tposy,tposz = (-1478.377 - ctele_Posx), (1098.159 - ctele_Posy), (145.782 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to The Boss Goes to Washington")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_END) and not TAUNT_PUSHED then
				--TELEPORT TO Saints HQ 2
				city_zone_swap("molp1_no", true)
				local tposx,tposy,tposz = (-1486.237 - ctele_Posx), (868.851 - ctele_Posy), (144.878 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to The Boss Goes to Washington 2")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not TAUNT_PUSHED then
				--TELEPORT TO Saints HQ 3
				city_zone_swap("molp1_no", true)
				local tposx,tposy,tposz = (-2132.038 - ctele_Posx), (1122.156 - ctele_Posy), (8.570 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to The Boss Goes to Washington 3")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not TAUNT_PUSHED then

				--TELEPORT TO Saints HQ 4
				city_zone_swap("molp1_joe", true)
				local tposx,tposy,tposz = (-2114.362 - ctele_Posx), (1220.731 - ctele_Posy), (-5.99 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to The Boss Goes to Washington 4")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not TAUNT_PUSHED then
				--TELEPORT TO STILWATER
				city_zone_swap("m3", true)
				local tposx,tposy,tposz = (-725.875 - ctele_Posx), (2048.167 - ctele_Posy), (61.127 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Stilwater")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not TAUNT_PUSHED then
				--TELEPORT TO FROM ASHA WITH LOVE
				city_zone_swap("m11", true)
				local tposx,tposy,tposz = (357.622 - ctele_Posx), (-940.384 - ctele_Posy), (279.261 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to From Asha with Love")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not TAUNT_PUSHED then
				--TELEPORT TO GAT SIDESCROLLER
				city_zone_swap("2D", true)
				local tposx,tposy,tposz = (1245.076 - ctele_Posx), (2099.174 - ctele_Posy), (7.705 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to 2D Sidescroller")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not TAUNT_PUSHED then
				--TELEPORT TO GAT RESCUE
				city_zone_swap("m15_gat", true)
				local tposx,tposy,tposz = (2038.271 - ctele_Posx), (-2283.120 - ctele_Posy), (405.005 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gat rescue")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not TAUNT_PUSHED then
				--TELEPORT TO KINZIE GAMIT GENKI AREA TURRETS
				local tposx,tposy,tposz = (492.145 - ctele_Posx), (108.695 - ctele_Posy), (-313.874 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Kinzie Gambit - Genki area turrets")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				TAUNT_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_OFC_TAUNT_THREE") then -- C (compliment)
			if player_action_is_pressed(B_INSERT) and not COMPLIMENT_PUSHED then
				--TELEPORT TO KINZIE GAMBIT GENKI AREA KILLING FLOOR
				local tposx,tposy,tposz = (470.699 - ctele_Posx), (107.970 - ctele_Posy), (-313.979 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Kinzie Gambit - Genki area killing floor")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not COMPLIMENT_PUSHED then
				--TELEPORT TO ALL HANDS ON DECK
				city_zone_swap("m17", true)
				local tposx,tposy,tposz = (108.406 - ctele_Posx), (1096.709 - ctele_Posy), (-209.037 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to All Hands on Deck - Zin Ship")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not COMPLIMENT_PUSHED then
				--TELEPORT TO HE LIVES - OFFICE
				city_zone_swap("m18_tv", true)
				local tposx,tposy,tposz = (-25.826 - ctele_Posx), (-153.637 - ctele_Posy), (14.444 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to He Lives - Office")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not COMPLIMENT_PUSHED then
				--TELEPORT TO HE LIVES - NIGHTMARE
				city_zone_swap("m18_tv", true)
				local tposx,tposy,tposz = (825.227 - ctele_Posx), (-2552.652 - ctele_Posy), (26.037 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to He Lives - Nightmare")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_END) and not COMPLIMENT_PUSHED then
				--TELEPORT TO GRAND FINALE - KEY ESCORT
				city_zone_swap("m5", true)
				local tposx,tposy,tposz = (-2501.221 - ctele_Posx), (1559.409 - ctele_Posy), (618.120 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Grand Finale - Key Escort")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not COMPLIMENT_PUSHED then

				--TELEPORT TO GRAND FINALE - ARMORY
				city_zone_swap("m22_3_ship", true)
				city_zone_swap("m22_3_dive", true)
				local tposx,tposy,tposz = (0.939 - ctele_Posx), (-1578.150 - ctele_Posy), (799.945 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Grand Finale - Armory")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not COMPLIMENT_PUSHED then
				--TELEPORT TO GRAND FINALE - SHAFT
				city_zone_swap("m22_3_ship", true)
				city_zone_swap("m22_3_dive", true)
				local tposx,tposy,tposz = (-1568.2395 - ctele_Posx), (-2234.990 - ctele_Posy), (2512.079 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Grand Finale - Shaft")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not COMPLIMENT_PUSHED then

				--TELEPORT TO GRAND FINALE - THRONE ROOM
				city_zone_swap("arena", true)
				local tposx,tposy,tposz = (-2452.131 - ctele_Posx), (2401.561 - ctele_Posy), (22.626 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Grand Finale - Throne Room")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not COMPLIMENT_PUSHED then
				--TELEPORT TO GAT LOYALTY 1
				city_zone_swap("gat_loyalty", true)
				local tposx,tposy,tposz = (-78.600 - ctele_Posx), (2329.628 - ctele_Posy), (-299.193 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gat Loyalty - Genki SERC")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not COMPLIMENT_PUSHED then
				--TELEPORT TO GAT LOYALTY 2
				city_zone_swap("gat_loyalty", true)
				local tposx,tposy,tposz = (28.512 - ctele_Posx), (2215.292 - ctele_Posy), (-298.9195 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gat Loyalty - Apocalypse Genki")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not COMPLIMENT_PUSHED then
				--TELEPORT TO TRAINING AREA
				city_zone_swap("training", true)
				local tposx,tposy,tposz = (2232.040 - ctele_Posx), (-1424.475 - ctele_Posy), (144.102 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Training area")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not COMPLIMENT_PUSHED then
				--TELEPORT TO SUPER POWERED FIGHT CLUB
				city_zone_swap("spfc", true)
				city_zone_swap("layout01", true)
				local tposx,tposy,tposz = (1989.319 - ctele_Posx), (1157.757 - ctele_Posy), (61.024 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Super Powered Fight Club")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				COMPLIMENT_PUSHED = true
			end


		elseif player_action_is_pressed("CBA_OFC_MELEE_NUT_SHOT") then -- F (melee/horn)
			if player_action_is_pressed(B_INSERT) and not MELEE_PUSHED then
				--TELEPORT TO PLATFORMING RIFT
				city_zone_swap("leap_1", true)
				city_zone_swap("leap_2_swap", true)
				local tposx,tposy,tposz = (-2163.471 - ctele_Posx), (264.569 - ctele_Posy), (229.531 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Platforming Rift")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not MELEE_PUSHED then
				--TELEPORT TO SPEED RIFT
				city_zone_swap("sprint_1", true)
				city_zone_swap("sprint_2", true)
				city_zone_swap("sprint_3", true)
				--local tposx,tposy,tposz = (-1318.955 - ctele_Posx), (1990.500 - ctele_Posy), (489.005 - ctele_Posz)
				local tposx,tposy,tposz = (-1312.139 - ctele_Posx), (2146.673 - ctele_Posy), (488.989 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Speed Rift")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not MELEE_PUSHED then
				--TELEPORT TO TK RIFT
				city_zone_swap("tk_1_swap", true)
				city_zone_swap("tk_2", true)
				local tposx,tposy,tposz = (-139.698 - ctele_Posx), (2164.676 - ctele_Posy), (496.015 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to TK Rift")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not MELEE_PUSHED then
				--TELEPORT TO PENETRATOR CAVE
				reset_all_zones()
				local tposx,tposy,tposz = (1188.403 - ctele_Posx), (81.164 - ctele_Posy), (7.770 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Penetrator cave")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_END) and not MELEE_PUSHED then
				--TELEPORT TO SIGN TEXTURES
				local tposx,tposy,tposz = (-115.949 - ctele_Posx), (-148.183 - ctele_Posy), (-68.661 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to sign textures")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not MELEE_PUSHED then
				--TELEPORT TO SHIP
				reset_all_zones()
				local tposx,tposy,tposz = (104.3626 - ctele_Posx), (1074.9542 - ctele_Posy), (-201.839 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Crib Ship")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not MELEE_PUSHED then
				--TELEPORT TO GATEWAY CAMANO PLACE
				reset_all_zones()
				local tposx,tposy,tposz = (-1554.136 - ctele_Posx), (-869.053 - ctele_Posy), (8.332 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Camano Place")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not MELEE_PUSHED then
				--TELEPORT TO GATEWAY ESPINA
				reset_all_zones()
				local tposx,tposy,tposz = (-1217.657 - ctele_Posx), (102.067 - ctele_Posy), (21.222 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Espina")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not MELEE_PUSHED then
				--TELEPORT TO GATEWAY HENRY STEEL MILLS
				reset_all_zones()
				local tposx,tposy,tposz = (-303.231 - ctele_Posx), (-887.995 - ctele_Posy), (4.790 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Henry Steel Mills")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not MELEE_PUSHED then
				--TELEPORT TO GATEWAY LOREN SQUARE
				reset_all_zones()
				local tposx,tposy,tposz = (45.482 - ctele_Posx), (-42.570 - ctele_Posy), (11.900 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Loren Square")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not MELEE_PUSHED then
				--TELEPORT TO GATEWAY SUNSET PARK
				reset_all_zones()
				local tposx,tposy,tposz = (40.008 - ctele_Posx), (673.332 - ctele_Posy), (7.833 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Sunset Park")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not MELEE_PUSHED then
				--TELEPORT TO GATEWAY ASHWOOD
				reset_all_zones()
				local tposx,tposy,tposz = (949.493 - ctele_Posx), (-968.512 - ctele_Posy), (14.141 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Ashwood")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				MELEE_PUSHED = true
			end


		elseif player_action_is_pressed("CBA_GAC_GRENADE_SWITCH") then -- G (grenade change)
			if player_action_is_pressed(B_INSERT) and not GRENADE_PUSHED then
				--TELEPORT TO GATEWAY BRICKSTON
				reset_all_zones()
				local tposx,tposy,tposz = (1427.560 - ctele_Posx), (-158.404 - ctele_Posy), (24.921 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Brickston")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not GRENADE_PUSHED then
				--TELEPORT TO GATEWAY ARAPICE ISLAND
				reset_all_zones()
				local tposx,tposy,tposz = (952.741 - ctele_Posx), (-115.701 - ctele_Posy), (8.175 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Arapice Island")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not GRENADE_PUSHED then
				--TELEPORT TO GATEWAY YEARWOOD
				reset_all_zones()
				local tposx,tposy,tposz = (1498.986 - ctele_Posx), (590.451 - ctele_Posy), (40.213 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Yearwood")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not GRENADE_PUSHED then
				--TELEPORT TO GATEWAY BRIDGEPORT
				reset_all_zones()
				local tposx,tposy,tposz = (754.792 - ctele_Posx), (891.596 - ctele_Posy), (6.057 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Gateway - Bridgeport")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_END) and not GRENADE_PUSHED then
				--TELEPORT TO ETD 3COUNT CRIB INTERIOR
				city_zone_swap("dlc1_3s", true)
				city_zone_swap("dlc1_3c", true)
				city_zone_swap("dlc1_bdclub", false)
				city_zone_swap("dlc1_4p", false)
				local tposx,tposy,tposz = (1203.540 - ctele_Posx), (1450.141 - ctele_Posy), (228.156 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to EtD 3 Count Interior")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not GRENADE_PUSHED then
				--TELEPORT TO ETD FRONT OF 3 COUNT
				city_zone_swap("dlc1_3s", true)
				city_zone_swap("dlc1_3c", true)
				city_zone_swap("dlc1_bdclub", false)
				city_zone_swap("dlc1_4p", false)
				local tposx,tposy,tposz = (1200.829 - ctele_Posx), (1342.975 - ctele_Posy), (24.193 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to EtD Outside 3 Count")
				-- Found By Pliskin Hunter
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not GRENADE_PUSHED then
				--TELEPORT TO ETD INSIDE PAUL
				city_zone_swap("dlc1_4p", true)
				city_zone_swap("dlc1_3s", false)
				city_zone_swap("dlc1_3c", false)
				city_zone_swap("dlc1_bdclub", false)
				local tposx,tposy,tposz = (2460.130 - ctele_Posx), (-2150.197 - ctele_Posy), (499.316 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to EtD Inside Paul")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not GRENADE_PUSHED then
				--TELEPORT TO ETD DOMINATRIX CLUB
				city_zone_swap("dlc1_bdclub", true)
				city_zone_swap("dlc1_4p", false)
				city_zone_swap("dlc1_3s", false)
				city_zone_swap("dlc1_3c", false)
				local tposx,tposy,tposz = (1962.042 - ctele_Posx), (48.175 - ctele_Posy), (320.802 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to EtD Dominatrix Club")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not GRENADE_PUSHED then
				--TELEPORT TO DLC1
				city_zone_swap("dlc2_nps", false)
				city_zone_swap("dlc2_wpv", true)
				--delay(1.0)
				local tposx,tposy,tposz = (38.010 - ctele_Posx), (-2092.464 - ctele_Posy), (0.225 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Winter Pleasantville")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not GRENADE_PUSHED then
				--TELEPORT TO DLC2
				city_zone_swap("dlc2_wpv", false)
				city_zone_swap("dlc2_nps", true)
				--delay(1.0)
				local tposx,tposy,tposz = (-1495.037 - ctele_Posx), (-1780.043 - ctele_Posy), (686.521 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to North Pole")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not GRENADE_PUSHED then
				--TELEPORT TO DLC2 part 2
				city_zone_swap("dlc2_wpv", false)
				city_zone_swap("dlc2_nps", true)
				--delay(1.0)
				local tposx,tposy,tposz = (-1608.141 - ctele_Posx), (-2202.854 - ctele_Posy), (745.005 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Santa's Workshop")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not GRENADE_PUSHED then
				--TELEPORT TO DLC3
				city_zone_swap("dlc2_r", true)
				local tposx,tposy,tposz = (-251.028 - ctele_Posx), (-550.206 - ctele_Posy), (14.159 - ctele_Posz)
				teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				sandboxplus_message(" Teleported to Winter Steelport - Loren Square")
				if COOP_COMMANDS and coop_is_active() then
					teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
				end
				GRENADE_PUSHED = true
			end




		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_1") then -- 1 (weapon select 1)
			if player_action_is_pressed(B_INSERT) and not ONE_PUSHED then
				sandbox_cutscene("00_in")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not ONE_PUSHED then
				sandbox_cutscene("01_In")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not ONE_PUSHED then
				sandbox_cutscene("01_M_1")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not ONE_PUSHED then
				sandbox_cutscene("01_M_2")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_END) and not ONE_PUSHED then
				sandbox_cutscene("02_Out")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not ONE_PUSHED then
				sandbox_cutscene("03_M_3")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not ONE_PUSHED then
				sandbox_cutscene("03_Out")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not ONE_PUSHED then
				sandbox_cutscene("M05_bink")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not ONE_PUSHED then
				sandbox_cutscene("06_in")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not ONE_PUSHED then
				sandbox_cutscene("06_Out")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not ONE_PUSHED then
				sandbox_cutscene("M06_Matt_Flashback_bink")
				ONE_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not ONE_PUSHED then
				sandbox_cutscene("07_in")
				ONE_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_2") then -- 2 (weapon select 2)
			if player_action_is_pressed(B_INSERT) and not TWO_PUSHED then
				sandbox_cutscene("07_out")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not TWO_PUSHED then
				sandbox_cutscene("08_In")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not TWO_PUSHED then
				sandbox_cutscene("08_Out")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not TWO_PUSHED then
				sandbox_cutscene("09_in")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_END) and not TWO_PUSHED then
				sandbox_cutscene("09_out")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not TWO_PUSHED then
				sandbox_cutscene("M09_Pierce_Flashback_Bink")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not TWO_PUSHED then
				sandbox_cutscene("10_In")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not TWO_PUSHED then
				sandbox_cutscene("10_out")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not TWO_PUSHED then
				sandbox_cutscene("m10_ben_king_flashback")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not TWO_PUSHED then
				sandbox_cutscene("11_In")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not TWO_PUSHED then
				sandbox_cutscene("M11_Asha_Flashback_bink")
				TWO_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not TWO_PUSHED then
				sandbox_cutscene("15_In")
				TWO_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_3") then -- 3 (weapon select 3)
			if player_action_is_pressed(B_INSERT) and not THREE_PUSHED then
				sandbox_cutscene("15_m_2")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not THREE_PUSHED then
				sandbox_cutscene("15_out")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not THREE_PUSHED then
				sandbox_cutscene("m15_gat_flashback_bink")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not THREE_PUSHED then
				sandbox_cutscene("16_In")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_END) and not THREE_PUSHED then
				sandbox_cutscene("17_In")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not THREE_PUSHED then
				sandbox_cutscene("17_Out")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not THREE_PUSHED then
				sandbox_cutscene("18_In")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not THREE_PUSHED then
				sandbox_cutscene("18_m_1")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not THREE_PUSHED then
				sandbox_cutscene("18_out")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not THREE_PUSHED then
				sandbox_cutscene("19_out")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not THREE_PUSHED then
				sandbox_cutscene("m20_bink")
				THREE_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not THREE_PUSHED then
				sandbox_cutscene("m21_bink")
				THREE_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_4") then -- 4 (weapon select 4)
			if player_action_is_pressed(B_INSERT) and not FOUR_PUSHED then
				sandbox_cutscene("22_M_1")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not FOUR_PUSHED then
				sandbox_cutscene("M22_bink")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not FOUR_PUSHED then
				sandbox_cutscene("22_M_2")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not FOUR_PUSHED then
				sandbox_cutscene("23_In")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_END) and not FOUR_PUSHED then
				sandbox_cutscene("ending2_loyal")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not FOUR_PUSHED then
				sandbox_cutscene("MOL_BK01_bink")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not FOUR_PUSHED then
				sandbox_cutscene("mol_jb01_bink")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not FOUR_PUSHED then
				sandbox_cutscene("mol_jg01_bink")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not FOUR_PUSHED then
				sandbox_cutscene("MOL_KZ01_bink")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not FOUR_PUSHED then
				sandbox_cutscene("mol_mm01_bink")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not FOUR_PUSHED then
				sandbox_cutscene("mol_p01_bink")
				FOUR_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not FOUR_PUSHED then
				sandbox_cutscene("mol_sh01_bink")
				FOUR_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_5") then -- 5 (weapon select 5)
			if player_action_is_pressed(B_INSERT) and not FIVE_PUSHED then
				sandbox_cutscene("MM01_02_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not FIVE_PUSHED then
				sandbox_cutscene("MM01_03_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not FIVE_PUSHED then
				sandbox_cutscene("MM02_01_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not FIVE_PUSHED then
				sandbox_cutscene("R_LEAP01_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_END) and not FIVE_PUSHED then
				sandbox_cutscene("R_SPEED01_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not FIVE_PUSHED then
				sandbox_cutscene("R_TK01_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not FIVE_PUSHED then
				sandbox_cutscene("genki_tk")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not FIVE_PUSHED then
				sandbox_cutscene("TB_NW01_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not FIVE_PUSHED then
				sandbox_cutscene("MM04_01_spfc_bink")
				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not FIVE_PUSHED then

				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not FIVE_PUSHED then

				FIVE_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not FIVE_PUSHED then

				FIVE_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_6") then -- 6 (weapon select 6)
			if player_action_is_pressed(B_INSERT) and not SIX_PUSHED then
				--sandbox_replay("m00")
				mission_start("m00", true)
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not SIX_PUSHED then
				sandbox_replay("m01")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not SIX_PUSHED then
				sandbox_replay("m02")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not SIX_PUSHED then
				sandbox_replay("m03")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_END) and not SIX_PUSHED then
				sandbox_replay("m04")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not SIX_PUSHED then
				sandbox_replay("m05")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not SIX_PUSHED then
				sandbox_replay("m06")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not SIX_PUSHED then
				sandbox_replay("m07")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not SIX_PUSHED then
				sandbox_replay("m08")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not SIX_PUSHED then
				sandbox_replay("m09")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not SIX_PUSHED then
				sandbox_replay("m10")
				SIX_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not SIX_PUSHED then
				sandbox_replay("m11")
				SIX_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_7") then -- 7 (weapon select 7)
			if player_action_is_pressed(B_INSERT) and not SEVEN_PUSHED then
				sandbox_replay("m14")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not SEVEN_PUSHED then
				sandbox_replay("m15")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not SEVEN_PUSHED then
				sandbox_replay("m16")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not SEVEN_PUSHED then
				sandbox_replay("m17")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_END) and not SEVEN_PUSHED then
				sandbox_replay("m18")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not SEVEN_PUSHED then
				sandbox_replay("m19")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not SEVEN_PUSHED then
				sandbox_replay("m20")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not SEVEN_PUSHED then
				sandbox_replay("m21")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not SEVEN_PUSHED then
				sandbox_replay("m22")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not SEVEN_PUSHED then
				sandbox_replay("MOL_BK_01")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_LBRACKET) and not SEVEN_PUSHED then
				sandbox_replay("MOL_JG_01")
				SEVEN_PUSHED = true
			elseif player_action_is_pressed(B_RBRACKET) and not SEVEN_PUSHED then
				sandbox_replay("MOL_KZ01")
				SEVEN_PUSHED = true
			end

		elseif player_action_is_pressed("CBA_GAC_WEAPON_SELECT_8") then -- 8 (weapon select 8)
			if player_action_is_pressed(B_INSERT) and not EIGHT_PUSHED then
				reset_all_zones()
				sandboxplus_message(" Virtual Steelport default zones restored")
				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_HOME) and not EIGHT_PUSHED then
				if coop_is_active() then
					if not COOP_COMMANDS then
						sandboxplus_message(" Special Commands now affect both host and remote player")
					else
						sandboxplus_message(" Special Commands now only affect the host")
					end
					COOP_COMMANDS = not COOP_COMMANDS
				else
					sandboxplus_message(" Toggle special commands for remote player FAILED")
				end
				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_PGUP) and not EIGHT_PUSHED then
				if HUD_NORMAL then
					--Hide all HUD elements
					Openworld_hud_state.hide_everything = hud_display_create_state()
					hud_display_set_element(Openworld_hud_state.hide_everything, HUD_ALL_ELEM, HUD_FADE_HIDDEN)
					hud_display_commit_state(Openworld_hud_state.hide_everything)
				else
					-- Restore the HUD
					for i, hud_state in pairs(Openworld_hud_state) do
						if (hud_state ~= -1) then
							hud_display_remove_state(hud_state)
							hud_state = -1
						end
					end
					sandboxplus_message(" HUD Restored")
				end
				HUD_NORMAL = not HUD_NORMAL
				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_DELETE) and not EIGHT_PUSHED then
				-- SHOW PLAYER POSITION
				local posx,posz,posy = get_object_pos(LOCAL_PLAYER)
				sandboxplus_message("Player Pos:".."\n".."X: "..posx .."\n".."Y: "..posy.."\n".."Z: "..posz.."\n")
				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_END) and not EIGHT_PUSHED then

				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_PGDWN) and not EIGHT_PUSHED then

				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_RIGHT) and not EIGHT_PUSHED then
				--[[slew_mode(true)
				player_change_preset(LOCAL_PLAYER, "GenkiGood")
				sandboxplus_message(" NPC morph - GenkiGood")]]
				reset_all_zones()
				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_LEFT) and not EIGHT_PUSHED then
				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_DOWN) and not EIGHT_PUSHED then
				EIGHT_PUSHED = true
			elseif player_action_is_pressed(B_UP) and not EIGHT_PUSHED then
				EIGHT_PUSHED = true
		    -- Change la cat�gorie de preset avec 8 + [
			elseif player_action_is_pressed(B_LBRACKET) and not EIGHT_PUSHED then
				apply_current_tod()
				EIGHT_PUSHED = true
			-- Applique le ToD suivant avec 8 + ]
			elseif player_action_is_pressed(B_RBRACKET) and not EIGHT_PUSHED then
				switch_preset()
				EIGHT_PUSHED = true
			end


		end
		if not player_action_is_pressed("CBA_GAC_RECRUIT_DISMISS") then
			RECRUIT_PUSHED = false
		end
		if not player_action_is_pressed("CBA_OFC_TAUNT_TWO") then
			TAUNT_PUSHED = false
		end
		if not player_action_is_pressed("CBA_OFC_TAUNT_THREE") then
			COMPLIMENT_PUSHED = false
		end
		if not player_action_is_pressed("CBA_OFC_CROUCH") then
			CROUCH_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_ACTION") then
			USE_PUSHED = false
		end
		if not player_action_is_pressed("CBA_OFC_PICKUP_RELOAD") then
			RELOAD_PUSHED = false
		end
		if not player_action_is_pressed("CBA_OFC_MELEE_NUT_SHOT") then
			MELEE_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_GRENADE_SWITCH") then
			GRENADE_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_1") then
			ONE_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_2") then
			TWO_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_3") then
			THREE_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_4") then
			FOUR_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_5") then
			FIVE_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_6") then
			SIX_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_7") then
			SEVEN_PUSHED = false
		end
		if not player_action_is_pressed("CBA_GAC_WEAPON_SELECT_8") then
			EIGHT_PUSHED = false
		end
		if not player_action_is_pressed("CBA_OFC_ZOOM_IN") then
			ZOOM_IN_PUSHED = false
		end 
		if not player_action_is_pressed("CBA_OFC_ZOOM_OUT") then
			ZOOM_OUT_PUSHED = false
		end 
	delay(0.05)
	end
end

function sandboxplus_message(hud_text_msg)
	--message_remove_all()
	mission_help_table(hud_text_msg, LOCAL_PLAYER)
end

function get_fucking_high_bitches(scalar)
	drug_effect_set_override_values(scalar, scalar)
	if (scalar == 1.0) then
		refraction_situation_set("drug strong")
		--audio_object_post_event("sh02_drug_pitch", nil, nil, LOCAL_PLAYER)
	elseif (scalar == 0.75) then
		refraction_situation_set("drug weak")
	elseif (scalar == 0.5) then
		refraction_situation_set("drug weakest")
		--audio_object_post_event("sh02_drug_pitch_50", nil, nil, LOCAL_PLAYER)
	elseif (scalar == 0.25) then
		--audio_object_post_event("sh02_drug_pitch_50", nil, nil, LOCAL_PLAYER)
		--set_animation_state(LOCAL_PLAYER, "lms player drug smoke")
	else
		drug_effect_clear_override_values()
		refraction_situation_clear()
		--audio_object_post_event("sh02_drug_pitch_normal", nil, nil, LOCAL_PLAYER)
	end
end

function sandbox_cutscene(cutscene)
	cutscene_play(cutscene)
	--TELEPORT TO GATEWAY SUNSET PARK
	local tposx,tposy,tposz = (40.008 - ctele_Posx), (673.332 - ctele_Posy), (7.833 - ctele_Posz)
	teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
	if COOP_COMMANDS and coop_is_active() then
		teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
	end
end

function sandbox_replay(mission)
	mission_start(mission, true)
	--[[local tposx,tposy,tposz = (-1554.136 - ctele_Posx), (-869.053 - ctele_Posy), (8.332 - ctele_Posz)
	teleport_to_object(LOCAL_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
	if COOP_COMMANDS and coop_is_active() then
		teleport_to_object(REMOTE_PLAYER, "nw_qm_nav", false, false, tposx , tposz, tposy , false)
	end]]
end


function set_animation_for_gender(player)
	if character_get_gender(player) == GENDER_TYPE_MALE then
		set_animation_set(player, "PLYM")
	else
		set_animation_set(player, "PLYF")
	end
end

function reset_all_zones()
				-- RESTORE VIRTUAL STEELPORT DEFAULT ZONES
				city_zone_swap("M_00", false)
				city_zone_swap("wh", false)
				city_zone_swap("pv", false)
				city_zone_swap("m11", false)
				city_zone_swap("m3", false)
				city_zone_swap("molp1_no", false)
				city_zone_swap("molp1_joe", false)
				city_zone_swap("2D", false)
				city_zone_swap("training", false)
				city_zone_swap("m3_escape", false)
				city_zone_swap("m3_fox", false)
				city_zone_swap("m7_matt", false)
				city_zone_swap("m3", false)
				city_zone_swap("int_m2", false)
				city_zone_swap("sprint_1", false)
				city_zone_swap("sprint_2", false)
				city_zone_swap("sprint_3", false)
				city_zone_swap("tk_1_swap", false)
				city_zone_swap("tk_2", false)
				city_zone_swap("spfc", false)
				city_zone_swap("m15_gat", false)
				city_zone_swap("gat_loyalty", false)
				city_zone_swap("m17", false)
				city_zone_swap("m18_tv", false)
				city_zone_swap("m5", false)
				city_zone_swap("m22_3_ship", false)
				city_zone_swap("m22_3_dive", false)
				city_zone_swap("arena", false)
				city_zone_swap("leap_1", false)
				city_zone_swap("leap_2_swap", false)
				city_zone_swap("vr", false)
				city_zone_swap("dlc1_3s", false)
				city_zone_swap("dlc1_3c", false)
				city_zone_swap("dlc1_bdclub", false)
				city_zone_swap("dlc1_4p", false)
				city_zone_swap("dlc2_wpv", false)
				city_zone_swap("dlc2_nps", false)
				city_zone_swap("dlc2_r", false)
end


-- Vanilla vars

-- Gameplay Choice IDs -
-- these should match values from level_scripts.cpp
MISSION_06_CHOICE = 0
MISSION_22_CHOICE = 1
MISSION_21_CHOICE = 2

M06_CHOICE_BLOWN_TOWER = true;
M06_CHOICE_BRANDED_TOWER = false;
M22_CHOICE_KILLBANE_KILL = true;
M22_CHOICE_KILLBANE_ESCAPE = false;
M21_CHOICE_KILLBANE_UNMASKED = true;
M21_CHOICE_KILLBANE_NOT_UNMASKED = false;

QOC_ASHA				= 0
QOC_BEN_KING		= 1
QOC_CID				= 2
QOC_JOHNNY_GAT		= 3
QOC_KINZIE			= 4
QOC_MATT_MILLER	= 5
QOC_PIERCE			= 6
QOC_VP				= 7
QOC_SHAUNDI			= 8
QOC_SR2_SHAUNDI	= 9

SR3_CITY_CONTACTS = {
	{ type = QOC_ASHA,			npc = "Asha_01",			trigger = "asha_trigger"			},
	{ type = QOC_BEN_KING,		npc = "Ben_King_01",		trigger = "ben_king_trigger"		},
	{ type = QOC_CID,				npc = "CID_01",			trigger = "cid_trigger"				},
	{ type = QOC_JOHNNY_GAT,	npc = "Johnny_Gat_01",	trigger = "johnny_gat_trigger"	},
	{ type = QOC_KINZIE,			npc = "Kinzie_01",		trigger = "kinzie_trigger"			},
	{ type = QOC_MATT_MILLER,	npc = "Matt_Miller_01",	trigger = "matt_miller_trigger"	},
	{ type = QOC_PIERCE,			npc = "Pierce_01",		trigger = "pierce_trigger"			},
	{ type = QOC_SHAUNDI,		npc = "Shaundi_01",		trigger = "shaundi_trigger"		},
	{ type = QOC_VP,				npc = "VP_01",				trigger = "vp_trigger"				},
	{ type = QOC_SR2_SHAUNDI,	trigger = "shaduni_sr2_trigger" },
}

-- **************************************************************


function sr3_city_init()
	group_create( "sr3_weapons", false)
	quest_log_configure_contact_triggers( SR3_CITY_CONTACTS )
end

function corpse_reset_thread()
-- 	while CORPSERESET_THREAD_ON == 1 do
--     if QUICK_CLEANUP then
--       npc_max_corpses_reset()
--     end
--     thread_sleep(5000)
--   end
end


function sr3_city_main()
	reset_all_zones()
	Keycombo_Handle = thread_new("keycombo_thread")
	--CorpseReset_Handle = thread_new("corpse_reset_thread")
	--tutorial_suspend_all()
end

-- ************************************************

function sr3_city_init_client()
	quest_log_configure_contact_triggers( SR3_CITY_CONTACTS )
end

function sr3_city_main_client()
end

function mm_1_2_coop_skip( from_gamesave )
	player_unlock_super_power(6) -- Jump
	player_unlock_super_power(5) -- Sprint
end

function mm_1_3_coop_skip( from_gamesave )
	player_unlock_super_power(3) -- Blast
	unlockable_unlock("ragdoll_recovery") -- Air Recovery
end

function m05_coop_skip( from_gamesave )
	player_unlock_super_power(0) -- Telekinesis
end

function mm_4_1_coop_skip( from_gamesave )
	player_unlock_super_power(1) -- Stomp
end

function m14_coop_skip( from_gamesave )
	player_unlock_super_power(2) -- Buff
end

function m15_3_coop_skip( from_gamesave )
	player_unlock_super_power(4) -- Shield
	player_unlock_super_power(7) -- DFA
end

function mm_1_3_setup()

	-- NZ: Reset hotspot in case player abandons mission
	hotspot_reset("Hotspot_NW")

end


--===========================GLOBALS====================================
-- tables of 'line played' flags for each homie dialogue line
--======================================================================
SR3_CITY_globals = {

		-- the max number of times you'll get a modal dialogue scene with someone within the same ship visit
		num_talks_allowed = 3,

		
		--ship dialogue flags; table of flags for each line situation
		said_asha_line = {
						benking = false,
						cid = false,
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_cid_line = {
						asha = false,
						benking = false,
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_johnny_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = true,
		},		
		said_king_line = {
						asha = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_kinzie_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = true,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},		
		said_matt_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = true,
						gat = false,
		},		
		said_pierce_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						shaundi = false,
						matt = false,
						gat = false,
		},		
		said_shaundi_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						matt = false,
						gat = false,
		},
		said_shaundi_sr2_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_vp_line = {
						asha = false,
						benking = false,
						cid = false,						
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_earth_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},		
		said_key_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_kinzie_kidnapped_line = {
						asha = false,
						benking = false,
						cid = false,						
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_kinzie_rescued_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_loyalty_complete_line = {
						asha = false,
						benking = false,
						keithdavid = false,
						kinzie = false,
						matt = false,
						pierce = false,
						shaundi = false,
						cid = true,
						gat = true,
		},
		said_mech_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_ship_name_line = {
						asha = false,
						benking = false,
						cid = false,						
						keithdavid = false,
						kinzie = false,
						pierce = false,
						shaundi = false,
						matt = false,
						gat = false,
		},
		said_working_on_mech_line = {
						kinzie = false,
						asha = true,
						benking = true,
						cid = true,						
						keithdavid = true,
						pierce = true,
						shaundi = true,
						matt = true,
						gat = false,
		},
	}


SR3_CITY_CRIBSHIP_num_talks = {

	-- number of times you talked to an NPC (in a modal sequence) on a given ship visit
	num_benking_talks = 0,
	num_cid_talks = 0,
	num_keithdavid_talks = 0,
	num_kinzie_talks = 0,
	num_pierce_talks = 0,
	num_shaundi_talks = 0,
	num_matt_talks = 0,
	num_gat_talks = 0,
	num_asha_talks = 0,
	
}

SR3_CITY_CRIBSHIP_sex_flags = {
		
	-- sex flags
	flag_benking_sex = false,
	flag_cid_sex = false,
	flag_keithdavid_sex = false,
	flag_kinzie_sex = false,
	flag_pierce_sex = false,
	flag_shaundi_sex = false,
	flag_matt_sex = false,
	flag_gat_sex = false,
	flag_asha_sex = false,

}
	
--===========================TRIGGERS===================================
--
--======================================================================
SR3_CITY_trigger = {
		--<trigger_name> = {
		--           name = "johnnygat_con_trig_lean",
		--           hit = false,
		--  (optional)callback = "sr3_city_function_name_cb"
		--(optional)marker = TRIGGER_LOCATION or TRIGGER_USE or custom or don't include for no marker
		--  (optional)waypoint = true,
		--  (optional)teleport_to = {
		--             host = "host_nav",
		--             client = "client_nav" 
		--},                          
		--(optional)conversation = M_RAIL_convo.convo_name  -- play a conversation
		--},
						
	talk_to_gat_lean = {
					name = "johnnygat_con_trig_lean",
					hit = false,
					callback = "sr3_city_talk_to_gat",
	},
	talk_to_gat_crates = {
					name = "johnnygat_con_trig_crates",
					hit = false,
					callback = "sr3_city_talk_to_gat",
	},	
	talk_to_gat_chair = {
					name = "johnnygat_con_trig_purplechair",
					hit = false,
					callback = "sr3_city_talk_to_gat",
	},
	talk_to_shaundi_stand = {
					name = "shaundi_con_trig_stand",
					hit = false,
					callback = "sr3_city_talk_to_shaundi",
	},
	talk_to_shaundi_catwalk = {
					name = "shaundi_con_trig_catwalk",
					hit = false,
					callback = "sr3_city_talk_to_shaundi",
	},
	talk_to_shaundi_ctrl = {
					name = "shaundi_con_trig_controlroom",
					hit = false,
					callback = "sr3_city_talk_to_shaundi",
	},
	talk_to_shaundi_sit = {
					name = "shaundi_con_trig_sit",
					hit = false,
					callback = "sr3_city_talk_to_shaundi",
	},	
	talk_to_kinzie_bag = {
					name = "kinzie_con_trig_beanbag",
					hit = false,
					callback = "sr3_city_talk_to_kinzie",
	},
	talk_to_kinzie_control = {
					name = "kinzie_con_trig_controlroom",
					hit = false,
					callback = "sr3_city_talk_to_kinzie",
	},	
	talk_to_kinzie_mech = {
					name = "kinzie_con_trig_mech",
					hit = false,
					callback = "sr3_city_talk_to_kinzie",
	},	
	talk_to_asha_bag = {
					name = "asha_con_trig_gymbag",
					hit = false,
					callback = "sr3_city_talk_to_asha",
	},
	talk_to_asha_bench = {
					name = "asha_con_trig_benchpress",
					hit = false,
					callback = "sr3_city_talk_to_asha",
	},	
	talk_to_asha_stretch = {
					name = "asha_con_trig_stretching",
					hit = false,
					callback = "sr3_city_talk_to_asha",
	},	
	talk_to_ben_lean = {
					name = "benking_con_trig_lean",
					hit = false,
					callback = "sr3_city_talk_to_benking",
	},
	talk_to_ben_chair = {
					name = "benking_con_trig_chair",
					hit = false,
					callback = "sr3_city_talk_to_benking",
	},
	talk_to_ben_toilet = {
					name = "benking_con_trig_toilet",
					hit = false,
					callback = "sr3_city_talk_to_benking",
	},	
	talk_to_cid = {
					name = "cid_con_trig_sexroom",
					hit = false,
					callback = "sr3_city_talk_to_cid",
	},
	talk_to_matt_couch = {
					name = "mattmiller_con_trig_couch",
					hit = false,
					callback = "sr3_city_talk_to_matt",
	},
	talk_to_matt_tv = {
					name = "mattmiller_con_trig_tv",
					hit = false,
					callback = "sr3_city_talk_to_matt",
	},
	talk_to_matt_crates = {
					name = "mattmiller_con_trig_crates",
					hit = false,
					callback = "sr3_city_talk_to_matt",
	},
	talk_to_matt_dep = {
					name = "mattmiller_con_trig_depressed",
					hit = false,
					callback = "sr3_city_talk_to_matt",
	},	
	talk_to_pierce = {
					name = "pierce_con_trig_couch",
					hit = false,
					callback = "sr3_city_talk_to_pierce",
	},
	talk_to_pierce_egg = {
					name = "pierce_con_trig_eggchair",
					hit = false,
					callback = "sr3_city_talk_to_pierce",
	},	
	talk_to_pierce_pool = {
					name = "pierce_con_trig_pooltable",
					hit = false,
					callback = "sr3_city_talk_to_pierce",
	},	
	talk_to_vp_vport = {
					name = "vp_con_trig_stand",
					hit = false,
					callback = "sr3_city_talk_to_vp",
	},
	talk_to_vp_cat = {
					name = "vp_con_trig_catwalk",
					hit = false,
					callback = "sr3_city_talk_to_vp",
	},
	talk_to_vp_chair = {
					name = "vp_con_trig_chair",
					hit = false,
					callback = "sr3_city_talk_to_vp",
	},	
	
	--sex triggers
	asha_sex = {
					name = "asha_sex_trigger",
					hit = false,
					callback = "sr3_city_asha_sex",
	},
	ben_king_sex = {
					name = "ben_king_sex_trigger",
					hit = false,
					callback = "sr3_city_benking_sex",
	},
	cid_sex = {
					name = "cid_sex_trigger",
					hit = false,
					callback = "sr3_city_cid_sex",
	},
	gat_sex = {
					name = "johnny_gat_sex_trigger",
					hit = false,
					callback = "sr3_city_gat_sex",
	},
	kinzie_sex = {
					name = "kinzie_sex_trigger",
					hit = false,
					callback = "sr3_city_kinzie_sex",
	},
	matt_sex = {
					name = "matt_miller_sex_trigger",
					hit = false,
					callback = "sr3_city_matt_sex",
	},
	pierce_sex = {
					name = "pierce_sex_trigger",
					hit = false,
					callback = "sr3_city_pierce_sex",
	},
	shaundi_sex = {
					name = "shaundi_sex_trigger",
					hit = false,
					callback = "sr3_city_shaundi_sex",
	},	
	vp_sex = {
					name = "vp_sex_trigger",
					hit = false,
					callback = "sr3_city_vp_sex",
	},
	
--[[	hack_cargo = {
					name = "hack_sim1_trig",
					hit = false,
					use_nav = "hack_sim1_nav",
					use_anim = "m24 computer hack",					
					callback = "sr3_city_do_hack",
	},	
]]	
	-- txt adventure computer
	start_txt_adventure = {
					name = "Text_Adventure_Trigger",
					hit = false,
					use_nav = "txt_adventure_nav",
					use_anim = "m24 computer hack",
					callback = "ship_start_text_adventure_cb",
					--conversation = SR3_CITY_convo.Matt_Talk_01
	},
}



SR3_CITY_ship_action_nodes = {

	asha = {
					{
						-- bag lean
						name = "asha_baglean", -- "asha_baglean"
						talk_trig = "asha_con_trig_gymbag",
						sex_trig = "asha_sex_trigger",
						contact_trig = "asha_trigger",
						sex_nav = "asha_sex_nav",
					},	
					{
						-- bench press
						name = "asha_benchsit", -- "asha_benchsit" "asha_bench_shp"
						talk_trig = "asha_con_trig_benchpress", -- "asha_con_trig_benchpress"
						sex_trig = "asha_sex_trigger",
						contact_trig = "asha_trigger",
						sex_nav = "asha_sex_nav",
					},	
					{
						-- on floor stretching
						name = "asha_shp_stretch", -- "asha_shp_stretch" "asha_stretch_ship" "Situps_Asha"
						talk_trig = "asha_con_trig_stretching", -- "asha_con_trig_stretching"
						sex_trig = "asha_sex_trigger",
						contact_trig = "asha_trigger",
						sex_nav = "asha_sex_nav",
					},
	},
	benking = {
					{
						-- leaning on table
						name = "King_leaning", -- "King_leaning"
						talk_trig = "benking_con_trig_lean",
						sex_trig = "ben_king_sex_trigger",
						contact_trig = "ben_king_trigger",
						sex_nav = "ben_king_sex_nav",
					},	
					{
						-- sitting in purple chair
						name = "King_ship_pchair", -- "King_ship_pchair"
						talk_trig = "benking_con_trig_chair",
						sex_trig = "ben_king_sex_trigger",
						contact_trig = "ben_king_trigger",
						sex_nav = "ben_king_sex_nav",
					},	
					{
						-- space toilet
						name = "pierce_shp_toilet", -- "pierce_shp_toilet"
						talk_trig = "benking_con_trig_toilet",
						sex_trig = "ben_king_sex_trigger",
						contact_trig = "ben_king_trigger",
						sex_nav = "benking_sex_nav_toilet",
					},
	},
	cid = {
					{
						-- sex room
						name = "Ship_Cid_Float",
						talk_trig = "cid_con_trig_sexroom",
						sex_trig = "cid_sex_trigger",
						contact_trig = "cid_trigger",
						sex_nav = "cid_sex_nav",
					},
	},
	gat = {
					{
						-- leaning on locker w/knife
						name = "Ship_Gat_Locker", -- "Ship_Gat_Locker"
						talk_trig = "johnnygat_con_trig_lean", -- "johnnygat_con_trig_lean"
						sex_trig = "johnny_gat_sex_trigger",
						contact_trig = "johnny_gat_trigger",
						sex_nav = "johnny_gat_sex_nav",
					},	
					{
						-- sitting on crate cleaning gun
						name = "gat ship gunclean", -- "gat ship gunclean"
						talk_trig = "johnnygat_con_trig_crates", -- johnnygat_con_trig_crates
						sex_trig = "johnny_gat_sex_trigger",
						contact_trig = "johnny_gat_trigger",
						sex_nav = "johnny_gat_sex_nav",
					},	
					{
						-- sitting in purple chair
						name = "Ship_Gat_sit", -- "Ship_Gat_sit"
						talk_trig = "johnnygat_con_trig_purplechair", -- johnnygat_con_trig_purplechair
						sex_trig = "johnny_gat_sex_trigger",
						contact_trig = "johnny_gat_trigger",
						sex_nav = "johnny_gat_sex_nav",
					},
	},	
	kinzie = {
					{
						-- working on mech
						name = "shp_kinz_mchbox", -- "shp_kinz_mchbox" 
						talk_trig = "kinzie_con_trig_mech", -- "kinzie_con_trig_mech",
						sex_trig = "kinzie_sex_trigger",
						contact_trig = "kinzie_trigger",
						sex_nav = "kinzie_sex_nav_mech", -- "kinzie_sex_nav_mech",
					},	
					{
						-- nemo chair
						name = "kinzie_nemo", -- "kinzie_nemo"
						talk_trig = nil,
						sex_trig = nil,
						contact_trig = nil,
						sex_nav = nil,
					},	
					{
						-- control room
						name = "Kinz_shp_computer", -- "Kinz_shp_computer"
						talk_trig = "kinzie_con_trig_controlroom", -- "kinzie_con_trig_controlroom"
						sex_trig = "kinzie_sex_trigger",
						contact_trig = "kinzie_trigger",
						sex_nav = "kinzie_sex_nav_controlroom", -- "kinzie_sex_nav_controlroom"
					},					
					{
						-- typing in beanbag chair
						name = "kinzie_typing", -- "kinzie_typing"
						talk_trig = "kinzie_con_trig_beanbag", -- "kinzie_con_trig_beanbag",
						sex_trig = "kinzie_sex_trigger",
						contact_trig = "kinzie_trigger",
						sex_nav = "kinzie_sex_nav", -- "kinzie_sex_nav"
					},
					{
						-- tube
						name = "shp_kinzie_tiptoe", -- "shp_kinzie_tiptoe"
						talk_trig = "kinzie_con_trig_beanbag", -- "kinzie_con_trig_beanbag",
						sex_trig = "kinzie_sex_trigger",
						contact_trig = "kinzie_trigger",
						sex_nav = "kinzie_sex_nav", -- "kinzie_sex_nav"
					},
	},
	matt = {
					{
						-- depressed sitting at computer
						name = "shp_matt_computer", -- "shp_matt_computer"
						talk_trig = "mattmiller_con_trig_depressed", -- "mattmiller_con_trig_depressed",
						sex_trig = "matt_miller_sex_trigger",
						contact_trig = "matt_miller_trigger",
						sex_nav = "mattmiller_sex_nav_depressed", -- "mattmiller_sex_nav_depressed",
					},	
					{
						-- couch w/game
						name = "Matt_ship_couch", -- "Matt_ship_couch"
						talk_trig = "mattmiller_con_trig_couch", -- mattmiller_con_trig_couch
						sex_trig = "matt_miller_sex_trigger",
						contact_trig = "matt_miller_trigger",
						sex_nav = "matt_miller_sex_nav", -- matt_miller_sex_nav
					},	
					{
						-- standing at tv
						name = "Matt_tv", --"Matt_tv"
						talk_trig = "mattmiller_con_trig_tv", -- "mattmiller_con_trig_tv"
						sex_trig = "matt_miller_sex_trigger",
						contact_trig = "matt_miller_trigger",
						sex_nav = "matt_miller_sex_nav", -- matt_miller_sex_nav
					},	
					{
						-- sitting on crates fixing electronics
						name = "Matt_shp_crates", --"Matt_shp_crates"
						talk_trig = "mattmiller_con_trig_crates", -- mattmiller_con_trig_crates
						sex_trig = "matt_miller_sex_trigger",
						contact_trig = "matt_miller_trigger",
						sex_nav = "mattmiller_sex_nav_crates", -- mattmiller_sex_nav_crates
					},
	},	
	pierce = {
					{
						-- laying on couch
						name = "Pierce_couch", -- "Pierce_couch"
						talk_trig = "pierce_con_trig_couch", -- pierce_con_trig_couch
						sex_trig = "pierce_sex_trigger",
						contact_trig = "pierce_trigger",
						sex_nav = "pierce_sex_nav",
					},	
					{
						-- pool table
						name = "Pirc_ship_pltable", -- "Pirc_ship_pltable"
						talk_trig = "pierce_con_trig_pooltable", -- pierce_con_trig_pooltable
						sex_trig = "pierce_sex_trigger",
						contact_trig = "pierce_trigger",
						sex_nav = "pierce_sex_nav",
					},	
					{
						-- egg chair
						name = "Peirce_reading", -- "Peirce_reading"
						talk_trig = "pierce_con_trig_eggchair", -- pierce_con_trig_eggchair
						sex_trig = "pierce_sex_trigger",
						contact_trig = "pierce_trigger",
						sex_nav = "pierce_sex_nav",
					},
	},	
	shaundi = {
					{
						-- control room
						name = "Shp_shndi_pTble", -- "Shp_shndi_pTble"
						talk_trig = "shaundi_con_trig_controlroom", -- "shaundi_con_trig_controlroom",
						sex_trig = "shaundi_sex_trigger",
						contact_trig = "shaundi_trigger",
						sex_nav = "shaundi_sex_nav_controlroom", -- "shaundi_sex_nav_controlroom",
					},	
					{
						-- depressed sitting on catwalk
						name = "Shndi_railsit", -- "Shndi_railsit"
						talk_trig = "shaundi_con_trig_catwalk", -- "shaundi_con_trig_catwalk",
						sex_trig = "shaundi_sex_trigger",
						contact_trig = "shaundi_trigger",
						sex_nav = "shaundi_sex_nav_catwalk", -- "shaundi_sex_nav_catwalk",
					},	
					{
						-- standing on bridge
						name = "shaundi_shp_stnd", -- "shaundi_shp_stnd"
						talk_trig = "shaundi_con_trig_stand", -- shaundi_con_trig_stand
						sex_trig = "shaundi_sex_trigger",
						contact_trig = "shaundi_trigger",
						sex_nav = "shaundi_sex_nav",
					},
					{
						-- in/near chair on bridge
						name = "Shandi_bridge_sit", -- "Shandi_bridge_sit"
						talk_trig = "shaundi_con_trig_sit", -- shaundi_con_trig_sit
						sex_trig = "shaundi_sex_trigger",
						contact_trig = "shaundi_trigger",
						sex_nav = "shaundi_sex_nav",
					},
	},		
	vp = {
					{
						-- standing on catwalk
						name = "kiethD_shp_catwlk", -- "kiethD_shp_catwlk"
						talk_trig = "vp_con_trig_catwalk", -- "vp_con_trig_catwalk"
						sex_trig = "vp_sex_trigger",
						contact_trig = "vp_trigger",
						sex_nav = nil,
					},	
					{
						-- sitting in chair on bridge
						name = "Keith_cmpter_shp", -- "Keith_cmpter_shp"
						talk_trig = "vp_con_trig_chair", -- vp_con_trig_chair
						sex_trig = "vp_sex_trigger",
						contact_trig = "vp_trigger",
						sex_nav = nil,
					},	
					{
						-- standing in bridge looking thru viewfinder
						name = "shp_keith_vport", -- "shp_keith_vport"
						talk_trig = "vp_con_trig_stand", -- vp_con_trig_stand
						sex_trig = "vp_sex_trigger",
						contact_trig = "vp_trigger",
						sex_nav = nil,
					},	
	},		
}


--========================CONVERSATIONS=================================
-- have around 200 lines, all of which play outside a mission context and mostly in modal sequences, so no convo table currently
-- lines play as individual persona lines
-- however if we find we need a convo table added let me (alvan) know
--
--======================================================================

SR3_CITY_convo = {}

--called from do_dialogue; decides what line to play based on player progression and returns string for that line situation
function get_line_situation( npc )

	if ( ( npc == "asha" and mission_is_complete( "mol_jb_01" ) and SR3_CITY_globals.said_loyalty_complete_line[npc] == false ) or
		( npc == "benking" and mission_is_complete( "mol_bk_01" ) and SR3_CITY_globals.said_loyalty_complete_line[npc] == false ) or
		( npc == "gat" and mission_is_complete( "mol_jg_01" ) and SR3_CITY_globals.said_loyalty_complete_line[npc] == false ) or
		( npc == "kinzie" and mission_is_complete( "mol_kz_01" ) and SR3_CITY_globals.said_loyalty_complete_line[npc] == false ) or
		( npc == "matt" and mission_is_complete( "mol_mm_01" ) and SR3_CITY_globals.said_loyalty_complete_line[npc] == false ) or
		( npc == "pierce" and mission_is_complete( "mol_p01" ) and SR3_CITY_globals.said_loyalty_complete_line[npc] == false ) or
		( npc == "shaundi" and mission_is_complete( "mol_sh01" ) and SR3_CITY_globals.said_loyalty_complete_line[npc] == false ) ) then
		
		SR3_CITY_globals.said_loyalty_complete_line[npc] = true	
		return "ship_loyalty_complete"

	elseif mission_is_complete( "m19" ) and not mission_is_complete( "m22-1" ) and (SR3_CITY_globals.said_key_line[npc] == false) then
		--message("key line", 2.0, false)
		SR3_CITY_globals.said_key_line[npc] = true	
		return "ship_getting_key_ready"
		
	elseif mission_is_complete( "m19" ) and (SR3_CITY_globals.said_kinzie_rescued_line[npc] == false) then
		--message("kinzie rescued line", 2.0, false)
		SR3_CITY_globals.said_kinzie_rescued_line[npc] = true	
		return "ship_kinzie_rescued"
		
	elseif mission_is_complete( "m16" ) and not mission_is_complete( "m19" ) and (SR3_CITY_globals.said_kinzie_kidnapped_line[npc] == false) then
		--message("kinzie kidnapped line", 2.0, false)
		SR3_CITY_globals.said_kinzie_kidnapped_line[npc] = true	
		return "ship_kinzie_kidnapped"
		
	elseif mission_is_complete( "m15_3" ) and (SR3_CITY_globals.said_johnny_line[npc] == false) then
		--message("johnny line", 2.0, false)
		SR3_CITY_globals.said_johnny_line[npc] = true
		return "ship_comment_on_johnny"
		
	elseif mission_is_complete( "m11" ) and (SR3_CITY_globals.said_asha_line[npc] == false) then
		--message("asha line", 2.0, false)
		SR3_CITY_globals.said_asha_line[npc] = true	
		return "ship_comment_on_asha"
		
	elseif mission_is_complete( "m10" ) and (SR3_CITY_globals.said_king_line[npc] == false) then
		--message("king line", 2.0, false)
		SR3_CITY_globals.said_king_line[npc] = true	
		return "ship_comment_on_king"
		
	elseif mission_is_complete( "m09" ) and (SR3_CITY_globals.said_pierce_line[npc] == false) then
		--message("pierce line", 2.0, false)
		SR3_CITY_globals.said_pierce_line[npc] = true	
		return "ship_comment_on_pierce"
		
	elseif mission_is_complete( "m08" ) and (SR3_CITY_globals.said_shaundi_line[npc] == false) then	
		--message("shaundi line", 2.0, false)
		SR3_CITY_globals.said_shaundi_line[npc] = true	
		return "ship_comment_on_shaundi"
		
	elseif mission_is_complete( "m08" ) and (SR3_CITY_globals.said_shaundi_sr2_line[npc] == false) then
		--message("shaundi sr2 line", 2.0, false)
		SR3_CITY_globals.said_shaundi_sr2_line[npc] = true	
		return "ship_comment_on_shaundi_sr2"
		
	elseif mission_is_complete( "m08" ) and (SR3_CITY_globals.said_cid_line[npc] == false) then	
		--message("cid line", 2.0, false)
		SR3_CITY_globals.said_cid_line[npc] = true	
		return "ship_comment_on_cid"
		
	elseif mission_is_complete( "m07" ) and (SR3_CITY_globals.said_mech_line[npc] == false) then
		--message("mech line", 2.0, false)
		SR3_CITY_globals.said_mech_line[npc] = true	
		return "ship_mech_comment"
		
	elseif mission_is_complete( "m03" ) and (SR3_CITY_globals.said_earth_line[npc] == false) then
		--message("earth line", 2.0, false)
		SR3_CITY_globals.said_earth_line[npc] = true
		return "ship_earth_blew_up"
		
	elseif mission_is_complete( "m03" ) and (SR3_CITY_globals.said_vp_line[npc] == false) then	
		--message("vp line", 2.0, false)
		SR3_CITY_globals.said_vp_line[npc] = true
		return "ship_comment_on_vp"		
		
	elseif mission_is_complete( "m03" ) and (SR3_CITY_globals.said_kinzie_line[npc] == false) then
		--message("kinzie line", 2.0, false)
		SR3_CITY_globals.said_kinzie_line[npc] = true
		return "ship_comment_on_kinzie"
	
	else
		--message("generic line", 2.0, false)
		return "ship_generic_comment"
		
	end
end


--do modal dialogue sequence w/camera cut; selects line to play, sets camera, plays line etc.
function do_dialogue( npc_flag, npc_name )
	local count = 0
	local situation
	
	--figure out which line to play
	situation = get_line_situation( npc_flag )
	
	--setup, play
	player_controls_disable( LOCAL_PLAYER )
	camera_set_target( npc_name, true, SYNC_LOCAL )
	audio_play_persona_line( npc_name, situation )
	
	--wait till line is done playing or 20 seconds have passed
	while ( audio_persona_line_playing( npc_name ) and count <= 80 ) do
		delay(0.25)
		count = count + 1
	end
	
	--cleanup
	player_controls_enable( LOCAL_PLAYER )
	camera_revert_target( true, SYNC_LOCAL )
end


--dialogue wrapper function
function do_dialogue_wrapper( talk_trig, sex_trig, num_talks, npc_flag, npc_name )
	local count = 0
	
	SR3_CITY_CRIBSHIP_num_talks[num_talks] = SR3_CITY_CRIBSHIP_num_talks[num_talks] + 1
	trigger_enable( talk_trig, false )
	trigger_enable( sex_trig, false )
	
	if ( SR3_CITY_CRIBSHIP_num_talks[num_talks] <= SR3_CITY_globals.num_talks_allowed) then
		--do modal dialogue sequence
		character_hide( LOCAL_PLAYER ) 
		do_dialogue( npc_flag, npc_name )
		character_show( LOCAL_PLAYER ) 
	else
		--do non-modal busy line
		audio_play_persona_line( npc_name, "ship_generic_comment" )
		--audio_play_persona_line( npc_name, "ship_busy" )
		while ( audio_persona_line_playing( npc_name ) and count <= 50 ) do
			delay(0.25)
			count = count + 1
		end
	end
	
	trigger_enable( talk_trig, true )
	trigger_enable( sex_trig, true )
end


--dialogue trigger callbacks
function sr3_city_talk_to_kinzie( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.kinzie_sex.name, "num_kinzie_talks", "kinzie", "Kinzie_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_kinzie.name, SR3_CITY_trigger.kinzie_sex.name, "num_kinzie_talks", "kinzie", "Kinzie_01", "kinzie_dlg_aft_player01", "kinzie_dlg_aft_cam02a", "kinzie_dlg_aft_cam02b")
end

function sr3_city_talk_to_pierce( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.pierce_sex.name, "num_pierce_talks", "pierce", "Pierce_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_pierce.name, SR3_CITY_trigger.pierce_sex.name, "num_pierce_talks", "pierce", "Pierce_01", "pierce_dlg_pool_player01", "pierce_dlg_pool_cam01a", "pierce_dlg_pool_cam01b")
end

function sr3_city_talk_to_shaundi( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.shaundi_sex.name, "num_shaundi_talks", "shaundi", "Shaundi_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_shaundi.name, SR3_CITY_trigger.shaundi_sex.name, "num_shaundi_talks", "shaundi", "Shaundi_01", "shaundi_dlg_brdg_player01", "shaundi_dlg_brdg_cam02a", "shaundi_dlg_brdg_cam02b")
end

function sr3_city_talk_to_asha( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.asha_sex.name, "num_asha_talks", "asha", "Asha_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_asha.name, SR3_CITY_trigger.asha_sex.name, "num_asha_talks", "asha", "Asha_01", "asha_dlg_bag_player01", "asha_dlg_bag_cam01a", "asha_dlg_bag_cam01b")
end

function sr3_city_talk_to_benking( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.ben_king_sex.name, "num_benking_talks", "benking", "Ben_King_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_ben.name, SR3_CITY_trigger.ben_king_sex.name, "num_benking_talks", "benking", "Ben_King_01", "benking_dlg_messhall_player01", "benking_dlg_messhall_cam01a", "benking_dlg_messhall_cam01b")
end

function sr3_city_talk_to_cid( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.cid_sex.name, "num_cid_talks", "cid", "CID_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_cid.name, SR3_CITY_trigger.cid_sex.name, "num_cid_talks", "cid", "CID_01", "cid_dlg_storage_player01", "cid_dlg_storage_cam01a", "cid_dlg_storage_cam01b")
end

function sr3_city_talk_to_vp( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.vp_sex.name, "num_keithdavid_talks", "keithdavid", "VP_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_vp.name, SR3_CITY_trigger.vp_sex.name, "num_keithdavid_talks", "keithdavid", "VP_01", "vp_dlg_brdg_player01", "vp_dlg_brdg_cam01a", "vp_dlg_brdg_cam01b")
end

function sr3_city_talk_to_matt( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.matt_sex.name, "num_matt_talks", "matt", "Matt_Miller_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_matt.name, SR3_CITY_trigger.matt_sex.name, "num_matt_talks", "matt", "Matt_Miller_01", "matt_dlg_storage_player", "matt_dlg_storage_cam01a", "matt_dlg_storage_cam01b")
end

function sr3_city_talk_to_gat( human, talk_trig )
	do_dialogue_wrapper( talk_trig, SR3_CITY_trigger.gat_sex.name, "num_gat_talks", "gat", "Johnny_Gat_01" )
	--do_dialogue_wrapper( SR3_CITY_trigger.talk_to_gat.name, SR3_CITY_trigger.gat_sex.name, "num_gat_talks", "gat", "Johnny_Gat_01", "gat_dlg_deck_player01", "gat_dlg_deck_cam01a", "gat_dlg_deck_cam01b")
end


--====================SEX CALLBACKS AND DO_SEX FUNCTION====================
--
--
--
--=========================================================================

--do modal sex sequence OR play no sex line
function do_sex( node_table, msn_trig, npc, npc_flag, anim, length )

	local msn_trig_was_active = false
	local active_node = nil
	local active_talk_trig = nil
	local active_sex_trig = nil
	local sex_nav = nil
	local count = 0
	
	-- figure out which action node is active
	for i = 1, #node_table do
		if ( node_table[i].talk_trig ~= nil and trigger_is_enabled( node_table[i].talk_trig ) ) then
			active_node = node_table[i].name
			active_talk_trig = node_table[i].talk_trig
			active_sex_trig = node_table[i].sex_trig
			sex_nav = node_table[i].sex_nav
			break
		end
	end

	-- disable triggers
	if ( active_sex_trig ~= nil ) then
		trigger_enable( active_sex_trig, false )
	end
	if ( active_talk_trig ~= nil ) then
		trigger_enable( active_talk_trig, false )
	end	
	if ( trigger_is_enabled( msn_trig ) == true ) then
		msn_trig_was_active = true
		trigger_enable( msn_trig, false )
	end
	
	if ( npc == "VP_01" ) then
	
		-- vp
		audio_play_persona_line( npc, "ship_no_sex_ever" )

		-- wait until line finishes, or 20 seconds have passed (whichever comes first)
		while ( audio_persona_line_playing( "VP_01" ) and count <= 80 ) do
			delay(0.25)
			count = count + 1
		end
		
		delay(0.25)		
		
	else
	
		-- all other homies
		if ( SR3_CITY_CRIBSHIP_sex_flags[npc_flag] == false ) then
		
			--start modal sex sequence
			SR3_CITY_CRIBSHIP_sex_flags[npc_flag] = true
			fade_out(0.5, SFX_FADE_ALPHA_FADE, SYNC_LOCAL)
			delay(0.5)
			
			--teleport to sex nav
			if ( sex_nav ~= nil ) then
				teleport( npc, sex_nav )
			end
			
			player_controls_disable( LOCAL_PLAYER )		
			action_play_synced_non_blocking( LOCAL_PLAYER, npc, anim, sex_nav, SYNC_LOCAL )
			
			if (npc == "Shaundi_01") then
				character_hide( "VP_01" )
			end
			
			delay(0.75)
			fade_in(0.5, SFX_FADE_ALPHA_FADE, SYNC_LOCAL, {0,0,0} )

			delay( length )
			
			fade_out(0.75, SFX_FADE_ALPHA_FADE, SYNC_LOCAL)
			delay(6)
			
			if (active_node ~= nil) then
				npc_use_closest_action_node_of_type(npc, active_node, 200, true )
			end
			
			delay(0.5)
			player_controls_enable( LOCAL_PLAYER )
			
			if (npc == "Shaundi_01") then
				character_show( "VP_01" )
			end		
			
			fade_in(0.75, SFX_FADE_ALPHA_FADE, SYNC_LOCAL, {0,0,0} )
			
		else
		
			--play no sex line
			audio_play_persona_line( npc, "ship_no_sex_right_now" )	
			
			-- wait until line finishes, or 20 seconds have passed (whichever comes first)
			while ( audio_persona_line_playing( npc ) and count <= 80 ) do
				delay(0.25)
				count = count + 1
			end

			delay(0.25)
			
		end
		
	end
	
	-- reactivate triggers if necessary
	if ( active_sex_trig ~= nil ) then
		trigger_enable( active_sex_trig, true )
	end
	if ( active_talk_trig ~= nil ) then
		trigger_enable( active_talk_trig, true )
	end
	if ( msn_trig_was_active == true ) then
		trigger_enable( msn_trig, true )
	end
	
end


--sex trigger callbacks
function sr3_city_asha_sex()
	local node_table = SR3_CITY_ship_action_nodes.asha
	local contact_trig = "asha_trigger"
	local npc = "Asha_01"
	local flag = "flag_asha_sex"
	local anim = "FuckBuddy Asha"
	local anim_duration = 13.5
	
	gds_sex("Asha_01", "fb - asha")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - asha")
	
	--do_sex( "asha_sex_nav", false, SR3_CITY_trigger.asha_sex.name, SR3_CITY_trigger.talk_to_asha.name, "", "", "", "", 14.0, "asha_baglean", true )
end

function sr3_city_benking_sex()
	local node_table = SR3_CITY_ship_action_nodes.benking
	local contact_trig = "ben_king_trigger"
	local npc = "Ben_King_01"
	local flag = "flag_benking_sex"
	local anim = "FuckBuddy King"
	local anim_duration = 32.5
	
	gds_sex("Ben_King_01", "fb - ben")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - ben")
	
	--do_sex( "ben_king_sex_nav", true, SR3_CITY_trigger.ben_king_sex.name, SR3_CITY_trigger.talk_to_ben.name, "ben_king_trigger", "Ben_King_01", "flag_benking_sex", "FuckBuddy King", 32.5, "King_leaning", true )
end

function sr3_city_cid_sex()
	local node_table = SR3_CITY_ship_action_nodes.cid
	local contact_trig = "cid_trigger"
	local npc = "CID_01"
	local flag = "flag_cid_sex"
	local anim = "FuckBuddy Cid"
	local anim_duration = 10.25
	
	gds_sex("CID_01", "fb - cid")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - cid")
	
	--do_sex( "cid_sex_nav", false, SR3_CITY_trigger.cid_sex.name, SR3_CITY_trigger.talk_to_cid.name, "cid_trigger", "CID_01", "flag_cid_sex", "FuckBuddy Cid", 10.25, nil, nil )
end

function sr3_city_gat_sex()
	local node_table = SR3_CITY_ship_action_nodes.gat
	local contact_trig = "johnny_gat_trigger"
	local npc = "Johnny_Gat_01"
	local flag = "flag_gat_sex"
	local anim = "FuckBuddy Gat"
	local anim_duration = 32.0
	
	gds_sex("Johnny_Gat_01", "fb - gat")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - gat")
	
	--do_sex( "johnny_gat_sex_nav", true, SR3_CITY_trigger.gat_sex.name, SR3_CITY_trigger.talk_to_gat.name, "johnny_gat_trigger", "Johnny_Gat_01", "flag_gat_sex", "FuckBuddy Gat", 33.0, "Ship_Gat_Locker", true )
end

function sr3_city_kinzie_sex()
	local node_table = SR3_CITY_ship_action_nodes.kinzie
	local contact_trig = "kinzie_trigger"
	local npc = "Kinzie_01"
	local flag = "flag_kinzie_sex"
	local anim = "FuckBuddy Kinzie"
	local anim_duration = 5.5
	
	gds_sex("Kinzie_01", "fb - kinzie")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - kinzie")
	
	--do_sex( "kinzie_sex_nav", false, SR3_CITY_trigger.kinzie_sex.name, SR3_CITY_trigger.talk_to_kinzie.name, "kinzie_trigger", "Kinzie_01", "flag_kinzie_sex", "FuckBuddy Kinzie", 5.5, "kinzie_typing", true )
end

function sr3_city_matt_sex()
	local node_table = SR3_CITY_ship_action_nodes.matt
	local contact_trig = "matt_miller_trigger"
	local npc = "Matt_Miller_01"
	local flag = "flag_matt_sex"
	local anim = "FuckBuddy Matt"
	local anim_duration = 20.5
	
	gds_sex("Matt_Miller_01", "fb - matt")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - matt")
	
	--do_sex( "matt_miller_sex_nav", false, SR3_CITY_trigger.matt_sex.name, SR3_CITY_trigger.talk_to_matt.name, "matt_miller_trigger", "Matt_Miller_01", "flag_matt_sex", "FuckBuddy Matt", 20.5, "Matt_ship_couch", true )
end

function sr3_city_pierce_sex()
	local node_table = SR3_CITY_ship_action_nodes.pierce
	local contact_trig = "pierce_trigger"
	local npc = "Pierce_01"
	local flag = "flag_pierce_sex"
	local anim = "FuckBuddy Pierce"
	local anim_duration = 13.25
	
	gds_sex("Pierce_01", "fb - pierce")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - pierce")
	
	--do_sex( "pierce_sex_nav", false, SR3_CITY_trigger.pierce_sex.name, SR3_CITY_trigger.talk_to_pierce.name, "pierce_trigger", "Pierce_01", "flag_pierce_sex", "FuckBuddy Pierce", 13.75, "Pierce_couch", true )
end

function sr3_city_shaundi_sex()
	local node_table = SR3_CITY_ship_action_nodes.shaundi
	local contact_trig = "shaundi_trigger"
	local npc = "Shaundi_01"
	local flag = "flag_shaundi_sex"
	local anim = "FuckBuddy Shaundi"
	local anim_duration = 32.0
	
	gds_sex("Shaundi_01", "fb - shaundi")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
	stat_increment("fb - shaundi")
	
	--do_sex( "shaundi_sex_nav", false, SR3_CITY_trigger.shaundi_sex.name, SR3_CITY_trigger.talk_to_shaundi.name, "shaundi_trigger", "Shaundi_01", "flag_shaundi_sex", "FuckBuddy Shaundi", 32.0, nil, nil )
end

function sr3_city_vp_sex()
	local node_table = SR3_CITY_ship_action_nodes.vp
	local contact_trig = "vp_trigger"
	local npc = "VP_01"
	local flag = nil
	local anim = nil
	local anim_duration = nil
	
	gds_sex("VP_01", "fb - veep")
	do_sex( node_table, contact_trig, npc, flag, anim, anim_duration )
end


--[[   If you re-enable this, you'll need to re-enable the trigger...the definition above is commented out
-- hacking test
function sr3_city_do_hack( human, trigger )
	local table_entry = crib_ship_trigger_get_table( trigger )
	local hack_attempt = rand_int( 1, 100 )

	action_play( human, table_entry.use_anim, table_entry.use_anim, false, 0.7, true, true, table_entry.use_nav )

	message( "CRIB_SHIP_HACK_BEGIN", 2 )
	delay( 2.5 )
	
	if ( hack_attempt >= 1 and hack_attempt <= 30 ) then
		message( "CRIB_SHIP_HACK_FAIL", 1.0 )
	elseif ( hack_attempt > 30 and hack_attempt <= 75 ) then
		message( "CRIB_SHIP_HACK_SUCCESS", 1.0 )
		delay(1)
		cash_add( 25, LOCAL_PLAYER )
	elseif ( hack_attempt > 75 and hack_attempt <= 95 ) then
		message( "CRIB_SHIP_HACK_SUCCESS", 1.0 )
		delay(1)
		cash_add( 50, LOCAL_PLAYER )		
	elseif ( hack_attempt > 95 and hack_attempt <= 100 ) then
		message( "CRIB_SHIP_HACK_SUCCESS", 1.0 )
		delay(1)
		cash_add( 1000, LOCAL_PLAYER )
	end

	trigger_enable( trigger, false )
end
]]



	-- text adventure completion variable
	Ship_UI_completion = {}
	

-- get the trigger table from the trigger name
--
-- trigger:		(string) trigger name
--
function crib_ship_trigger_get_table(trigger)
	local trigger_table
	for i,trig in pairs(SR3_CITY_trigger) do
		if trig.name == trigger then
			trigger_table = trig
		end
	end
	return trigger_table
end

function crib_ship_trigger_cb( human, trigger )
	-- This may be called multiple times in the same frame.  Never create groups in a trigger callback.  Use show group instead.
	
	-- find this trigger
	local table_entry = crib_ship_trigger_get_table( trigger )
	
	if table_entry ~= nil then
		if table_entry.hit == true then
			return
		end
		
		table_entry.hit = true
		table_entry.last_hit_by = human
		
		on_trigger( "", table_entry.name )
		trigger_enable( table_entry.name, false )
		
		-- Conversation system link
		if table_entry.conversation ~= nil and table_entry.conversation ~= "" then
			convo_start(table_entry.conversation)
		end
	end
end

-- CALLED FROM CODE (+++MUST RETURN IMMEDIATLY+++)
function hub_loaded( )
	convo_startup(SR3_CITY_convo)

	for i, trig in pairs(SR3_CITY_trigger) do
		if trig.callback == nil or trig.callback == "" then
			on_trigger( "crib_ship_trigger_cb", trig.name )
		else
			on_trigger( trig.callback, trig.name )
		end
		trig.hit = false
		trig.last_hit_by = nil
	end

	trigger_enable (SR3_CITY_trigger.start_txt_adventure.name, true)
	--trigger_enable (SR3_CITY_trigger.hack_cargo.name, true)
	
	-- reset global vars needed for each crib ship visit	
	for i, num_talks in pairs(SR3_CITY_CRIBSHIP_num_talks) do
		SR3_CITY_CRIBSHIP_num_talks[i] = 0
	end
	for i, sex_flag in pairs(SR3_CITY_CRIBSHIP_sex_flags) do
		SR3_CITY_CRIBSHIP_sex_flags[i] = false
	end	
	
	sr3_city_homie_setup_wrapper()
end


--set up homies wrapper function; decide which action nodes to use
function sr3_city_homie_setup_wrapper()

	
	------ KINZIE ------
	local kinzie_node = nil
	
	if mission_is_complete( "m05" ) and not mission_is_complete( "m07" ) then	
	
		-- working on mech node
		kinzie_node = SR3_CITY_ship_action_nodes.kinzie[1]
	
	elseif mission_is_complete( "m07" ) and not mission_is_complete( "m10" ) then
	
		-- beanbag, tube, or control room
		local kinzie_idx = rand_int( 3, #SR3_CITY_ship_action_nodes.kinzie )
		kinzie_node = SR3_CITY_ship_action_nodes.kinzie[kinzie_idx]	
	
	elseif mission_is_complete( "m17" ) and not mission_is_complete( "m19" ) then
	
		-- nemo chair node
		kinzie_node = SR3_CITY_ship_action_nodes.kinzie[2]
		--mesh_mover_update_control( "nemo_rig_kinzie", "is nemo open", true )
		--mesh_mover_update_control( "nemo_rig_kinzie", "closed restart", true )		
		
	else
	
		-- beanbag or tube (NOT control room)
		local kinzie_idx = rand_int( 4, #SR3_CITY_ship_action_nodes.kinzie )
		kinzie_node = SR3_CITY_ship_action_nodes.kinzie[kinzie_idx]
		
	end
	
	sr3_city_homie_setup( "Kinzie_Group_001", "Kinzie_01", kinzie_node.talk_trig, kinzie_node.sex_trig, kinzie_node.contact_trig, kinzie_node.name, true )
	
	
	------ VP ------
	local vp_idx = nil
	local vp_node = nil
	
	if not mission_is_complete ( "m08" ) then
	
		-- catwalk, bridge seat, or bridge stand
		vp_idx = rand_int( 1 , #SR3_CITY_ship_action_nodes.vp )
		vp_node = SR3_CITY_ship_action_nodes.vp[vp_idx]	
		sr3_city_homie_setup( "VP_Group_001", "VP_01", vp_node.talk_trig, vp_node.sex_trig, vp_node.contact_trig, vp_node.name, true )			
	elseif not mission_is_complete ( "m17" ) or mission_is_complete ( "m18" ) then
	
		-- bridge seat or bridge stand (NOT catwalk)
		vp_idx = rand_int( 2 , #SR3_CITY_ship_action_nodes.vp )
		vp_node = SR3_CITY_ship_action_nodes.vp[vp_idx]		
		sr3_city_homie_setup( "VP_Group_001", "VP_01", vp_node.talk_trig, vp_node.sex_trig, vp_node.contact_trig, vp_node.name, true )			
	end
	
	
	------ CID ------
	if mission_is_complete( "m05" ) then
		local cid_node = SR3_CITY_ship_action_nodes.cid[1]
		
		sr3_city_homie_setup( "CID_Group_001", "CID_01", cid_node.talk_trig, cid_node.sex_trig, cid_node.contact_trig, cid_node.name, true )
	end
	
	
	------ MATT MILLER ------
	if mission_is_complete( "m07" ) then
		local matt_node = nil
		local matt_idx = nil
	
		if not mission_is_complete( "m18" ) or mission_is_complete( "m19" ) then
		
			-- anywhere EXCEPT control room
			matt_idx = rand_int( 2, #SR3_CITY_ship_action_nodes.matt )
			matt_node = SR3_CITY_ship_action_nodes.matt[matt_idx]
		
		else
	
			-- m18 complete, m19 not complete - control room
			matt_node = SR3_CITY_ship_action_nodes.matt[1]
		
		end
		
		sr3_city_homie_setup( "Matt_Miller_Group_001", "Matt_Miller_01", matt_node.talk_trig, matt_node.sex_trig, matt_node.contact_trig, matt_node.name, true )		
	end
	
	
	------ SHAUNDI ------
	if mission_is_complete( "m08" ) then
	
		local shaundi_idx = nil
		local shaundi_node = nil
		
		if not mission_is_complete( "m10" ) then
	
			-- catwalk
			shaundi_node = SR3_CITY_ship_action_nodes.shaundi[2]
		
		elseif mission_is_complete( "m10" ) and not mission_is_complete( "m14" ) then
	
			-- control room
			shaundi_node = SR3_CITY_ship_action_nodes.shaundi[1]
		
		elseif mission_is_complete( "m14" ) and not mission_is_complete( "m19" ) then
	
			-- any on bridge
			shaundi_idx = rand_int( 3 , #SR3_CITY_ship_action_nodes.shaundi )
			shaundi_node = SR3_CITY_ship_action_nodes.shaundi[shaundi_idx]	
		
		elseif mission_is_complete( "m19" ) then
	
			-- control room
			shaundi_node = SR3_CITY_ship_action_nodes.shaundi[1]
			
		end
		
		sr3_city_homie_setup( "Shaundi_Group_001", "Shaundi_01", shaundi_node.talk_trig, shaundi_node.sex_trig, shaundi_node.contact_trig, shaundi_node.name, true )
		
	end
	
	
	------ PIERCE ------
	if mission_is_complete( "m09" ) then
		local pierce_idx = rand_int( 1 , #SR3_CITY_ship_action_nodes.pierce )
		local pierce_node = SR3_CITY_ship_action_nodes.pierce[pierce_idx]	
	
		sr3_city_homie_setup( "Pierce_Group_001", "Pierce_01", pierce_node.talk_trig, pierce_node.sex_trig, pierce_node.contact_trig, pierce_node.name, true )
	end
	
	
	------ BEN KING ------
	if mission_is_complete( "m10" ) then
		local benking_idx = rand_int( 1 , #SR3_CITY_ship_action_nodes.benking )
		local benking_node = SR3_CITY_ship_action_nodes.benking[benking_idx]
	
		sr3_city_homie_setup( "Ben_King_Group_001", "Ben_King_01", benking_node.talk_trig, benking_node.sex_trig, benking_node.contact_trig, benking_node.name, true )
	end
	
	
	------ ASHA ------
	if mission_is_complete( "m11" ) then
		local asha_idx = rand_int( 1 , #SR3_CITY_ship_action_nodes.asha )
		local asha_node = SR3_CITY_ship_action_nodes.asha[asha_idx]
		
		sr3_city_homie_setup( "Asha_Group_001", "Asha_01", asha_node.talk_trig, asha_node.sex_trig, asha_node.contact_trig, asha_node.name, true )
	end

	
	------ GAT ------	
	if mission_is_complete( "m15_3" ) then
		local gat_idx = rand_int( 1 , #SR3_CITY_ship_action_nodes.gat )
		local gat_node = SR3_CITY_ship_action_nodes.gat[gat_idx]

		sr3_city_homie_setup( "Johnny_Gat_Group_001", "Johnny_Gat_01", gat_node.talk_trig, gat_node.sex_trig, gat_node.contact_trig, gat_node.name, true )
	end

	
end

--set up homies for crib ship -- group, triggers, action node
function sr3_city_homie_setup( group, npc, talk_trig, sex_trig, contact_trig, action_node, teleport_bool )
	if not group_is_loaded(group) then
		group_create( group )
	end
	
	if (talk_trig ~= nil) then
		trigger_enable( talk_trig, true )
	end
	
	if (sex_trig ~= nil) then
		trigger_enable( sex_trig, true )
		trigger_copy_pos_from( sex_trig, talk_trig ) -- move sex trigger to same position as talk trigger
	end
	
	if (action_node ~= nil) then
		npc_use_closest_action_node_of_type( npc, action_node, 200, teleport_bool )
	end

	if (contact_trig ~= nil) then
		trigger_copy_pos_from( contact_trig, talk_trig ) -- move contact trigger to same position as talk trigger
	end
end


-- ALL FOLLOWING COOP SKIP FUNCTIONS CALLED FROM CODE (+++MUST RETURN IMMEDIATLY+++)

-- Teleport players to a mission start node
--
-- mission_name:	(string) name of the mission start node (should be same as mission name)
-- skip_teleport:	(boolean) true to basically skip this whole function, nil or not true will run it
--
function sr3_teleport_mission_start(mission_name, skip_teleport)
	if skip_teleport == nil or skip_teleport ~= true then
		-- send them to the mission start
		local vehicle_exit = true
		local offset_x = 0.5
		teleport_to_object(LOCAL_PLAYER, mission_name, vehicle_exit, nil, offset_x)
		-- remote player not on top of player
		offset_x = -0.5
		teleport_to_object(REMOTE_PLAYER, mission_name, vehicle_exit, nil, offset_x)
	end
end

function ship_use_trigger_cb(human, trigger)
	-- do default trigger behavior
	-- trigger_cb(human, trigger)
		local trigger_table = trigger_get_table(trigger)
		
	if trigger_table.use_anim ~= nil and trigger_table.use_anim ~= "" then
		local anim_name = trigger_table.use_anim
		local morph_name = anim_name
		local force_play = false	
		local percentage = 0.8
		local stand_still = true
		local zero_movement = true
		action_play(human, anim_name, morph_name, force_play, percentage, stand_still, zero_movement, trigger_table.use_nav)
	end
end

-- start the text adventure
--
-- human:		(string) name of human that tripped the trigger
-- trigger:		(string) name of the trigger
--	
function ship_start_text_adventure_cb(human, trigger)
	-- find this trigger
	local table_entry = crib_ship_trigger_get_table( trigger )
	
	if table_entry ~= nil then
		if table_entry.hit == true then
			return
		end
		
		table_entry.hit = true
		table_entry.last_hit_by = LOCAL_PLAYER
		
		on_trigger( "", table_entry.name )
		trigger_enable( table_entry.name, false )
		
		-- play anim
		action_play( LOCAL_PLAYER, table_entry.use_anim, table_entry.use_anim, false, 0.9, true, true, table_entry.use_nav )
		
		-- start the text adventure and hook up a callback to know when they're done
		Ship_UI_completion[ LOCAL_PLAYER ] = false
		hud_push_screen( "col_main", SYNC_LOCAL )
		--on_hud_screen_exit( "ship_UI_text_complete_cb", "col_main" )
		player_controls_disable(LOCAL_PLAYER)
		
		-- wait until player exits screen
		while hud_is_screen_on_stack( "col_main" ) do
			thread_yield()
		end
		
		--[[
		while not Ship_UI_completion[ LOCAL_PLAYER ] do
			thread_yield()
		end
		]]
		
		-- re-enable trigger
		table_entry.hit = false
		on_trigger( "ship_start_text_adventure_cb", table_entry.name )
		trigger_enable( table_entry.name, true )
		player_controls_enable( LOCAL_PLAYER )
		Ship_UI_completion[ LOCAL_PLAYER ] = true
	end
end

--[[
-- callback to handle text adventure being completed
--
--	screen_name:	(string) screen completed
--	player_name:	(string) player using the screen
--
function ship_UI_text_complete_cb( screen_name, player_name )
	if (screen_name ~= "col_main") then
		return
	end
	
	player_controls_enable( player_name )
	
	-- flag the player as completed
	Ship_UI_completion[ player_name ] = true	
end
]]