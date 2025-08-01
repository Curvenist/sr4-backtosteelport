-- Exclude the following functions from automatic documentation generation
--[[DocGenExclude:
character_is_ready_to_speak
group_create_check_done_loop
helicopter_fly_to_internal
]]

--------------------
-- Script Globals --
--------------------

-- floating_values_types in autil_hud.h
FLOATING_VALUE_CASH				= 0
FLOATING_VALUE_POINTS			= 1
FLOATING_VALUE_TIME				= 2
FLOATING_VALUE_BONUS_TIME		= 3
FLOATING_VALUE_CUSTOM_TEXT		= 4


MINIMAP_ICON_KILL								= "icon_class_kill"
MINIMAP_ICON_PROTECT_ACQUIRE				= "icon_class_protectacquire"
MINIMAP_ICON_LOCATION						= "icon_class_location"
MINIMAP_ICON_USE								= "icon_class_use"
MINIMAP_ICON_SAINTS							= "icon_class_saints"
MINIMAP_ICON_SYNDICATE						= "icon_class_syndicate"
MINIMAP_ICON_STOMP							= "icon_class_stomp"
MINIMAP_ICON_BLAST							= "icon_class_blast"
MINIMAP_ICON_BUFF								= "icon_class_buff"
MINIMAP_ICON_TELE								= "icon_class_tele"
MINIMAP_ICON_DLC_XMAS_GIFT						= "icon_class_xmas_gift"
MINIMAP_ICON_DLC_XMAS_NAUGHTY					= "icon_class_xmas_naughty"

INGAME_EFFECT_LOCATION						= "vfx_missioncheckPointicon"
INGAME_EFFECT_CUTSCENE						= "mission_purchase"
INGAME_EFFECT_MP_TUTORIAL					= "mission_complete_mp"

INGAME_EFFECT_VEHICLE_INTERACT			= "Icon_lg_b"
INGAME_EFFECT_VEHICLE_PROTECT_ACQUIRE	= "Icon_lg_c"
INGAME_EFFECT_VEHICLE_KILL					= "Icon_lg_d"

INGAME_EFFECT_VEHICLE_LOCATION			= "vfx_missioncheckPointCar"
INGAME_EFFECT_VEHICLE_CUTSCENE			= "vfx_missioncheckPointCar"

INGAME_EFFECT_CHECKPOINT					= "vfx_missioncheckPointicon"

-- Object Indicator Assets
OI_ASSET_INVALID	  = -1
OI_ASSET_KILL		  = 0
OI_ASSET_DEFEND	  = 1
OI_ASSET_USE		  = 2
OI_ASSET_REVIVE	  = 3
OI_ASSET_LOCATION	  = 4
OI_ASSET_COOP		  = 5
OI_ASSET_KILL_FULL  = 6
OI_ASSET_FINSHER    = 7 -- Not used in lua, just here so we stay in sync with C.
OI_ASSET_KILL_TIRES = 8
OI_ASSET_HITMAN     = 9
OI_ASSET_CHOP_SHOP  = 10
OI_ASSET_ALL        = 11 -- Not used in lua, just here so we stay in sync with C.
OI_ASSET_SYNDICATE  = 12
OI_ASSET_GRENADE 		= 13
OI_ASSET_FINISHER_WARDEN 	= 14 -- Not used in lua, just here so we stay in sync with C.
OI_ASSET_GT_HUMAN 	= 15 -- Not used in lua, just here so we stay in sync with C.
OI_ASSET_GT_MOVER 	= 16 -- Not used in lua, just here so we stay in sync with C.
OI_ASSET_GT_VEHICLE 	= 17 -- Not used in lua, just here so we stay in sync with C.
OI_ASSET_POWER_TELE 	= 18
OI_ASSET_CID = 19
OI_ASSET_POWER_STOMP = 20
OI_ASSET_POWER_FREEZE = 21
OI_ASSET_POWER_BLAST	= 22
OI_ASSET_POWER_BUFF	= 23
OI_ASSET_DLC_XMAS_GIFT    = 24
OI_ASSET_DLC_XMAS_NAUGHTY = 25

-- This must match the flags defined in object_indicators.h
OI_FLAG_NONE					= 0x00
OI_FLAG_STICKY					= 0x01
OI_FLAG_DISPLAY_DISTANCE	= 0x02
OI_FLAG_PULSE					= 0x04
OI_FLAG_FADE					= 0x08
OI_FLAG_PARTIAL_HIDE			= 0x10
OI_FLAGS_DEFAULT				= OI_FLAG_STICKY + OI_FLAG_DISPLAY_DISTANCE + OI_FLAG_PARTIAL_HIDE
OI_FLAGS_LOCATION				= OI_FLAG_STICKY + OI_FLAG_DISPLAY_DISTANCE + OI_FLAG_PULSE
OI_FLAGS_FULL					= OI_FLAG_STICKY + OI_FLAG_DISPLAY_DISTANCE

SYNC_LOCAL	= 1
SYNC_REMOTE = 2
SYNC_ALL		= 3

VAULT_SEQUENCE = 0
BALL_SEQUENCE = 1

MAX_NOTORIETY_LEVEL	= 6
MAX_NOTORIETY_NO_WARDENS = 5
INVALID_THREAD_HANDLE = -1
INVALID_CONVERSATION_HANDLE = -1
INVALID_PERSONA_HANDLE = 0
INVALID_MESSAGE_HANDLE = -1 
INVALID_HUD_DISPLAY_STATE = -1
INVALID_EFFECT_HANDLE = -1

MISSION_START_CHECKPOINT = "mission start"

LOCAL_PLAYER	= "#PLAYER1#"
REMOTE_PLAYER	= "#PLAYER2#"
CLOSEST_PLAYER = "#CLOSEST_PLAYER#"
CLOSEST_TEAM1	= "#CLOSEST_TEAM1#"
CLOSEST_TEAM2	= "#CLOSEST_TEAM2#"
FOLLOWER1		= "#FOLLOWER1#"
FOLLOWER2		= "#FOLLOWER2#"
FOLLOWER3		= "#FOLLOWER3#"

PLAYER_TAG_LIST = {
	"#PLAYER1#",
	"#PLAYER2#",
	"#PLAYER3#",
	"#PLAYER4#",
	"#PLAYER5#",
	"#PLAYER6#",
	"#PLAYER7#",
	"#PLAYER8#"
}

WEAPON_SLOT_NONE			= -1
WEAPON_SLOT_UNARMED		= 0
WEAPON_SLOT_MELEE			= 1
WEAPON_SLOT_PISTOL		= 2
WEAPON_SLOT_SMG			= 3
WEAPON_SLOT_SHOTGUN		= 4
WEAPON_SLOT_RIFLE			= 5
WEAPON_SLOT_EXPLOSIVE	= 6
WEAPON_SLOT_SPECIAL		= 7

Mission_waypoint		= -1

VT_AUTOMOBILE	= 0
VT_MOTORCYCLE	= 1
VT_AIRPLANE		= 2
VT_HELICOPTER	= 3
VT_VTOL			= 4
VT_WATERCRAFT	= 5
-- This means the player isn't in a vehicle.
VT_NONE			= 6

IS_MOVER		= 1
IS_ITEM			= 2
INDETERMINATE	= 3

VST_AMBULANCE = 0
VST_BUS = 1
VST_FBI = 2
VST_FIRETRUCK = 3
VST_INDUSTRIAL = 4
VST_METER_MAID = 5
VST_NEWS_VAN = 6
VST_POLICE = 7
VST_SWAT_VAN = 8
VST_TAXI = 9
VST_TOW_TRUCK = 10
VST_LIMO = 11
VST_ATV = 12
VST_TANK = 14
-- This player's vehicle isn't special or
-- this player isn't in a vehicle.
VST_NONE = 13

-- Gender types
GT_NONE = 0
GT_MALE = 1
GT_FEMALE = 2

-- Enable/Disable
ENABLE = true
DISABLE = false

-- Trigger event state tracker globals
UPDATE_DEACTIVATED = 1
ALL_PLAYERS_DEACTIVATED = 2
ANY_PLAYER_DEACTIVATED = 3
UPDATE_ACTIVATED = 4
ALL_PLAYERS_ACTIVATED = 5
ALL_PLAYERS_ACTIVATED_RESET = 6
TRIGGER_MULTIPLE_TIMES = 7
TRIGGER_ONCE_FIRST_TRIGGERER = 8
TRIGGER_ONCE_PER_PLAYER = 9

-- Parameters for use with npc_set_boss_ai
AI_BOSS_JYUNICHI = "Jyunichi"
AI_BOSS_AKUJI = "Akuji"

START_FADE_OUT_TIME = 1.0
START_FADE_IN_TIME = 2.0
DEFAULT_END_DELAY_TIME = 2.0
DEFAULT_END_FADE_OUT_TIME = 3.0

-- Persona override types
POT_ATTACK				= 1
POT_TAKE_DAMAGE		= 2
-- POT_TAUNT_NEGATIVE	= 3 (PA 7-14-08. There is no longer code-side support for this override type.)
POT_CUSTOM_1			= 4
POT_CUSTOM_2			= 5
POT_PRAISED_BY_PC		= 6
POT_TAUNTED_BY_PC		= 7
POT_BARTER				= 8
POT_GRATS_PC			= 9
POT_GRATS_SELF			= 10
POT_HIT_CAR				= 11
POT_HIT_OBJ				= 12
POT_HIT_PED				= 13

-- Build types
BUILD_TYPE_NORMAL			= 1
BUILD_TYPE_AUSTRALIAN	= 2
BUILD_TYPE_GERMAN			= 3
BUILD_TYPE_JAPANESE_360	= 4
BUILD_TYPE_JAPANESE_PS3	= 5

-- Persona situations associated w/ each override type
POT_SITUATIONS = {
	[POT_ATTACK]			=	{"threat - alert (group attack)",
									 "threat - alert (solo attack)"},
	[POT_TAKE_DAMAGE]		=	{"take damage", 
									 "threat - damage received (firearm)",
									 "threat - damage received (melee)",
									 "threat - damage received (vehicle)"},
	[POT_CUSTOM_1]			=	{"custom line 1"},
	[POT_CUSTOM_2]			=	{"custom line 2"},
	[POT_PRAISED_BY_PC]	=	{"observe - praised by pc"},
	[POT_TAUNTED_BY_PC]	=	{"misc - respond to player taunt w/taunt"},
	[POT_BARTER]			=	{"hostage - barters"},
	[POT_GRATS_PC]			=	{"combat - congratulate player"},
	[POT_GRATS_SELF]		=	{"combat - congratulate self"},
	[POT_HIT_CAR]			=	{"observe - passenger when driver hits cars"},
	[POT_HIT_OBJ]			=	{"observe - passenger when driver hits object"},
	[POT_HIT_PED]			=	{"observe - passenger when driver hits peds"}
}

-- Persona situation overrides, correlates to enum persona_situation_override
PS_OVERRIDE_MISSION01 = 1
PS_OVERRIDE_MISSION07 = 2
PS_OVERRIDE_MISSION17 = 3
PS_OVERRIDE_HELI_ACTIVITY = 4
PS_OVERRIDE_MISSION03 = 5
PS_OVERRIDE_SH02 = 6
PS_OVERRIDE_ESCORT = 7
PS_OVERRIDE_SH02_BRUTE = 8

-- Constants use by the audio_play_conversation function.
-- These indices are the indices of each segment of a dialog stream
-- in the dialog stream table.
DIALOG_STREAM_AUDIO_NAME_INDEX = 1
DIALOG_STREAM_CHAR_NAME_INDEX = 2
DIALOG_STREAM_DELAY_SECONDS_INDEX = 3
DIALOG_STREAM_ANIM_ACTION_INDEX = 4

-- Types of conversations
NOT_CALL = 1
OUTGOING_CALL = 2
INCOMING_CALL = 3

-- Used in a dialog stream to denote that this is a character speaking through the cellphone
CELLPHONE_CHARACTER  = "cellphone character"

-- Ring sounds
CELLPHONE_INCOMING = "SYS_CELL_RING_1"
CELLPHONE_OUTGOING = "SYS_CELL_RING_OTHER"

-- Screen fade styles
SFX_FADE_LEFT_TO_RIGHT = 0
SFX_FADE_ALPHA_FADE = 1

-- Screen fade types
SFX_FADE_TYPE_DEFAULT = 0
SFX_FADE_TYPE_CRIB = 1
SFX_FADE_TYPE_WORLD = 2
SFX_FADE_TYPE_NIGHTMARE = 3

-- Damaged by types (from damaged_by_types enum)
DBT_NONE			= -1
DBT_CAR				= 0		-- collision with vehicle
DBT_EXPLOSION		= 1		-- explosion-type weapon
DBT_BULLET			= 2		-- bullet-type weapon
DBT_LEVEL_OBJECT	= 3		-- collision with mover
DBT_MELEE			= 4		-- melee-type weapon
DBT_WORLD			= 5		-- collision with world
DBT_HUMAN			= 6		-- collision with human
DBT_FIRE			= 7		-- fire or flame-type weapon
DBT_WIND			= 8		-- helicopter downdraft
DBT_SONIC			= 9		-- sonic-type weapon
DBT_LASER			= 10	-- laser-type weapon
DBT_KNEECAPPER		= 11	-- vehicle kneecapper
DBT_FORCED			= 12	-- hard-coded or scripted damage
DBT_DFA				= 13	-- death from above
DBT_STOMP			= 14	-- super stomp
DBT_ENERGY_BLAST	= 15	-- energy blast

-- Gang persona tables
--
--	The key of each entry is the persona, and the value is the tag prfix of its situation triggers.
--
-- These tables are used in conjunction with persona_override_group_start and persona_override_group_stop.

BROTHERHOOD_PERSONAS = {
	["HM_Bro1"]	=	"HMBRO1",
	["HM_Bro2"]	=	"HMBRO2",
	["HM_Bro3"]	=	"HMBRO3",

	["HF_Bro1"]	=	"HFBRO1",
	["HF_Bro2"]	=	"HFBRO2",

	["WM_Bro1"]	=	"WMBRO1",
	["WM_Bro2"]	=	"WMBRO2",
	["WM_Bro3"]	=	"WMBRO3",

	["WF_Bro1"]	=	"WFBRO1",
	["WF_Bro2"]	=	"WFBRO2",
}

RONIN_PERSONAS	= {
	["AM_Ron1"]	=	"AMRON1",
	["AM_Ron2"]	=	"AMRON2",
	["AM_Ron3"]	=	"AMRON3",

	["AF_Ron1"]	=	"AFRON1",
	["AF_Ron2"]	=	"AFRON2",
	["AF_Ron3"]	=	"AFRON3",

	["WM_Ron1"]	=	"WMRON1",
	["WM_Ron2"]	=	"WMRON2",

	["WF_Ron1"]	=	"WFRON1",
	["WF_Ron2"]	=	"WFRON2",
}

SAINTS_PERSONAS = {
	["AM_TSS1"]	=	"AMTSS1",
	["AM_TSS2"]	=	"AMTSS2",
	["AM_TSS3"]	=	"AMTSS3",

	["AF_TSS1"]	=	"AFTSS1",
	["AF_TSS2"]	=	"AFTSS2",
	["AF_TSS3"]	=	"AFTSS3",

	["BM_TSS1"]	=	"BMTSS1",
	["BM_TSS2"]	=	"BMTSS2",
	["BM_TSS3"]	=	"BMTSS3",

	["BF_TSS1"]	=	"BFTSS1",
	["BF_TSS2"]	=	"BFTSS2",
	["BF_TSS3"]	=	"BFTSS3",

	["HM_TSS1"]	=	"HMTSS1",
	["HM_TSS2"]	=	"HMTSS2",
	["HM_TSS3"]	=	"HMTSS3",

	["HF_TSS1"]	=	"HFTSS1",
	["HF_TSS2"]	=	"HFTSS2",
	["HF_TSS3"]	=	"HFTSS3",

	["WM_TSS1"]	=	"WMTSS1",
	["WM_TSS2"]	=	"WMTSS2",
	["WM_TSS3"]	=	"WMTSS3",

	["WF_TSS1"]	=	"WFTSS1",
	["WF_TSS2"]	=	"WFTSS2",
	["WF_TSS3"]	=	"WFTSS3",
}

SAMEDI_PERSONAS = {
	["BM_SoS2"]	=	"BMSOS2",

	["BF_SoS1"]	=	"BFSOS1",
	["BF_SoS2"]	=	"BFSOS2",
	["BF_SoS3"]	=	"BFSOS3",

	["WM_SoS2"]	=	"WMSOS2",

	["WF_SoS1"]	=	"WFSOS1",
}

COP_PERSONAS = {
--	["AM_Cop"]	=	"AMCOP",		Currently has no mission specific lines
	["AF_Cop"]	=	"AFCOP",
	
	["BM_Cop"]	=	"BMCOP",
	["BF_Cop"]	=	"BFCOP",
	
	["HM_Cop"]	=	"HMCOP",
	["HF_Cop"]	=	"HFCOP",
	
	["WM_Cop"]	=	"WMCOP",
	["WF_Cop"]	=	"WFCOP",
}

BUM_PERSONAS = {
	["BM_Hobo"]		=	"BMHOBO1",
	["BF_Hobo"]		=	"BFHOBO1",
	
	["HM_Hobo"]		=	"HMHOBO1",
	["HF_Hobo"]		=	"HFHOBO1",
	
	["WM_Hobo1"]	=	"WMHOBO1",
	["WM_Hobo2"]	=	"WMHOBO2",
	
	["WF_Hobo1"]	=	"WFHOBO1",
	["WF_Hobo2"]	=	"WFHOBO2",
}

-- Human teams ( gangs )
HUMAN_TEAM_BROTHERHOOD		= 1
HUMAN_TEAM_RONIN				= 2
HUMAN_TEAM_SAMEDI				= 3

-- AI Atttack modes
ATTACK_ON_SIGHT = 0
ATTACK_NOW = 1
ATTACK_NOW_NEVER_LOSE = 2

-- Level light toggle styles
LEVEL_LIGHT_TOGGLE_STYLE_POP = 0
LEVEL_LIGHT_TOGGLE_STYLE_FADE = 1
LEVEL_LIGHT_TOGGLE_STYLE_FLICKER = 2

-- Spawn Region Filters
SRF_DEFAULT = 1
SRF_1 = 2
SRF_2 = 4
SRF_3 = 8
SRF_4 = 16
SRF_5 = 32
SRF_6 = 64
SRF_7 = 128
SRF_ALL = 255

-- Global Variables --
Player_controls_disabled_by_mission_start_fadeout = false

-- HUD Elements --
HUD_ELEM_GSI 					= 0
HUD_ELEM_MINIMAP 				= 1
HUD_ELEM_RETICLE 				= 2
HUD_ELEM_HIT_INDICATORS 		= 3
HUD_ELEM_WEAPONS 				= 4
HUD_ELEM_CASH_RESPECT_HOMEY 	= 5
HUD_ELEM_WEAPON_SWAP_MESSAGE 	= 6
HUD_ELEM_RADIO_STATION 			= 7
HUD_ELEM_VEHICLE_NAME 			= 8
HUD_ELEM_DIVERSIONS 			= 9
HUD_ELEM_MESSAGES 				= 10
HUD_ELEM_TUTORIAL_HELP 			= 11
HUD_ELEM_AMMO_PICKUP			= 12
HUD_ELEM_COLLECTION				= 13
HUD_ELEM_SUPER_REWARD			= 14
HUD_ELEM_MECH					= 15

-- Must be explicitly hidden
HUD_ELEM_SCREEN_FX 				= 16
HUD_ELEM_SUBTITLES 				= 17
HUD_ELEM_OI 					= 18
HUD_ELEM_RADIAL					= 19

HUD_ALL_ELEM 					= 20


-- HUD Fade Levels --
HUD_FADE_HIDDEN = 0
HUD_FADE_TRANSPARENT = 1
HUD_FADE_VISIBLE = 2
HUD_FADE_NO_CHANGE = 3

-- Helicopter pathfinding orientations
HELI_PF_FACE_ALONG_PATH = 0
HELI_PF_FACE_TARGET = 1
HELI_PF_LEFT_SIDE_FACE_TARGET = 2
HELI_PF_RIGHT_SIDE_FACE_TARGT = 3
HELI_PF_FACE_DOWN_AT_TARGET = 4
HELI_PF_PATH_PITCH = 5
HELI_PF_LEFT_WING_UP = 6

-- Upgraded weapon levels
WEAPON_LEVEL1 = 0x0		-- no upgrades
WEAPON_LEVEL2 = 0x1		-- first upgrade
WEAPON_LEVEL3 = 0x3		-- first and second upgrades
WEAPON_LEVEL4 = 0x7		-- first second and third upgrades

-- Character Gender Types
GENDER_TYPE_MALE = 0
GENDER_TYPE_FEMALE = 1

-- Hit Locations
HIT_NONE 			= 0
HIT_GENERAL 		= 1
HIT_TORSO 			= 2
HIT_PELVIS 			= 3
HIT_LEFT_ARM 		= 4
HIT_RIGHT_ARM 		= 5
HIT_HEAD 			= 6
HIT_LEFT_LEG 		= 7
HIT_RIGHT_LEG 		= 8
HIT_RIOT_SHIELD 	= 9
HIT_ARMOR 			= 10
HIT_LOWER_BODY		= 11
HIT_EXPLOSIVE		= 12

-- Shop types
SHOP_TYPE_CLOTHING 			= 0
SHOP_TYPE_WEAPON 			= 1
SHOP_TYPE_PLASTIC_SURGEON 	= 2
SHOP_TYPE_JEWELRY 			= 3
SHOP_TYPE_TATTOO 			= 4
SHOP_TYPE_MECHANIC 			= 5
SHOP_TYPE_VEHICLE_DEALER 	= 6
SHOP_TYPE_MISC_PROPERTY 	= 7

-- elements
PLAYER_SUPERPOWER_ELEMENT_NONE 		= -1
PLAYER_SUPERPOWER_TK_FORCE 		= 0
PLAYER_SUPERPOWER_TK_LIGHTNING 		= 1
PLAYER_SUPERPOWER_TK_LIFE_STEAL 	= 2
                                        
PLAYER_SUPERPOWER_STOMP_ROCK 		= 3
PLAYER_SUPERPOWER_STOMP_GRAVITY 	= 4
PLAYER_SUPERPOWER_STOMP_SHRINK 		= 5
                                        
PLAYER_SUPERPOWER_BLAST_FREEZE 		= 6
PLAYER_SUPERPOWER_BLAST_FIRE 		= 7
PLAYER_SUPERPOWER_BLAST_GLITCH 		= 8
                                        
PLAYER_SUPERPOWER_BUFF_FIRE 		= 9
PLAYER_SUPERPOWER_BUFF_LIFE_STEAL 	= 10
PLAYER_SUPERPOWER_BUFF_LIGHTNING 	= 11
PLAYER_SUPERPOWER_BUFF_FREEZE 		= 12
                                        
PLAYER_SUPERPOWER_TK_EXPLODE 		= 13
PLAYER_SUPERPOWER_STOMP_EXPLODE 	= 14
PLAYER_SUPERPOWER_BLAST_EXPLODE 	= 15
PLAYER_SUPERPOWER_BUFF_EXPLODE 		= 16

-- Rail table
Rail_data = { }

--
Generator_data = { }
Generator_objective = ""

------------------------
-- Internal functions --
------------------------

function character_is_ready_to_speak( speaking_character )
   -- Check for a character that does not exist first
   if (not character_exists(speaking_character)) then
		return false
	end

	if (character_is_dead(speaking_character)) then
		return false
	end

	if (character_is_ragdolled(speaking_character)) then
		return false
	end
	
	if (character_is_on_fire(speaking_character)) then
      return false
   end

	-- The character can speak
   return true
end

function group_create_check_done_loop(group)
	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	while (not(group_create_check_done(group_name))) do
		thread_yield()
	end
end

function group_create_unsynced_check_done_loop(group)
	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	while (not(group_create_unsynced_check_done(group_name))) do
		thread_yield()
	end
	
	group_unsynced_do(group_name)
end

-- Internal use: generalized helicopter_fly_to function
--
-- name:				name of the helicopter
-- speed:				speed at which the helicopter will fly
-- direct:				if true, move directly, ignoring heightmap
-- follow:				if non-empty, target vehicle to follow
-- continue_at_goal:	if true, continue forward at goal
-- path:				name of scripted_path or single navpoint
-- follow_dist:			distance at which to follow
-- directly_above:		whether the helicopter should be directly above the target vehicle
-- loop_path:			If true, the path should loop back on itself
-- start_full_speed:	if true, the helicopter will start the path at the full speed specified
-- reverse_sp:			fly in the reverse direction of the spline
--
function helicopter_fly_to_internal(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp)
	local override_player_control = false -- very specific use case for path while player is in control - DO NOT USE
	if (helicopter_fly_to_do(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp, override_player_control)) then
		local check_done = vehicle_pathfind_check_done(name)
		
		while ( check_done == 0) do
			thread_yield()
			check_done = vehicle_pathfind_check_done(name)
		end
		
		return check_done == 1
	else
		return false
	end
end

--------------------
-- Script Actions --
--------------------

-- Make a human play an animation and optional morph, blocking until the animation is done.
--
-- name:			(string) name of character
-- anim_name:		(string) name of animation to play (valid action names can be found in anim_actions.xtbl, in data/tables)
-- morph_name:		(string, optional) name of morph to use (defaults to the animation name)
-- force_play:		(boolean, optional) if true, forces the animation to play on the character, even if dead (defaults to false)
-- percentage:		(float, optional) percentage done to check for (defaults to 0.8)
-- stand_still:		(boolean, optional) if true, the character is reset to a standing state before the animation is played (defaults to false)
-- zero_movement:	(boolean, optional) if ture, the charaters movement speed it set to zero (defaults to false)
-- navpoint:		(string, optional) slide into navpoint if provided
-- dest_nav:		(string, optional) destination navpoint to slide into if provided
-- layered:			(boolean, optional) TRUE if the action should be layered ontop of other scripted actions, FALSE otherwise [layered anims cannot be querried with action_play_is_finished()] (defaults to false)
-- hold_last_frame:	(boolean, optional) TRUE if the action should be hold its last frame. (defaults to false)
-- no_script_control:	(boolean, optional) TRUE if we should skip the script control mode for the player.
-- navpoint_orient_only:(boolean, optional) TRUE if we only want to 
--
function action_play(name, anim_name, morph_name, force_play, percentage, stand_still, zero_movement, navpoint, dest_nav, hold_last_frame, no_script_control, navpoint_orient_only)
	action_play_non_blocking(name, anim_name, morph_name, force_play, stand_still, zero_movement, navpoint, dest_nav, nil, hold_last_frame, no_script_control, navpoint_orient_only)
	repeat
		thread_yield()
	until action_play_is_finished(name, percentage)
end

-- Make a human play a custom animation, blocking until the animation is done.
--
-- name:				(string) name of character
-- anim_name:		(string) name of animation to play (valid action names can be found in anim_actions.xtbl, in data/tables)
-- percentage:		(float, optional) percentage done to check for (defaults to 0.8)
--
-- If possible, the <a>action_play</a> script action should be used instead where possible.
--
function action_play_custom(name, anim_name, percentage)
	while not action_play_custom_do(name, anim_name) do
		thread_yield()
	end

	repeat
		thread_yield()
	until action_play_is_finished(name, percentage)
end

-- Make a human play a direction stumble, blocking until the animation is done
--
-- name:			(string) name of character
-- nav_name:		(string) name of navpoint indicating the direction to stumble
-- percentage:		(float, optional) percentage done to check for (defaults to 0.8)
-- do_flinch:		(boolean, optional) true if a flinch should be in place of the stumble animations
--
-- If possible, the <a>action_play</a> script action should be used instead where possible.
--
function action_play_directional_stumble(name, nav_name, percentage, do_flinch)
	while not action_play_directional_stumble_do(name, nav_name, do_flinch) do
		thread_yield()
	end
	
	repeat
		thread_yield()
	until action_play_is_finished(name, percentage)
end

-- Make a human play an animation without blocking.
--
-- name:			(string) name of character
-- anim_name:		(string) name of animation to play (valid action names can be found in anim_actions.xtbl, in data/tables)
-- morph_name:		(string, optional) name of morph to use (defaults to the animation name)
-- force_play:		(boolean, optional) if true, forces the animation to play on the character, even if dead (defaults to false)
-- stand_still:		(boolean, optional) if true, the character is reset to a standing state before the animation is played (defaults to false)
-- zero_movement:	(boolean, optional) if ture, the charaters movement speed it set to zero (defaults to false)	
-- navpoint:		(string, optional) slide into navpoint if provided
-- dest_nav:		(string, optional) slide into destination navpoint if provided
-- layered:			(boolean, optional) TRUE if the action should be layered ontop of other scripted actions, FALSE otherwise [layered anims cannot be querried with action_play_is_finished()] (defaults to false)
-- hold_last_frame:	(boolean, optional) TRUE if the action should be hold its last frame. (defaults to false)
--
-- NB: This function will still block until the animation actually starts playing.
--
function action_play_non_blocking(name, anim_name, morph_name, force_play, stand_still, zero_movement, navpoint, dest_nav, layered, hold_last_frame, no_script_control, navpoint_orient_only)
	while not action_play_do(name, anim_name, morph_name, force_play, stand_still, zero_movement, navpoint, dest_nav, layered, hold_last_frame, no_script_control, navpoint_orient_only) do
		thread_yield()
	end
end

-- Make a pair of humans play an animation.  This function blocks
--
-- attacker:			(string) name of attacker
-- victim: 				(string) name of victim
-- anim_name:			(string) name of synced animation
-- start_nav_name:      (string, optional) name of the nav point with which to orient the synced animation
-- warp_to_nav:			(boolean, optional) Set to true to warp the attacker and victim to the start nav point (Generally should be false, navpoint must be in loaded zone) (defaults to false)
-- sync_type:			(integer, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
-- percentage:			(float, optional) Percentage of animation playback before returning (defaults to 1.0)
--
function action_play_synced(attacker, victim, anim_name, start_nav, warp_to_nav, sync_type, percentage)
	while not action_play_synced_do(attacker, victim, anim_name, start_nav, warp_to_nav, sync_type) do
		thread_yield()
	end
	
	repeat
		thread_yield()
	until action_play_synced_is_finished(attacker, victim, percentage)
end

-- Make a pair of humans play an animation.  This function blocks
--
-- attacker:			(string) name of attacker
-- victim: 				(string) name of victim
-- anim_name:			(string) name of synced animation
-- start_nav_name:      (string, optional) name of the nav point with which to orient the synced animation
-- sync_type:			(integer, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
-- NB: This function will still block until the animation actually starts playing.
--
function action_play_synced_non_blocking(attacker, victim, anim_name, start_nav, sync_type)
	while not action_play_synced_do(attacker, victim, anim_name, start_nav, nil, sync_type) do
		thread_yield()
	end
end

-- Make an airplane fly through a series of navpoints
-- 
-- name:		(string) name of the airplane
-- speed:		(float) speed in m/s
-- path:		(string) name of a scripted_path, or single navpoint 
--
function airplane_fly_to(name, speed, path)
	-- Wait until the resource is loaded.
	-- character_wait_for_loaded_resource(name)
			
	if (airplane_fly_to_do(name, speed, path)) then
		local check_done = vehicle_pathfind_check_done(name)
		
		while ( check_done == 0) do
			thread_yield()
			check_done = vehicle_pathfind_check_done(name)
		end
		
		return check_done == 1
	else
		return false
	end
end


-- Make an airplane land on a runway.
--
-- name:				(string) name of the airplane
-- runway_start:	(string) name of the navpoint for the start of the runway (must be oriented in the direction of the runway)
--
-- Note that the plane must already be heading in approximately the correct direction of the runway.
-- The plane will land after the runway_start position.
--
function airplane_land(name, runway_start)
	if (not airplane_land_do( name, runway_start )) then
		return
	end
	
	while( vehicle_pathfind_check_done(name) == 0) do
		thread_yield()
	end

end

-- Make an airplane take off straight in the direction they are currently facing.
--
-- name:	(string) name of the airplane
--
function airplane_takeoff(name)
	if (not airplane_takeoff_do( name )) then
		return
	end
	
	while( vehicle_pathfind_check_done(name) == 0) do
		thread_yield()
	end

end

-- Make an NPC attack the closest player.
--
-- name:		(string) name of the NPC
--
-- This script action will silently fail if the NPC is dead.
--
function attack_closest_player( npc_name )
   local distance, closest_player = get_dist_closest_player_to_object( npc_name )
   attack_safe( npc_name, closest_player )
end

-- Make a character attack another character, but checks to see if either character is dead first.
--
-- attacker:	(string) name of the attacker
-- target:		(string, optional) name of the target (defaults to the player)
--
-- If either the attacker of target is dead, the attack command is ignored.
--
function attack_safe( npc_name, target )
	if target == nil then
		target = CLOSEST_PLAYER
	end

	if ( ( not character_is_dead( npc_name ) ) and ( ( not character_is_dead( target ) ) ) ) then
		attack( npc_name, target ) 
	end
end

-- Play a 2D sound (by name).
--
-- audio_name:		(string) name of sound to play
-- type_name:		(string, optional) name of audio source (can be "foley", "voice", "music", or "ambient"; defaults to "foley")
-- blocking:		(boolean, optional) set to true to block until the sound starts playing, else set to false to return immediately (defaults to false)
-- ignore_fade:	(boolean, optional) set to true to ignore the volume throttling that occurs with screen fades (defaults to false)
--
-- returns:			(integer) audio instance handle, or -1 on error
--
-- Example:
--
--		audio_play("Some Foley Sound", "foley")
--
-- Plays the foley sound, "Some Foley Sound", in 2D.
--
function audio_play(audio_name, type_name, blocking, ignore_fade)
	local handle = audio_play_do(audio_name, type_name, ignore_fade)
	
	if (not blocking) then
		return handle;
	end
	
	while (audio_is_playing(handle)) do
		thread_yield()
	end
	
	return -1;
end

function audio_conversation_wait_for_end(handle)
	while audio_conversation_playing(handle) do
		thread_yield()
	end
	audio_conversation_end(handle)
end

-- Play a conversation, which consists of a series of lines played by characters.
--
-- dialog_stream:		(table) dialog stream segments that consist of a speaking character name, the name of the audio to play, and a delay in seconds between each dialog segment (character name is not necessary for cellphone calls)
-- cellphone_call:	(enumeration, optional) type of cellphone call (can be NOT_CALL, OUTGOING_CALL, or INCOMING_CALL; defaults to NOT_CALL)
--
-- For cellphone calls, this function also takes care of cellphone animations.
--
-- Example:
--
--		FLEEING_LIEUTENANTS_DIALOG_STREAM = {
--			{ "SOS3_FLEE_L1", TOBIAS_NAME, 0 },
--			{ "SOS3_FLEE_L2", LOCAL_PLAYER, 0 }
--		}
--		audio_play_conversation( FLEEING_LIEUTENANTS_DIALOG_STREAM, NOT_CALL )
--
-- Plays "SOS3_FLEE_L1" from Tobias and then "SOS3_FLEE_L2" from the local player.
--
function audio_play_conversation( dialog_stream, cellphone_call )
   if ( cellphone_call == nil ) then
      cellphone_call = NOT_CALL
   end

   -- Open with the cellphone, if this is a cellphone
   -- conversation
   if ( cellphone_call == INCOMING_CALL ) then
      cellphone_animate_start_do()
      delay(0.5)
   elseif ( cellphone_call == OUTGOING_CALL ) then
      cellphone_animate_start_do()
      audio_play( CELLPHONE_OUTGOING, "foley", true )
      delay(0.5)
   end

	-- Build a list of characters that will be tested for readyness before any line in the
	-- conversation is played. We only use this list for NOT_CALL conversations.
	local character_list = {}
	if (cellphone_call == NOT_CALL) then
		for segment_index, dialog_segment in pairs( dialog_stream ) do
			local speaking_character = dialog_segment[DIALOG_STREAM_CHAR_NAME_INDEX]
			character_list[speaking_character] = speaking_character
		end
	end

	local function dialog_characters_ready()
		for i,character in pairs(character_list) do
			if (not character_is_ready_to_speak(character)) then
				return false
			end
		end
		return true
	end

   for segment_index, dialog_segment in pairs( dialog_stream ) do
      local audio_name = dialog_segment[DIALOG_STREAM_AUDIO_NAME_INDEX]
      local speaking_character = dialog_segment[DIALOG_STREAM_CHAR_NAME_INDEX]
      local delay_seconds = dialog_segment[DIALOG_STREAM_DELAY_SECONDS_INDEX]
		local anim_action = dialog_segment[DIALOG_STREAM_ANIM_ACTION_INDEX]

      -- Play the dialog stream for each character
      if ( cellphone_call == NOT_CALL ) then
         repeat
            thread_yield()
         until ( dialog_characters_ready() )

			local playing_action = (	(anim_action ~= nil)
												and (not character_is_in_vehicle(speaking_character)) 
												and (not character_is_combat_ready(speaking_character))
												and (not mesh_mover_wielding(speaking_character))
												and (vehicle_exit_check_done(speaking_character))
												and (vehicle_enter_check_done(speaking_character))
											)

			if (playing_action ) then	
				inv_item_equip(nil,speaking_character)
				action_play(speaking_character, anim_action, anim_action, true, 0.0, true)
			end
         audio_play_for_character( audio_name, speaking_character, "voice", false, true)
         delay( delay_seconds )
      -- Cellphone calls are different - just play the audio, don't use the character function unless
      -- it's the player.
      else
         -- For players, use audio_play_for_character so that the tag can be correctly translated
         if (	speaking_character ~= nil and character_is_player( speaking_character ) ) then
            -- Don't play lines unless and until the player is alive and in a state to deliver them
            repeat
               thread_yield()
            until ( character_is_ready_to_speak( speaking_character ) )
            audio_play_for_character( audio_name, speaking_character, "voice", false, true)
         elseif ( speaking_character == CELLPHONE_CHARACTER or speaking_character == nil ) then
            -- for_cutscene = false, blocking = true, variant = nil, voice_distance = nil, cellphone_line = true
            audio_play_for_character( audio_name, LOCAL_PLAYER, "voice", false, true, nil, nil, true )
         else
            script_assert( false, "You must specify CELLPHONE_CHARACTER as the speaking character ( or leave it at nil ) for the other side of a cellphone conversation." )
         	audio_play( audio_name, "voice", true )
         end
         delay( delay_seconds )
      end
   end

   -- Close the cellphone, if this was a cellphone
   -- conversation
   if ( cellphone_call ~= NOT_CALL ) then
      cellphone_animate_stop_do()
   end
end

-- Play a conversation while the speaker is in a vehicle.
--
-- dialog_stream:		(table) dialog stream segments that consist of a speaking character name, the name of the audio to play, and a delay in seconds between each dialog segment (character name is not necessary for cellphone calls)
--
-- Behaves in much the same way as <a>audio_play_conversation</a>, but blocks while the speaking character is not in a vehicle.
--
function audio_play_conversation_in_vehicle(dialog_stream)
	-- Loop through the table conversation...
   for segment_index, dialog_segment in pairs( dialog_stream ) do
      local audio_name = dialog_segment[DIALOG_STREAM_AUDIO_NAME_INDEX]
      local speaking_character = dialog_segment[DIALOG_STREAM_CHAR_NAME_INDEX]
      local delay_seconds = dialog_segment[DIALOG_STREAM_DELAY_SECONDS_INDEX]

		-- Conversation requires them to be in a vehicle
		while (not character_is_in_vehicle(speaking_character)) do
			thread_yield()
		end

      -- Play the dialog stream for each character
		audio_play_for_character(audio_name, speaking_character, "voice", false, true)
		delay(delay_seconds)
   end
end

-- Play a cellphone ring and then a conversation.
--
-- ring_name:	(string) name of the ring sound (from foley.xtbl)
-- conv_name:	(string) name of the conversation (from voice.xtbl)
--
-- The ring sound plays twice before the conversation occurs. This function also player cellphone animations.
--
-- Note: this function does not display a "Press Y to ..." message on the screen.
--
function audio_play_for_cellphone_force(ring_name, conv_name )

	audio_play(ring_name, "foley", false, true)
	delay(0.5)
	audio_play(ring_name, "foley", false, true)
	delay(0.5)
	cellphone_animate_start_do()

	-- RCS: I think these should probably play in 2D...so audio_play would be more appropriate...
	audio_play_for_character(conv_name, LOCAL_PLAYER, "voice", false, true)
	cellphone_animate_stop_do()

end

-- Play a 3D sound (by name) on a character.
--
-- audio_name:			(string) name of sound
-- human_name:			(string) name of character
-- type_name:			(string, optional) name of audio source (can be "foley", "voice", "music", or "ambient"; defaults to "foley")
-- for_cutscene:		(boolean, optional) no longer used (NIQ 4/2/09: this parameter needs to be removed)
-- blocking:			(boolean, optional) set to true if the function should block until the sound has finished playing (defaults to false)
-- variant:				(integer, optional) index of the specific variant of the voice line to play (or -1 for a random selection; defaults to -1)
-- voice_distance:	(integer, optional) distance that the foley can be heard from; only used for voices (0 = short, 1 = normal, 2 = long, 3 = extreme; defaults to -1, which is normal distance for peds, and extreme distance for passengers in cars)
-- cellphone_line:	(boolean, optional) set to true if the audio is for a cellphone line (defaults to false)
-- ignore_fade:		(boolean, optional) set to true to ignore the volume throttling that occurs with screen fades (defaults to false)
--
-- returns:				(integer) audio instance handle, or -1 on error
--
-- Example:
--
--		audio_play_for_character("Woot", "#PLAYER1#", "foley")
--
-- Plays the sound "Woot" on the local player.
-- 
function audio_play_for_character(audio_name, human_name, type_name, for_cutscene, blocking, variant, voice_distance, cellphone_line, ignore_fade)	
	if (character_is_dead(human_name)) then
		return -1, 0
	end
   if ( cellphone_line == nil ) then
      cellphone_line = false
   end

	-- If we're playing a voice line, update the audio name to reflect the player's persona.
	local new_audio_name = audio_name
	if ( (type_name == "voice") and (character_is_player(human_name)) and cellphone_line == false ) then
		new_audio_name = persona_trigger_get_player_prefix(human_name) .. audio_name
	end

	local handle, play_time = audio_play_for_character_do(new_audio_name, human_name, type_name, blocking, variant, voice_distance, cellphone_line, ignore_fade)

	if (not(blocking)) then
		return handle, play_time;
	end

	-- While playing blocking audio, prevent random persona lines from playing
	if (character_is_player(human_name)) then
		audio_suppress_ambient_player_lines(true)
	else
		npc_suppress_persona(human_name, true)
	end
	
	if (handle > 0) then
		while (audio_is_playing(handle)) do
			thread_yield()
		end
	else
		delay( play_time )
	end

	-- Allow random persona lines to play again
	if (character_is_player(human_name)) then
		audio_suppress_ambient_player_lines(false)
	else
		npc_suppress_persona(human_name, true)
	end	

	return -1, 0
end

-- Play a 3D sound (by name) on a character's weapon.
--
-- audio_name:	(string) name of sound
-- human_name:	(string) name of character
-- type_name:	(string, optional) name of audio source (can be "foley", "voice", "music", or "ambient"; defaults to "foley")
-- blocking:	(boolean, optional) set to true if the function should block until the sound has finished playing (defaults to false)
--
-- returns:		(integer) audio instance handle, or -1 on error
--
function audio_play_for_character_weapon( audio_name, character, type_name, blocking)	
	local handle = audio_play_for_character_weapon_do( audio_name, character, type_name)
	
	if not blocking then
		return handle
	end
	
	if handle >= 0 then
		repeat 
			thread_yield()
		until not audio_is_playing(handle)
		return 0
	end

	return -1
end

-- Play a 3D sound (by name) on a mover.
--
-- audio_name:		(string) name of sound
-- script_mover:	(string) name of mover
-- type_name:		(string, optional) name of audio source (can be "foley", "voice", "music", or "ambient"; defaults to "foley")
-- blocking:		(boolean, optional) set to true if the function should block until the sound has finished playing (defaults to false)
--
-- returns:			(integer) audio instance handle, or -1 on error
--
function audio_play_for_mover( audio_name, script_mover, type_name, blocking )

	local handle = audio_play_for_mover_do( audio_name, script_mover, type_name )
	
	if (not blocking) then
		return handle
	end
	
	if (handle > 0) then
		while (audio_is_playing(handle)) do
			thread_yield()
		end
	end
	
	return -1
end

-- Play a 2D sound (by ID).
--
-- audio_id:	(integer) ID of sound to play
-- type_name:	(string, optional) name of audio source (can be "foley", "voice", "music", or "ambient"; defaults to "foley")
-- blocking:	(boolean, optional) set to true if the function should block until the sound has finished playing (defaults to false)
--
-- returns:		(integer) audio instance handle, or -1 on error
--
function audio_play_id(audio_id, type, blocking)
	local handle = audio_play_id_do(audio_id, type)
	
	if (not blocking) then
		return handle;
	end
	
	while (audio_is_playing(handle)) do
		thread_yield()
	end
	
	return -1;
end

-- Play a 3D sound (by ID) on a character.
--
-- human_name:			(string) name of character
-- audio_id:			(integer) ID of sound to play
-- type_name:			(string, optional) name of audio source (can be "foley", "voice", "music", or "ambient"; defaults to "foley")
-- blocking:			(boolean, optional) set to true if the function should block until the sound has finished playing (defaults to false)
-- variant:				(integer, optional) index of the specific variant of the voice line to play (or -1 for a random selection; defaults to -1)
-- voice_distance:	(integer, optional) distance that the foley can be heard from; only used for voices (0 = short, 1 = normal, 2 = long, 3 = extreme; defaults to -1, which is normal distance for peds, and extreme distance for passengers in cars)
--
-- returns:				(integer) audio instance handle, or -1 on error
--
function audio_play_id_for_character(human_name, audio_id, type, blocking, variant, voice_distance)
	if (character_is_dead(human_name)) then
		return -1
	end
	
	local	handle = audio_play_id_for_character_do(human_name, audio_id, type, blocking, variant, voice_distance)

	if (not blocking) then
		return handle
	end
	
	while (audio_is_playing(handle)) do
		thread_yield()
	end
	
	return -1
end

-- Play a 3D sound (by ID) on a navpoint.
--
-- navpoint_name:		(string) name of the navpoint
-- audio_id:			(integer) ID of sound to play
-- type_name:			(string, optional) name of audio source (can be "foley", "voice", "music", or "ambient"; defaults to "foley")
-- blocking:			(boolean, optional) set to true if the function should block until the sound has finished playing (defaults to false)
--
-- returns:				(integer) audio instance handle, or -1 on error
-- 
function audio_play_id_for_navpoint(navpoint_name, audio_id, type, blocking)
	local handle = audio_play_id_for_navpoint_do(navpoint_name, audio_id, type)

	if (not blocking) then
		return handle
	end

	while (audio_is_playing(handle)) do
		thread_yield()
	end

	return -1
end

-- Call the given function on each member of the given table
--
-- function_ref:	(function reference - NOT a string) the function to call for each member of the table
-- table:			(table) the table whose members the function should be called on
-- ...:				(list) list of arguments to send to the function
--
function call_function_on_each_member(function_ref, table, ...)
	if (type(function_ref) ~= "function") then
		return
	end

	if (type(table) ~= "table") then
		function_ref(table, unpack(arg))
	else
		for i,member in pairs(table) do
			call_function_on_each_member(function_ref, member, unpack(arg))
		end
	end
end

-- Moves the camera from its current position and orientation to the specified navpoint's position and orientation.
--
-- navpoint_name:		(string) navpoint to look through
-- duration:			(float, optional) duration of movement, in seconds; if set to 0, camera will instantly jump to the end position and orientation (defaults to 0)
-- yield:				(boolean, optional) set to true to block until the camera movement is complete (defaults to false)
-- hide_hud:			(boolean, option) set to false to not disable the hud when using this camera (defaults to true)
-- sync_flag:			(enum, optional) SYNC_LOCAL, SYNC_REMOTE, SYNC_ALL (defaults to SYNC_ALL)
--
-- NB: the camera will not return to its default behavior unless a camera_end_script() action is issued. If the camera script finishes execution before the
-- camera_end_script() action is issued, the camera will hold the last position of the camera script.
--
-- Example:
--
--		camera_look_through("$npc000", 5.0, true)
--		camera_end_script()
--
-- Move the camera over a period of five seconds so that it is looking through navpoint "$npc000". 
--
function camera_look_through(navp, duration, yield, hide_hud, sync_flag)
	camera_look_through_do(navp, duration, hide_hud, sync_flag)

	if (yield) then	
		while (not(camera_script_is_finished())) do
			thread_yield()
		end
	end
end

-- Make a character take another character as a human shield.
--
-- attacker:	(string) name of attacker
-- victim:		(string) name of target
-- bypass_ai:	(bool, optional) bypass AI and take shield immediately
--
function character_take_human_shield( character, victim, ... )
	local bypass_ai = false
	if (arg.n > 0) then
		bypass_ai = arg[1]
	end
	
   character_take_human_shield_do( character, victim, bypass_ai )

   -- loop as long as grabber and grabee are alive until we've succeeded
   while ( character_is_dead( character ) == false and
           character_is_dead( victim ) == false and
	   character_take_human_shield_check_done( character, victim) == false) do
      thread_yield();
   end
end

-- Blocks until the specified character's resources have loaded.
--
-- name:	(string) name of the character to wait on
--
function character_wait_for_loaded_resource(name)
	while (not(character_check_resource_loaded(name))) do
		thread_yield()
	end
end

-- Recursively cleanup all the callbacks for an object or table of objects.
--
-- objects:	(string or table) object, table of objects, table of tables of objects, etc.
--
function cleanup_callbacks(objects)
	if (type(objects) == "string") then
		clear_callbacks_for_obj(objects)
	elseif (type(objects) == "table") then
		for i,obj in pairs(objects) do
			cleanup_callbacks(obj)
		end
	end
end

-- Recursively cleanup all the audio conversations that may still be playing
--
-- convos:	(table) conversation, table of conversations, table of tables of conversations, etc.
--
function cleanup_conversations(convos)
	local ret_val = convos

	-- An audio conversation is a table, so if we've come to something that's not a table, there is no conversation here
	if (type(convos) ~= "table") then
		return ret_val
	end

	-- Conversations must have a name and a handle to the conversation as it plays, so having both should be a good sign that this is a conversation
	if (convos.name ~= nil and convos.handle ~= nil) then
		if (convos.handle ~= INVALID_CONVERSATION_HANDLE) then
			audio_conversation_end(convos.handle)
			ret_val.handle = INVALID_CONVERSATION_HANDLE
		end
	else
		-- The table didn't have a member called "handle", so this table isn't a conversation (though could be a table of conversations)
		for i,convo in pairs(convos) do
			ret_val[i] = cleanup_conversations(convo)
		end
	end

	-- Return a copy with the ended conversation handles set to INVALID_CONVERSATION_HANDLE
	return ret_val
end

-- Recursively clean up a script group or table of script groups.
--
-- group:	(string or table) a group, table of groups, table of tables of groups, etc.
--
function cleanup_groups(group)
	if (type(group) == "string") then
		if (group_is_loaded(group)) then
			group_destroy_do(group)
		end
	elseif (type(group) == "table") then
		if (type(group.name) == "string") then
			if (group_is_loaded(group.name)) then
				group_destroy_do(group.name)
			end
		else
			for i,group_member in pairs(group) do
				cleanup_groups(group_member)
			end
		end
	end
end

-- Recursively cleanup all the spawn groups (i.e. stop their spawning)
--
-- group:	(string or table) a spawn group, table of spawn groups, table of tables of spawn groups, etc.
--
function cleanup_spawn_groups(group)
	if (type(group) == "string") then
		continuous_spawn_stop(group, true)
	elseif (type(group) == "table") then
		-- See if the spawn group is within the regular group table
		if (type(group.name) == "string") then
			continuous_spawn_stop(group.name, true)
		else
			for i, member in pairs(group) do
				cleanup_spawn_groups(member)
			end
		end
	end
end

-- Recursively disable all spawn regions in a table
--
-- regions:	(string or table) spawn region, table of spawn regions, table of tables of spawn regions, etc.
--
function cleanup_spawn_regions(regions)
	continuous_spawn_regions_enable(regions, false)
end

-- Recursively remove temporary weapons from player inventory
--
-- weapons:		(string or table) weapon, table of weapons, table of tables of weapons, etc.
-- sync_type:	(enum, optional) SYNC_LOCAL, SYNC_REMOTE, SYNC_ALL (defaults to SYNC_ALL)
--
function cleanup_temporary_weapons(weapons, sync_type)
	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end

	if (type(weapons) == "string") then
		if (SYNC_LOCAL or SYNC_ALL) then
			inv_weapon_remove_temporary(LOCAL_PLAYER, weapons)
		end
		if (coop_is_active()) then
			if (SYNC_REMOTE or SYNC_ALL) then
				inv_weapon_remove_temporary(REMOTE_PLAYER, weapons)
			end
		end
	elseif (type(weapons) == "table") then
		for i,weapon in pairs(weapons) do
			cleanup_temporary_weapons(weapon, sync_type)
		end
	end
end

-- Iterates recursively through a table of threads, cleaning up any thread it finds.
--
-- threads:	(string or table) a single thread, table of threads, table of tables of threads, etc.
--
function cleanup_threads(threads)
	local ret_val = threads

	if (type(threads) == "number") then
		if (threads ~= INVALID_THREAD_HANDLE) then
			thread_kill(threads)
			ret_val = INVALID_THREAD_HANDLE
		end
	elseif (type(threads) == "table") then
		for i,thread in pairs(threads) do
			ret_val[i] = cleanup_threads(thread)
		end
	end

	-- Returns a copy with killed threads set to INVALID_THREAD_HANDLE
	return ret_val
end

-- Debug function for making a Lua function executable through the console.
--
-- function_name:	(string) name of function
--
function console_wrapper( function_name )
	_UGGlobals[function_name]()
end

-- Recursively dig down into a spawn region table and enable/disable each region found
--
-- regions:	(table or string) spawn region, table of spawn regions, table of tables of spawn regions, etc.
-- enable:	(bool) whether to enable or disable these regions
--
function continuous_spawn_regions_enable(regions, enable)
	if (type(regions) == "string") then
		spawn_region_enable(regions, enable)
	elseif (type(regions) == "table") then
		for i,region in pairs(regions) do
			continuous_spawn_regions_enable(region, enable)
		end
	end
end

-- Play a cutscene.
--
-- name:				(string) name of cutscene to play
-- group_name:		(string, or table of strings; optional) group(s) for the cutscene to load before returning (defaults to nil)
-- teleport_name:	(table of strings, optional) names of navpoints to teleport the local and remote players to after the cutscene (defaults to nil)
-- fade_in_after:	(boolean, optional) set to true to automatically fade in after the cutscene is finished (defaults to true)
-- wait_for_spawning:   (boolean, optional) set to false to have the cutscene drop immediately into the world without waiting for spawning to finish up (defaults to true)
--
-- This function blocks until the cutscene has finished playing.
--
function cutscene_play(name, group_name, teleport_name, fade_in_after, wait_for_spawning, restore_players_vehicle)
	while (not zscene_is_loaded(name)) do
		thread_yield()
	end
	
	local function convert_to_table( var )
		if (var == "" or var == nil) then
			return nil
		elseif (type(var) == "table") then		
			return var
		else
			return { var, n = 1 }
		end
	end
	
	local converted_group = convert_to_table( group_name )
	local converted_teleports = convert_to_table( teleport_name )
	
	cutscene_play_do(name, converted_group, converted_teleports, fade_in_after, wait_for_spawning, restore_players_vehicle)

	while (not(cutscene_play_check_done())) do
		thread_yield()
	end
end

-- Play a fake conversation by displaying consecutive lines of text on the screen
--
-- conversation:	(table) character name, audio tag, delay between lines 
--
-- NOTE: conversation should be formatted the way it is for audio_play_conversation { "text", "name", duration }
--
-- convo = {
--		{ "This is the first line of the convo", "Speaker's Name", 3 },
--		{ "This is the second line of the convo", "Other Speaker's Name", 2 },
-- }
--
-- This will display on the screen for 3 seconds: "Speaker's Name: This is the first line of the convo"
-- This will display on the screen for 2 seconds: "Other Speaker's Name: This is the second line of the convo"
--
function debug_conversation(conversation)
	if (conversation == nil) then
		return
	end

	for i,line in pairs(conversation) do
		local current_handle = message(line[DIALOG_STREAM_CHAR_NAME_INDEX] .. ": " .. line[DIALOG_STREAM_AUDIO_NAME_INDEX], line[DIALOG_STREAM_DELAY_SECONDS_INDEX])
		delay(line[DIALOG_STREAM_DELAY_SECONDS_INDEX])
		message_remove(current_handle)
		current_handle = INVALID_MESSAGE_HANDLE
	end
end

-- Block until the screen is completely faded in.
-- sync_type:	(enum, optional) SYNC_LOCAL, SYNC_REMOTE, SYNC_ALL (defaults to SYNC_ALL)
--
function fade_in_block(sync_type)
	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end
	
	while( not fade_is_fully_faded_in(sync_type) ) do
		thread_yield()
	end
	
	thread_yield()
end

-- Block until the screen is completely faded out.
-- sync_type:	(enum, optional) SYNC_LOCAL, SYNC_REMOTE, SYNC_ALL (defaults to SYNC_ALL)
--
function fade_out_block(sync_type)
	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end
	
	while( not fade_is_fully_faded_out(sync_type) ) do
		thread_yield()
	end
	
	thread_yield()
end

-- Force an NPC to fire at a navpoint.
--
-- name:					(string) name of the NPC
-- fire_at_navpoint:	(string) name of navpoitn to fire at
-- fire_once:			(boolean, optional) set to true to only fire once, or false to fire continuously (defaults to false)
--
function force_fire(name, fire_at_navpoint, fire_once)
	if (force_fire_do(name, fire_at_navpoint, fire_once)) then
		while (not(force_ai_mode_check_done(name))) do
			thread_yield()
		end
	end
end

-- Force an NPC to fire at a character.
--
-- name:					(string) name of the NPC
-- fire_at_target:	(string) name of the target character
-- fire_once:			(boolean, optional) set to true to only fire once, or false to fire continuously (defaults to false)
--
function force_fire_target(name, fire_at_target, fire_once)
	if (force_fire_target_do(name, fire_at_target, fire_once)) then
		while (not(force_ai_mode_check_done(name))) do
			thread_yield()
		end
	end
end

-- Force an NPC to toss a thrown weapon at a navpoint.
--
-- name:				(string) name of the NPC
-- target_navp:	(string) name of the target navpoint
-- throw_pitch:	(float, optional) angle of elevation to throw at, in degrees (defaults to 45 degrees)
-- throw_speed:	(float, optional) speed to throw at, in m/s (defaults to -1, which means use the default throw speed of the weapon)
--
function force_throw(name, target_navp, throw_pitch, throw_speed)
	if (force_throw_do(name, target_navp, throw_pitch, throw_speed)) then
		while (not(force_ai_mode_check_done(name))) do
			thread_yield()
		end
	end
end

-- Force an NPC to toss a thrown weapon at a character.
--
-- name:		(string) name of the NPC
-- target:	(string) name of the target character
--
function force_throw_char(name, target)
	if (force_throw_char_do(name, target)) then
		while (not(force_ai_mode_check_done(name))) do
			thread_yield()
		end
	end
end

-- Get the distance from an object to the closest player, and also returns the closest player.
--
-- object:			(string) name of the object
-- player_list:	(table of strings, optional) list of players to test against, or nil to test against all players (defaults to nil)
--
-- returns:			(float) distance from the object to the closest player
-- returns:			(string) name of closest player
--
function get_dist_closest_player_to_object(object, player_list)
	if player_list == nil then
		player_list = player_names_get_all()
	end
	
	if sizeof_table( player_list ) == 0 then
		return
	end
	
	local closest_dist = get_dist(player_list[1], object)
	local closest_player = player_list[1]
	
	-- Spin through the available players
	for i, p in pairs(player_list) do
		local current_dist = get_dist(p, object)
		if current_dist < closest_dist then
			closest_dist = current_dist
			closest_player = p
		end
	end
	
	return closest_dist, closest_player
end

-- Get a random entry from a lua table.
--
-- returns:		(any type) a random entry from the table passed in (can be any type)
-- returns:		(nil) if the table passed in is not a table or has no entries, returns nil
--
function get_random_table_entry(input_table)
	if (type(input_table) ~= "table") then
		return nil
	end

	if (sizeof_table(input_table) == 0) then
		return nil
	end

	return input_table[rand_int(1, sizeof_table(input_table))]
end

-- Gets a random player. If the game's not in coop, always returns the local player.
-- Created this to select a random player for the AI to target.
--
-- returns: LOCAL_PLAYER or REMOTE_PLAYER. In non-coop games, returns LOCAL_PLAYER.
--
function get_random_target_player()
	if ( coop_is_active() == false ) then
		return LOCAL_PLAYER
	end

	local players_table = { LOCAL_PLAYER, REMOTE_PLAYER }

	return get_random_table_entry( players_table )
end

-- Get a child table from a parent table by its "name" variable.
--
-- parent_table:	(table) Table that contains child tables with a "name" variable.
-- child_name:		(string) Name of the table that we want from the parent table.
--
function get_table_by_name(parent_table, child_name)
	local found_table = nil
	for i, child_table in pairs(parent_table) do
		if child_table.name == child_name then
			found_table = child_table
			break
		end
	end
	return found_table
end

-- Creates all script objects belonging to the specified script group.
--
-- group:	(string or table) name of the script group, or a group table (should have a "name" field that contains the name of the group)
-- block:	(boolean, optional) set to true to block until everything in the group has finished streaming in (defaults to false)
--
-- If the script object is already created, it will reset the script object to initial position and state. The objects will be unhidden by default.
--
-- Example:
--
--		group_create("mission 1 characters", true)
--
-- Creates all objects in the "mission 1 characters" group and waits for them to stream in.
--
-- Notes:
--  - before group_create() is called, script objects in the group don’t exist, so they don’t need to be hidden
--  - also, this means that any script commands using those script objects must come AFTER the group_create() call; otherwise those commands will do nothing
--  - group_create() call should probably go in mission_start() rather than mission_setup(), as in the final game, the player might have several missions open at once
--
function group_create(group, block)
	local group_name = group

	-- With the new setup of groups in mission scripts, each group should have a "name" field that contains the name of the group
	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	-- pause npc spawning. we are starting in an area where we can't see peds and cars. so don't bother waiting for them
	-- object_spawn_pause(true, "group_create")
	
	group_create_do(group_name)

	local handle = thread_new("group_create_check_done_loop", group_name)

	if (block == true) then
		while (not thread_check_done(handle)) do
			thread_yield()
		end
		thread_yield()
	end

	-- pause npc spawning. we are starting in an area where we can't see peds and cars. so don't bother waiting for them
	-- object_spawn_pause(false, "group_create")
end

-- Creates all script objects belonging to the specified script group, and makes them all hidden.
--
-- group:	(string or table) name of the script group, or a group table (should have a "name" field that contains the name of the group)
-- block:	(boolean, optional) set to true to block until everything in the group has finished streaming in (defaults to false)
--
-- If the script object is already created, it will reset the script object to initial position and state.
--
-- This function behaves the same as the <a>group_create</a> script action, except that all members of the group remain hidden until manually made visible.
--
function group_create_hidden(group, block)
	local group_name = group

	-- With the new setup of groups in mission scripts, each group should have a "name" field that contains the name of the group
	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end
	
	group_create_hidden_do(group_name)

	local handle = thread_new("group_create_check_done_loop", group_name)

	if (block == true) then
		while (not thread_check_done(handle)) do
			thread_yield()
		end
		thread_yield()
	end
end

-- Creates all script objects belonging to the specified script group, and makes them unsynced
--
-- group:	(string or table) name of the script group, or a group table (should have a "name" field that contains the name of the group)
-- block:	(boolean, optional) set to true to block until everything in the group has finished streaming in (defaults to false)
--
-- WARNING: Only use with groups that contain only script_items
--
function group_create_unsynced(group, block)
	local group_name = group
		-- With the new setup of groups in mission scripts, each group should have a "name" field that contains the name of the group
	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end
	
	group_create_do(group_name)

	local handle = thread_new("group_create_unsynced_check_done_loop", group_name)

	if (block == true) then
		while (not thread_check_done(handle)) do
			thread_yield()
		end
		thread_yield()
	end
end

-- Spawn a list of groups
--
-- groups_table:		(table) list of groups to spawn
-- block_override:		(optional, boolean) If set, the value will override the invidual .block variables for each group
--
function group_create_list(groups_table, block_override)
	for i, group in pairs(groups_table) do
		local blocking = true
		if (block_override ~= nil) then
			blocking = block_override
		else
			if group.block == false then
				blocking = false
			end
		end
		
		if group.hidden == true then
			group_create_hidden(group.name, blocking)
		else
			group_create(group.name, blocking)
		end
	end
end

-- Destroys all objects belonging to the specified script group
--
-- group:	(string or table) name of a script group, or a script group table with a "name" field
--
function group_destroy(group)
	if (type(group) == "table" and type(group.name) == "string") then
		group_destroy_do(group.name)
	else
		group_destroy_do(group)
	end
end

-- Destroys all objects belonging to the specified unsynced script group
--
-- group:	(string or table) name of a script group, or a script group table with a "name" field
--
function group_destroy_unsynced(group)
	if (type(group) == "table" and type(group.name) == "string") then
		group_destroy_unsynced_do(group.name)
	else
		group_destroy_unsynced_do(group)
	end
end
-- Hide a group of script objects
--
-- group:	(string or table) name of a script group, or a script group table with a "name" field
--
function group_hide(group)
	if (type(group) == "table" and type(group.name) == "string") then
		group_hide_do(group.name)
	else
		group_hide_do(group)
	end
end

-- Check if a group is loaded
--
-- group:	(string or table) name of a script group, or a script group table with a "name" field
--
-- returns:	(boolean) true if the group is loaded, false otherwise
--
function group_is_loaded(group)
	if (type(group) == "table" and type(group.name) == "string") then
		return group_is_loaded_internal(group.name)
	else
		return group_is_loaded_internal(group)
	end
end

-- run a function on each NPC in a provided group.
--
-- group: (string or table) the name of the script group or a script group table with a "name" field.
-- fn: (function reference) the funciton you wish to execute on each NPC.  Should be protoyped like so - my_func(npc_name)
--
function group_foreach_npc(group, fn)
	if (type(group) == "table" and type(group.name) == "string") then
		group = group.name
	end
	
	-- If it's not a function, that's no good.
	if (type(fn) == "function") then
		local np = group_get_first_npc(group)
		while (np) do
			fn(np)
			np = group_get_next_npc(group, np)
		end
	end
end

-- Unhide a group of script objects
--
-- group:	(string or table) name of a script group, or a script group table with a "name" field
--
function group_show(group)
	if (type(group) == "table" and type(group.name) == "string") then
		group_show_do(group.name)
	else
		group_show_do(group)
	end
end

-- Make a helicopter fly through one or more navpoints.
--
-- name:		(string) name of the helicopter
-- speed:		(float) spead to fly at, in m/s (-1 to use default movement speed)
-- path:		(string) name of a scripted_path, or single navpoint 
--
-- The helicopter will pathfind through the specified path or to the specified point,
-- avoiding buildings and other obstacles along the way.
--
function helicopter_fly_to(name, speed, path, reverse_sp)
	local direct = false
	local follow = ""
	local continue_at_goal = false
	local follow_dist = 0.0
	local directly_above = false
	local loop_path = false
	local start_full_speed = false
	return helicopter_fly_to_internal(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp)
end

-- Make a helicopter fly through one or more navpoints, ignoring any obstacles along the way.
--
-- name:		(string) name of the helicopter
-- speed:		(float) spead to fly at, in m/s (-1 to use default movement speed)
-- path:		(string) name of a scripted_path, or single navpoint 
--
-- Use the function only when you are absolutely sure there are no obstacles between waypoints. The helicopter will not move around them when using this function.
--
function helicopter_fly_to_direct(name, speed, path,reverse_sp)
	local direct = true
	local follow = ""
	local continue_at_goal = false
	local follow_dist = 0.0
	local directly_above = false
	local loop_path = false
	local start_full_speed = false
	return helicopter_fly_to_internal(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp)
end

-- Make a helicopter fly through one or more navpoints, ignoring any obstacles along the way.
--
-- name:		(string) name of the helicopter
-- speed:		(float) spead to fly at, in m/s (-1 to use default movement speed)
-- path:		(string) name of a scripted_path NOTE:  SHOULD BE A PATH!!!
--
-- Use the function only when you are absolutely sure there are no obstacles between waypoints.
--	The helicopter will not move around them when using this function.
--	WARNING:  This function will return immediately unlike other similar functions. (when do you end running in a loop?)
--
function helicopter_fly_to_direct_loop(name, speed, path)
	local direct = true
	local follow = ""
	local continue_at_goal = false
	local follow_dist = 0.0
	local directly_above = false
	local loop_path = true

	-- direct call to helicopter_fly_to_do because we don't want to wait for completion
	if (helicopter_fly_to_do(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path)) then
		-- immediate return
		return true
	else
		return false
	end
end

-- Make a helicopter fly through one or more navpoints, ignoring any obstacles along the way and without stopping.
--
-- name:			(string) name of the helicopter
-- speed:		(float) spead to fly at, in m/s (-1 to use default movement speed)
-- path:		(string) name of a scripted_path, or single navpoint 
--
-- Use the function only when you are absolutely sure there are no obstacles between waypoints. The helicopter will not move around them when using this function.
--
function helicopter_fly_to_direct_dont_stop(name, speed, path)
	local direct = true
	local follow = ""
	local continue_at_goal = true
	local follow_dist = 0.0
	local directly_above = false
	local loop_path = false
	local start_full_speed = false
	local reverse_sp = false
	return helicopter_fly_to_internal(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp)
end

-- Make a helicopter fly through one or more navpoints while following a target, ignoring obstacles along the way.
--
-- name:				(string) name of the helicopter
-- speed:			(float) spead to fly at, in m/s (-1 to use default movement speed)
-- target:			(string) name of target to follow
-- path:				(string) name of a scripted_path, or single navpoint
-- follow_dist:	(number) distance at which to follow
-- directly_above:(bool) whether the helicopter should be directly above the target vehicle
--
-- Use the function only when you are absolutely sure there are no obstacles between waypoints. The helicopter will not move around them when using this function.
--
function helicopter_fly_to_direct_follow(name, speed, target, path, follow_dist, directly_above)
	local direct = true
	local follow = target
	local continue_at_goal = false
	local loop_path = false
	local start_full_speed = false
	local reverse_sp = false
	return helicopter_fly_to_internal(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp)
end

-- Make a helicopter fly through one or more navpoints while following a target, ignoring obstacles along the way and without stopping.
--
-- name:				(string) name of the helicopter
-- speed:			(float) spead to fly at, in m/s (-1 to use default movement speed)
-- target:			(string) name of target to follow
-- path:				(string) name of a scripted_path, or single navpoint 
-- follow_dist:	(number) distance at which to follow
-- directly_above:(bool) whether the helicopter should be directly above the target vehicle
--
-- Use the function only when you are absolutely sure there are no obstacles between waypoints. The helicopter will not move around them when using this function.
--
function helicopter_fly_to_direct_follow_dont_stop(name, speed, target, path, follow_dist, directly_above)
	local direct = true
	local follow = target
	local continue_at_goal = true
	local loop_path = false
	local start_full_speed = false
	local reverse_sp = false
	return helicopter_fly_to_internal(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp)
end

-- Make a helicopter fly through one or more navpoints without stopping
--
-- name:			(string) name of the helicopter
-- speed:		(float) spead to fly at, in m/s (-1 to use default movement speed)
-- path:		(string) name of a scripted_path, or single navpoint 
--
-- The helicopter will pathfind through the specified points, avoiding buildings and other obstacles along the way.
--
function helicopter_fly_to_dont_stop(name, speed, path)
	local direct = false
	local follow = ""
	local continue_at_goal = true
	local follow_dist = 0.0
	local directly_above = false
	local loop_path = false
	local start_full_speed = false
	local reverse_sp = false
	return helicopter_fly_to_internal(name, speed, direct, follow, continue_at_goal, path, follow_dist, directly_above, loop_path, start_full_speed, reverse_sp)
end

-- Add an item to a character's inventory.
--
-- item_name:	(string) name of the item
-- count:		(integer, optional) number of the item to give, or ammount of reserve ammo to give in the case of weapons (default = 1)
-- character:	(string, optional) character to add item to (defaults to the local player)
-- equip_now:	(boolean, optional) set to true to force the item to be immediately equipped (defaults to false)
-- upgrade_flags: (integer, optional) upgrade flags to be applied to the weaopn (WEAPON_LEVEL2, WEAPON_LEVEL3, WEAPON_LEVEL4) (defaults to 0)
-- 
--
function inv_item_add(item_name, count, character, equip_now, upgrade_flags)	
	if (type(item_name) == "table" ) then
		local size = sizeof_table(item_name)
		
		for x=1, size, 1 do
			inv_item_add_do(item_name[x], count[x], character, equip_now, upgrade_flags[x])
		end	
	else
		inv_item_add_do(item_name, count, character, equip_now, upgrade_flags)
	end
end

-- Check if a script tag refers to a player.
--
-- tag:		(string) tag to check
--
-- returns:	(boolean) true if the tag refers to a player, else false
--
function is_player_tag(tag)
	-- Search the "closest" tags
	if tag == CLOSEST_PLAYER or tag == CLOSEST_TEAM1 or tag == CLOSEST_TEAM2 then
		return true
	end
	
	-- Loop through the player tags
	for i, player in pairs(PLAYER_TAG_LIST) do
		if tag == player then
			return true
		end
	end
	
	return false
end

-- Toggle level lights on or off
--
-- enable:			(bool) whether to enable or disable all level lights
-- toggle_style:	(enumeration, optional) method by which to toggle the level lights
--
function level_lights_toggle_all(enable, toggle_style)
	if (toggle_style == nil) then
		toggle_style = LEVEL_LIGHT_TOGGLE_STYLE_FADE
	end

	level_light_enable_all_do(enable, toggle_style)
end

-- Check line of sight between two human-types
--
-- name_one, name_two:  Names of the people to check los between
--

-- Check for line-of-sight between two characters.
--
-- name_one:	(string) name of the first character
-- name_two:	(string) name of the second character
--
-- returns:		(boolean) true if there is line-of-sight between the characters, or false if there is not
--
-- Note that this function may take up to a 100 frames before returning a result and will block in the meantime.
--
function los_check(name_one, name_two)
	local retval = false
	local current_los_result = -1
	local num_retries = 0
	-- It's possible for the los check to continually get deleted intead of processed
	-- For example, if one of the humans is hidden.  So only try re-issuing 100 times.
	while (current_los_result == -1 and num_retries < 100) do
		current_los_result = los_check_do(name_one, name_two)
		thread_yield()
		num_retries = num_retries + 1
	end
	if (current_los_result == 0) then
		return false
	end
	if (current_los_result == 1) then
		return true
	end
	return false
end

-- Add a minimap marker and object indicator to a table (or single object) of navpoints, players, or script objects.
--
-- object_name:				(table or string) table of objects (or a single object) to add object indicators to
-- minimap_icon_name:		(string) name of the minimap icon
-- object_indicator_id:		(integer) ID of the object indicator asset to use
-- object_indicator_flags:	(integer, optional) flags for the object indicator (defaults to OI_FLAGS_DEFAULT)
-- sync_type:				(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
-- fade_dist:				(float, optional) distance to start fading if the OI_FLAG_FADE flag is specified (default, 100.0)
-- tag_name:				(string, optional) name of the object tag to use to position the object indicator, or nil to use default obj position (default, nil)
--
-- Returns the number of objects that were found (markers successfully added)
--
function marker_add(object_name, minimap_icon_name, object_indicator_id, object_indicator_flags, sync_type, fade_dist, tag_name)
	local num_added = 0

	if (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			num_added = num_added + marker_add(obj, minimap_icon_name, object_indicator_id, object_indicator_flags, sync_type, tag_name)
		end
	elseif (type(object_name) == "string") then
		if (object_indicator_flags == nil) then
			object_indicator_flags = OI_FLAGS_DEFAULT
		end

		if (sync_type == nil) then
			sync_type = SYNC_ALL
		end
		
		if (fade_dist == nil) then
			fade_dist = 100.0
		end

		minimap_icon_add_do( object_name, minimap_icon_name, "", 0, sync_type )
		-- If the object was found and the object indicator was added, increase the number by 1
		if (object_indicator_add_do( object_name, object_indicator_id, object_indicator_flags, sync_type, fade_dist, tag_name ) == true) then
			num_added = num_added + 1
		end
	end

	return num_added
end

-- Add a minimap marker and ingame effect to all objects in a script group.
--
-- group:						(string or table) name of a script group, or a script group table with a "name" field
-- minimap_icon_name:		(string) name of the minimap icon
-- object_indicator_id:		(integer) ID of the object indicator asset to use
-- object_indicator_flags:	(integer, optional) flags for the object indicator (defaults to OI_FLAGS_DEFAULT)
-- sync_type:					(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function marker_add_script_group( group, minimap_icon_name, object_indicator_id, object_indicator_flags, sync_type )
	if (object_indicator_flags == nil) then
		object_indicator_flags = OI_FLAGS_DEFAULT
	end

	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end

	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	minimap_icon_add_script_group_do( group_name, minimap_icon_name, "", 0, sync_type )
	object_indicator_add_script_group_do( group_name, object_indicator_id, object_indicator_flags, sync_type )
end

-- Add an object indicator to the npc in the script group closest to the target.
--
-- target_name:				(string) name of the target to find the npc closest to
-- group:						(string or table) name of a script group, or a script group table with a "name" field
-- object_indicator_id:		(integer) ID of the object indicator asset to use
-- object_indicator_flags:	(integer, optional) flags for the object indicator (defaults to OI_FLAGS_DEFAULT)
-- sync_type:					(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
-- returns:						(string) the name of the npc that got the marker, or "" if none.
--
function marker_add_closest_to_target( target_name, group, object_indicator_id, object_indicator_flags, sync_type )
	if (object_indicator_flags == nil) then
		object_indicator_flags = OI_FLAGS_DEFAULT
	end

	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end

	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end
	
	return add_object_indicator_to_closest_npc( target_name, group_name, object_indicator_id, object_indicator_flags, sync_type )
end

-- Add a minimap marker and ingame effect to a script trigger.
--
-- trigger_name:				(string) name of the script trigger
-- minimap_icon_name:		(string) name of the minimap icon
-- ingame_effect_name:		(string, optional) name of ingame effect (defaults to nil)
-- object_indicator_id:		(integer, optional) ID of the object indicator asset to use (defaults to nil)
-- object_indicator_flags:	(integer, optional) flags for the object indicator (defaults to OI_FLAGS_LOCATION)
-- sync_type:					(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
-- fade_dist:					(float, optional) distance to start fading if the OI_FLAG_FADE flag is specified (default, 100.0)
--
function marker_add_trigger( trigger_name, minimap_icon_name, ingame_effect_name, object_indicator_id, object_indicator_flags, sync_type, fade_dist )
	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end
	
	if (fade_dist == nil) then
		fade_dist = 100.0
	end

	minimap_icon_add_do(trigger_name, minimap_icon_name, "", 0, sync_type)

	if (ingame_effect_name ~= nil) then
		ingame_effect_add_trigger(trigger_name, ingame_effect_name, sync_type)
	end

	if (object_indicator_id ~= nil) then
		if (object_indicator_flags == nil) then
			object_indicator_flags = OI_FLAGS_LOCATION
		end
		object_indicator_add_do(trigger_name, object_indicator_id, object_indicator_flags, sync_type, fade_dist)
	end
end

-- Remove a minimap marker and ingame effect from a table of objects or a single object
--
-- object_name:(table or string) table of objects (or a single object) to remove markers and effects from
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function marker_remove(object_name, sync_type)
	if (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			marker_remove(obj, sync_type)
		end
	elseif (type(object_name) == "string") then
		if (sync_type == nil) then
			sync_type = SYNC_ALL
		end

		minimap_icon_remove_do( object_name, sync_type )
		object_indicator_remove_do( object_name, sync_type )
	end
end

-- Remove a minimap marker and ingame effect from a script group.
--
-- group:		(string or table) name of a script group, or a script group table with a "name" field
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function marker_remove_script_group( group, sync_type )
	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end

	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end
	
	minimap_icon_remove_script_group_do( group_name, sync_type )
	object_indicator_remove_script_group_do( group_name, sync_type )
end

-- Remove a minimap marker and ingame effect from a script trigger.
--
-- trigger_name:	(string) name of the script trigger
-- sync_type:		(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function marker_remove_trigger( trigger_name, sync_type )
	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end
	
	minimap_icon_remove_do(trigger_name, sync_type)
	ingame_effect_remove_trigger(trigger_name, sync_type)
	object_indicator_remove_do(trigger_name, sync_type)
end

-- Add a minimap marker to a trigger, navpoint, player, or script object, with an optional radius around the marker.
--
-- object_name:			(string or table) name of the object or a nested table of names
-- minimap_icon_name:	(string) name of the minimap icon
-- bitmap_glow_name:		(string, optional) name of minimap icon glow (defaults to nil)
-- radius:					(float, optional) radius of the minimap marker, in meters (defaults to 0.0)
-- sync_type:				(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function minimap_icon_add(object_name, minimap_icon_name, bitmap_glow_name, radius, sync_type)
	if (type(object_name) == "string") then
		minimap_icon_add_do( object_name, minimap_icon_name, bitmap_glow_name, radius, sync_type )
	elseif (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			minimap_icon_add(obj, minimap_icon_name, bitmap_glow_name, radius, sync_type)
		end
	end
end

-- Add a minimap radius around an object.
--
-- object_name:(string or table) name of the object (can be a navpoint, trigger, or mover) or a nested table of names
-- radius:		(float, optional) radius of the minimap marker, in meters (defaults to 0.0)
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function minimap_icon_add_radius(object_name, radius, sync_type)
	if (type(object_name) == "string") then
		minimap_icon_add_radius_do( object_name, radius, sync_type )
	elseif (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			minimap_icon_add_radius(obj, radius, sync_type)
		end
	end
end

-- Add a minimap marker to all objects in a script group, with an optional radius around the marker.
--
-- group:					(string or table) name of a script group, or a script group table with a "name" field
-- minimap_icon_name:	(string) name of the minimap icon
-- bitmap_glow_name:		(string, optional) name of minimap icon glow (defaults to nil)
-- radius:					(float, optional) radius of the minimap marker, in meters (defaults to 0.0)
-- sync_type:				(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function minimap_icon_add_script_group(group, minimap_icon_name, bitmap_glow_name, radius, sync_type)
	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	minimap_icon_add_script_group_do(group_name, minimap_icon_name, bitmap_glow_name, radius, sync_type)
end

-- Remove the minimap marker from a trigger, navpoint, player, or script object.
--
-- object_name:	(string or table) name of the object or a nested table of names
-- sync_type:		(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function minimap_icon_remove(object_name, sync_type)
	if (type(object_name) == "string") then
		minimap_icon_remove_do(object_name, sync_type)
	elseif (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			minimap_icon_remove(obj, sync_type)
		end
	end
end

-- Remove a minimap radius from an object.
--
-- object_name:	(string or table) name of the object (can be a navpoint, trigger, or mover) or a nested table of names
-- sync_type:		(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function minimap_icon_remove_radius(object_name, sync_type)
	if (type(object_name) == "string") then
		minimap_icon_remove_radius_do( object_name, sync_type )
	elseif (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			minimap_icon_remove_radius(obj, sync_type)
		end
	end
end

-- Remove a minimap marker from all objects in a script group.
--
-- group:		(string or table) name of a script group, or a script group table with a "name" field
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function minimap_icon_remove_script_group(group, sync_type)
	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	minimap_icon_remove_script_group_do(group_name, sync_type)
end

-- Re-enable player controls if they have been disabled by a mission start fade-in.
--
-- Should be called in mission cleanup by all missions that use <a>mission_start_fade_in</a> / <a>mission_start_fade_out</a>.
--
function mission_cleanup_maybe_reenable_player_controls()
   if ( Player_controls_disabled_by_mission_start_fadeout ) then
      player_controls_enable( LOCAL_PLAYER )
      if ( coop_is_active() ) then
         player_controls_enable( REMOTE_PLAYER )
      end
      Player_controls_disabled_by_mission_start_fadeout = false
   end
end

-- Generates a mission help message and updates the Objectives screen.
--
-- tag:		(string) name of help text to display (from mission_help.xtbl)
-- string1:	(string, optional) first replacement string
-- string2:	(string, optional) second replacement string
-- sync:		(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
-- Displays a localized help string in the help text area of the HUD.
-- There are two replacement strings available which will replace up to
-- instances of %s in the table text.
--
-- The duration of the text is specified in the mission_help.xtbl file.  If
-- a value of 0.0 is specified, the default duration is 5 seconds.
--
-- Example:
--
-- Entry in the mission_help.xtbl file has name of "KillGangsta" and text of
-- "Kill %s more %s members!"
--
-- Executing the lua statement 'mission_help_table("KillGangsta", 5, "Vice King")'
-- results in the help output "Kill 5 more Vice King members!" 
--
function mission_help_table(tag, string1, string2, sync)
	mission_help_table_do(tag, true, false, string1, string2, sync, 0)
end

-- Generates a mission help nag message, but does not update the Objectives screen.
--
-- tag:		(string) name of help text to display (from mission_help.xtbl)
-- string1:	(string, optional) first replacement string
-- string2:	(string, optional) second replacement string
-- sync:		(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function mission_help_table_nag(tag, string1, string2, sync)
	mission_help_table_do(tag, false, false, string1, string2, sync, 0)
end

-- Enables player controls and fades in the screen.
--
-- Should be used when the mission is loading groups at start. Prevents the player from moving or seeing anything happening. Use in conjunction with <a>mission_start_fade_out</a>.
--
-- unlock_controls:		(boolean, optional) Set to TRUE to unlock player controls, FALSE to keep player controls locked (must be unlocked manually) [defaults to true]
--
function mission_start_fade_in(unlock_controls)
	if (unlock_controls == nil) then
		unlock_controls = true
	end

	mip_streaming_pause(false, "mission_start_fade_in")
	object_spawn_pause(false, "mission_start_fade_in")
    
	fade_in( START_FADE_IN_TIME )
	fade_in_block()
	
	if (unlock_controls) then
		player_controls_enable( LOCAL_PLAYER )
		if ( coop_is_active() ) then
			player_controls_enable( REMOTE_PLAYER )
		end
		Player_controls_disabled_by_mission_start_fadeout = false
	end
end

-- Disables player controls and instantly fades out the screen.
--
-- Should be used when the mission is loading groups at start. Prevents the player from moving or seeing anything happening. Use in conjunction with <a>mission_start_fade_in</a>.
--
function mission_start_fade_out(fade_time)
	if (fade_time == nil) then
		fade_time = START_FADE_OUT_TIME
	end
	
	fade_out( fade_time )
	player_controls_disable( LOCAL_PLAYER )
	if ( coop_is_active() ) then
		player_controls_disable( REMOTE_PLAYER )
	end
	Player_controls_disabled_by_mission_start_fadeout = true
	fade_out_block()

	mip_streaming_pause(true, "mission_start_fade_out")
	object_spawn_pause(true, "mission_start_fade_out")
end

-- Add a mission waypoint at a navpoint.
--
-- navpoint:	(string) name of navpoint, NPC, vehicle, or trigger
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
-- If a mission waypoint currently exists, it will be removed and replaced by this call.
--
function mission_waypoint_add(navpoint, sync_type)
	mission_waypoint_remove(sync_type)
	Mission_waypoint = waypoint_add(navpoint, sync_type)
end

-- Remove the current mission waypoint.
--
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function mission_waypoint_remove(sync_type)
	if (Mission_waypoint ~= -1) then	
		waypoint_remove(sync_type)
		Mission_waypoint = -1
	end
end

-- move_to speed defines
MOVE_TO_WALK = 1
MOVE_TO_RUN = 2
MOVE_TO_SPRINT = 3

-- Make a character pathfind through one or more navpoints.
-- 
-- name:					(string) name of the character
-- dest:					(string) name of the scripted_path spline to follow, or navpoint to go to
-- speed:				(integer, optional) movement speed (1 = walk, 2 = run, 3 = sprint; defaults to 1)
-- retry_on_failure:	(boolean, optional) set to true to keep retrying if path calculation fails (defaults to false)
-- move_and_fire:		(boolean, optional) set to true to allow the NPC to fire on the move (defaults to false)
--
-- This function blocks until the character has finished pathfinding.

--
function move_to(name, dest, ...)
	local num_args, speed, retry_on_failure, move_and_fire, path_index

	-- Wait until the resource is loaded.
	character_wait_for_loaded_resource(name)
			
	num_args = arg.n

	-- get move and fire
	if ( (num_args >= 3) and (type(arg[num_args]) == "boolean") ) then
		move_and_fire = arg[num_args]
		num_args = num_args - 1
	else
		move_and_fire = false
	end

	-- get retry
	if ( (num_args >= 2) and (type(arg[num_args]) == "boolean") ) then
		retry_on_failure = arg[num_args]
		num_args = num_args - 1
	else
		retry_on_failure = false
	end
	
	-- get speed
	if ( (num_args >= 1) and (type(arg[num_args]) == "number") ) then
		speed = arg[num_args]
	else
		speed = 1
	end
	
	while( not character_is_ready( name ) ) do
		thread_yield()
	end
	
	if (type(dest) == "string") then
		-- Is it a scripted_path or a single navpoint?
		if ( path_name_is_path(dest)) then
			local	idx

			idx = 0
			while (1) do
				path_index = move_to_do(name, dest, speed, retry_on_failure, move_and_fire, true, idx)
				if (not (path_index == 0)) then
					-- Keep checking for done until the character dies or reaches the destination
					while ( character_is_dead( name ) == false and
						not( move_to_check_done(path_index,  name, dest, speed, retry_on_failure, move_and_fire, true, idx ) ) ) do
						thread_yield()
					end

					idx = idx + 1
				else
					return false
				end
			end
		else
			path_index = move_to_do(name, dest, speed, retry_on_failure, move_and_fire, false, 0)
			if (not (path_index == 0)) then
			-- Keep checking for done until the character dies or reaches the destination
				while ( character_is_dead( name ) == false and
					not( move_to_check_done(path_index,  name, dest, speed, retry_on_failure, move_and_fire, false, 0 ) ) ) do
					thread_yield()
				end
			else
				return false
			end
		end
	end
	
	return (not character_is_dead( name ))
end

-- Make a character pathfind through one or more navpoints. Returns if at any point the character dies.
-- 
-- name:				(string) name of the character
-- dest:				(string) name of the scripted_path spline to follow, or navpoint to go to
-- speed:				(integer, optional) movement speed (1 = walk, 2 = run, 3 = sprint; defaults to 1)
-- retry_on_failure:	(boolean, optional) set to true to keep retrying if path calculation fails (defaults to false)
-- move_and_fire:		(booelan, optional) set to true to allow the NPC to fire on the move (defaults to false)
--
-- This function blocks until the character has finished pathfinding, or until the character dies. This function otherwise behaves exactly like <a>move_to</a>.
--
function move_to_safe(name, dest, ...)

   -- If the character is dead, then forget about pathfinding
   if ( character_is_dead( name ) == true ) then
      return false
   end

	local num_args, speed, retry_on_failure, move_and_fire, path_index

	-- Wait until the resource is loaded.
	character_wait_for_loaded_resource(name)
			
	num_args = arg.n

	-- get move and fire
	if ( (num_args >= 3) and (type(arg[num_args]) == "boolean") ) then
		move_and_fire = arg[num_args]
		num_args = num_args - 1
	else
		move_and_fire = false
	end

	-- get retry
	if ( (num_args >= 2) and (type(arg[num_args]) == "boolean") ) then
		retry_on_failure = arg[num_args]
		num_args = num_args - 1
	else
		retry_on_failure = false
	end
	
	-- get speed
	if ( (num_args >= 1) and (type(arg[num_args]) == "number") ) then
		speed = arg[num_args]
	else
		speed = 1
	end
	
	while( not character_is_ready( name )) do
		thread_yield()

		-- Don't pathfind if character is dead or entered a vehicle
		if (character_is_dead(name) or character_is_in_vehicle( name )) then
			return false
		end
	end

	-- Character may have entered a vehicle in the same frame that it became ready.
		if (character_is_in_vehicle( name )) then
			return false
		end

	if (type(dest) == "string") then
		-- Is it a path list of navpoints are a single navpoint?
		if (path_name_is_path(dest)) then
			local	idx

			idx = 0
			while (1) do
				path_index = move_to_do(name, dest, speed, retry_on_failure, move_and_fire, true, idx)
				if (not (path_index == 0)) then
					while(not(move_to_check_done(path_index, name, dest, speed, retry_on_failure, move_and_fire, true, idx))) do
						thread_yield()

						-- Don't pathfind if character is dead or entered a vehicle
						if (character_is_dead(name) or character_is_in_vehicle( name )) then
							return false
						end
					end

					idx = idx + 1
				else
					return false
				end
			end
		else
			path_index = move_to_do(name, dest, speed, retry_on_failure, move_and_fire, false, 0)
			if (not (path_index == 0)) then
				while(not(move_to_check_done(path_index, name, dest, speed, retry_on_failure, move_and_fire, false, 0))) do
					thread_yield()

					-- Don't pathfind if character is dead or entered a vehicle
					if (character_is_dead(name) or character_is_in_vehicle( name )) then
						return false
					end
				end
			else
				return false
			end
		end
	end
	
	return true
end

-- Add object indicators to a table (or single object) of NPCs, vehicles, items, or anything else that's set up in object_indicator.h
--
-- object_name:(table or string) table of names of the objects to add indicators to (or a single object, table of tables, etc.)
-- asset_id:	(int) ID of the indicator asset to use
-- flags:		(int, optional) flags for the object indicator (defaults to OI_FLAGS_DEFAULT)
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
-- fade_dist:					(float, optional) distance to start fading if the OI_FLAG_FADE flag is specified (default, 100.0)
--
-- Returns the number of object indicators that were added
--
function object_indicator_add(object_name, asset_id, flags, sync_type, fade_dist)
	local num_added = 0
	if (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			num_added = num_added + object_indicator_add(obj, asset_id, flags, sync_type)
		end
	elseif (type(object_name) == "string") then
		if (sync_type == nil) then
			sync_type = SYNC_ALL
		end
		
		if (fade_dist == nil) then
			fade_dist = 100.0
		end

		if (flags == nil) then
			flags = OI_FLAGS_DEFAULT
		end

		-- If the object was found, and the indicator was added, increase the number by 1
		if (object_indicator_add_do(object_name, asset_id, flags, sync_type, fade_dist) == true) then
			num_added = num_added + 1
		end
	end

	return num_added
end

-- Add an object indicator to each object in a group of script objects
--
-- group:		(string or table) name of a script group, or a script group table with a "name" field
-- asset_id:	(integer) ID of the object indicator asset to use
-- flags:		(integer, optional) flags for the object indicator (defaults to OI_FLAGS_DEFAULT)
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function object_indicator_add_script_group(group, asset_id, flags, sync_type)
	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	if (flags == nil) then
		flags = OI_FLAGS_DEFAULT
	end

	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end
	
	object_indicator_add_script_group_do(group_name, asset_id, flags, sync_type)
end

-- Remove object indicators from a table (or single object) of NPCs, vehicles, items, or anything else that's set up in object_indicator.h
--
-- object_name:(table or string) table of names of the objects to remove indicators from (or a single object, table of tables, etc.)
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function object_indicator_remove(object_name, sync_type)
	if (type(object_name) == "table") then
		for i,obj in pairs(object_name) do
			object_indicator_remove(obj, sync_type)
		end
	elseif (type(object_name) == "string") then
		if (sync_type == nil) then
			sync_type = SYNC_ALL
		end

		object_indicator_remove_do(object_name, sync_type)
	end
end

-- Removes an object indicator from each object in a group of script objects
--
-- group:		(string or table) name of a script group, or a script group table with a "name" field
-- sync_type:	(enumeration, optional) synchronization type (SYNC_LOCAL = affects local player, SYNC_REMOTE = affects remote player, or SYNC_ALL = affects both players; defaults to SYNC_ALL)
--
function object_indicator_remove_script_group(group, sync_type)
	local group_name = group

	if (type(group) == "table" and type(group.name) == "string") then
		group_name = group.name
	end

	if (sync_type == nil) then
		sync_type = SYNC_ALL
	end
	
	object_indicator_remove_script_group_do(group_name, sync_type)
end

-- Register a callback function for when any human is killed
--
-- function_name:	(string) name of the function
--
-- When the callback is executed, the following parameters are passed to it:
--  - (string) name of the attacker
--  - (string) name of the team of the victim
--
function on_random_human_killed( function_name )
	on_random_obj_killed_do( function_name, 1 )
end

-- Register a callback function for when any mover is killed
--
-- function_name:	(string) name of the function
--
-- When the callback is executed, the following parameters are passed to it:
--  - (string) name of the attacker
--  - (string) property name (from levels.xtbl) of the mover destroyed
--
function on_random_mover_killed( function_name, mission_name )
	on_random_obj_killed_do( function_name, 2 )
end

-- Register a callback function for when any object in an object destroyed script is destroyed during a mission.
--
-- function_name:	(string) name of the function
--
-- The object destroyed script is generated by Art. It contains the chunk number (all three digits, including leading zeroes)
-- and the object name. The file is named exactly the same as the mission/stronghold/activity and has a ".ods" file extension.
--
function on_random_ods_killed( function_name )
	on_random_obj_killed_do( function_name, 4 )
end

-- Register a callback function for when any vehicle is destroyed
--
-- function_name:	(string) name of the function
--
-- When the callback is executed, the following parameters are passed to it:
--  - (string) name of the attacker
--  - (string) name of the team of the vehicle's driver
--
function on_random_vehicle_killed( function_name )
	on_random_obj_killed_do( function_name, 3 )
end

-- Open an interface dialog box.
--
-- title_tag:	(string) identifying tag for the title text
-- body_tag:	(string) identifying tag for the body text
-- tag1:		(string) identifying tag for selection 1 text
-- tag2:		(string) identifying tag for selection 2 text
--
-- returns:		(integer) index corresponding to which option was selected (0 corresponds to the first option, 1 corresponds to the second option, or -1 if the dialog was forced closed)
--
function open_vint_dialog(title_tag, body_tag, tag1, tag2)
	open_vint_dialog_do(title_tag, body_tag, tag1, tag2)

	local		check_value = open_vint_dialog_check_done()

	while (check_value == -2) do
		thread_yield()
		check_value = open_vint_dialog_check_done()
	end

	return check_value
end

-- Add members to the player's party.
--
-- names:	(one or more strings) names of NPCs to add to the player's party
-- player:	(string, optional) name of the player to add party members to (defaults to closest player)
--
-- This function will automatically dismiss followers to make room for the specified NPCs.
--
-- Example:
--
--		party_add("NPC1", "NPC2", "NPC3")
--
-- Adds three NPCs to the closeset player’s party, "NPC1", "NPC2", and "NPC3".
--
function party_add(...)
	local player = CLOSEST_PLAYER
	
	if is_player_tag(arg[arg.n]) then
		player = arg[arg.n]
		arg.n = arg.n - 1
	end
		
	party_add_do(player, arg, false)
end

-- Add members to the player's party, but only if there is room.
--
-- names:	(one or more strings) names of NPCs to add to the player's party
-- player:	(string, optional) name of the player to add party members to (defaults to closest player)
--
function party_add_optional(...)
	local player = CLOSEST_PLAYER
	
	if is_player_tag(arg[arg.n]) then
		player = arg[arg.n]
		arg.n = arg.n - 1
	end
		
	party_add_do(player, arg, true)
end

function party_add_ignore_limits(...)
	local player = CLOSEST_PLAYER
	
	if is_player_tag(arg[arg.n]) then
		player = arg[arg.n]
		arg.n = arg.n - 1
	end
		
	party_add_do(player, arg, false, true)
end


-- Dismiss members from the player's party
--
-- names:	(one or more strings) names of NPCs to remove from the player's party
--
-- Example:
--
--		party_dismiss("NPC1", "NPC2", "NPC3")
--
-- Dismisses three NPCs from the player’s party, "NPC1", "NPC2", and "NPC3".
--
function party_dismiss(...)
	party_dismiss_do(arg)
end

-- Override an NPC's persona on a per-situation basis.
--
-- name:			(string) name of the NPC
-- situation:	(string, or table of strings) persona situation(s) to override (as defined in persona_situations.xtbl)
-- audio:		(string, optional) audio file to force play, or "" to override with silence (defaults to "")
-- count:		(integer, optional) number of times the override should occur, or -1 to override indefinitely (defaults to -1)
--
-- The specified audio will play in the specified situation instead of the default voice line(s) defined in persona.xtbl.
--
function persona_override_character_start(character, situation, audio, count)

	if type(situation) == "table" then
		for i, persona_situation in pairs(situation) do
			local trigger_prefix = persona_trigger_get_player_prefix(character)
			persona_override_character_start_do(character, persona_situation, trigger_prefix .. audio, count)
		end
	else
		local trigger_prefix = persona_trigger_get_player_prefix(character)
		persona_override_character_start_do(character, situation, trigger_prefix .. audio, count)
	end

end

-- Reset the situational persona overrides for an NPC.
--
-- name:			(string) name of the NPC
-- situation:	(string, or table of strings) persona situation(s) to reset back to normal (as defined in persona_situations.xtbl)
--
function persona_override_character_stop(character, situation)

	if type(situation) == "table" then
		for i, persona_situation in pairs(situation) do
			persona_override_character_stop_do(character, persona_situation)
		end
	else
		persona_override_character_stop_do(character, situation)
	end

end

-- Override a group of personas for a single situation.
--
-- persona_list:	(string, or table of strings) names of personas to override
-- situation:		(string, or table of strings) persona situation(s) to override (as defined in persona_situations.xtbl)
-- tag_suffix:		(string) common trigger suffix
--
-- Example:
--
--	The following 3 lines:
--
--		EX_PERSONAS	=	{	["AM_Gang1"]	=	"AMGNG1";
--								["AM_Gang2"]	=	"AMGNG2";
--							}
--		persona_override_group(EX_PERSONAS, POT_SITUATIONS[POT_ATTACK], "EX01_ATTACK")
--
--	Are equivalent to:
--
--		persona_override_persona_start("AM_Gang1", "threat - alert (group attack)",	"AMGNG1_EX01_ATTACK")
--		persona_override_persona_start("AM_Gang1", "threat - alert (solo attack)",		"AFGNG1_EX01_ATTACK")
--		persona_override_persona_start("AM_Gang2", "threat - alert (group attack)",	"AMGNG2_EX01_ATTACK")
--		persona_override_persona_start("AM_Gang2", "threat - alert (solo attack)",		"AFGNG2_EX01_ATTACK")
--
-- Generally this function will be used with one of 4 predefined gang persona tables:
--
--		BROTHERHOOD_PERSONAS
--		RONIN_PERSONAS
--		SAINTS_PERSONAS
--		SAMEDI_PERSONAS
--
function persona_override_group_start(persona_list, situation, tag_suffix)
	for persona, tag_prefix in pairs(persona_list) do
		persona_override_persona_start(persona, situation, tag_prefix .. "_" .. tag_suffix)
	end
end

-- Reset the situational override for a group of personas.
--
-- persona_list:	(string, or table of strings) names of personas to override
-- situation:		(string, or table of strings) persona situation(s) to override (as defined in persona_situations.xtbl)
--
function persona_override_group_stop(persona_list, situation)
	for persona, tag_prefix in pairs(persona_list) do
		persona_override_persona_stop(persona, situation)
	end
end

-- Override all script NPCs with a particular persona in a given situation (or situations).
--
-- persona:		(string) name of the persona
-- situation:	(string, or table of strings) persona situation(s) to override (as defined in persona_situations.xtbl)
-- audio:		(string, optional) audio file to force play, or "" to override with silence (defaults to "")
-- count:		(integer, optional) number of times the override should occur, or -1 to override indefinitely (defaults to -1)
--
function persona_override_persona_start_old(persona, situation, audio, count)

	if type(situation) == "table" then
		for i, persona_situation in pairs(situation) do
			persona_override_persona_start_do(persona, persona_situation, audio, count)
		end
	else
		persona_override_persona_start_do(persona, situation)
	end

end

-- Reset all script NPCs with a particular persona in a given situation (or situations).
--
-- persona:		(string) name of the persona
-- situation:	(string, or table of strings) persona situation(s) to reset (as defined in persona_situations.xtbl)
--
function persona_override_persona_stop_old(persona, situation)

	if type(situation) == "table" then
		for i, persona_situation in pairs(situation) do
			persona_override_persona_stop_do(persona, persona_situation)
		end
	else
		persona_override_persona_stop_do(persona, situation)
	end

end

-- Get the prefix that should be prepended to the character's persona triggers.
--
-- name:		(string) name of the character
--
--	returns:	(string) prefix to prepend to the trigger
-- 
function persona_trigger_get_player_prefix(name)

	local voice_prefixes = {[0] = "WM", [1] = "BM", [2] = "WMA", [3] = "WF", [4] = "BF", [5] = "HF", [6] = "Z"}
	local trigger_prefix = ""

	if(character_is_player(name)) then
		local player_voice_prefix = voice_prefixes[player_get_custom_voice(name)]
		if(player_voice_prefix ~= nil) then
			trigger_prefix = player_voice_prefix
		end
	end

	return trigger_prefix

end

-- Make a player take another character as a human shield.
--
-- player:		(string) name of the player that will take a human shield
-- victim:		(string) name of target
-- tele_victim: (bool, optional) Teleport the victim in range if necessary? (default true)
--
-- returns:		(bool) true if the grab worked, false if it failed.
function player_take_human_shield( player, victim, tele_victim )
	
	if (player == nil or player == "" or victim == nil or victim == "") then
		return false
	end
	
	if not player_take_human_shield_do( player, victim, tele_victim ) then
		return false
	end

   -- loop as long as grabber and grabee are alive until we've succeeded
   while ( character_is_dead( player ) == false and
           character_is_dead( victim ) == false and
	   character_take_human_shield_check_done( player, victim) == false) do
      thread_yield();
   end
   
   return character_has_specific_human_shield( player, victim )
end

-- Take a screenshot and stores the output file on the kit.
--
-- filename:	(string, optional) filename to use for screenshot, excluding the file extension (default filename is MMDD_screenNNN, where MM is the month, DD is the date, and NNN is an incrementing count)
--
function screenshot(...)
	if (arg.n > 0) then
		screenshot_do(arg[1])
	else
		screenshot_do("")
	end

	while (not(screenshot_check_done())) do
		thread_yield()
	end
end

-- Determine the synchronization type from a player name.
--
-- player_name:	(string) name of the player
--
-- returns:			(enumeration) SYNC_REMOTE, if the player is REMOTE_PLAYER; SYNC_LOCAL, if the player is LOCAL_PLAYER; else SYNC_ALL
--
function sync_from_player(player_name)
	if player_name == REMOTE_PLAYER then
		return SYNC_REMOTE
	end
	if player_name == LOCAL_PLAYER then
		return SYNC_LOCAL
	end
	
	return SYNC_ALL
end

-- Teleport both the local and remote players.
--
-- local_player_nav:		(string) name of the navpoint to teleport the local player to
-- remote_player_nav:	(string) name of the navpoint to teleport the remote player to
-- exit_vehicles:			(boolean, optional) set to true to force the players to exit from whatever vehicle they are in (defaults to false)
-- check_for_obstacles:	(boolean, optional) set to true to check for obstacles in the way at the spawn location, false otherwise. Only valid for NPCs. (IF SET TO FALSE, THE HUMAN MAY BE TELEPORTED INTERSECTING WITH ANOTHER OBJECT) (defaults to true) 
-- stick_to_ground:		(boolean, optional) Set to true if the character (NPC only) should be stuck to the ground when teleporting. Only set to false in special case situations, if you're unsure you probably want to use the default. (defaults to true)
--
function teleport_coop( local_player_nav, remote_player_nav, exit_vehicles, check_for_obstacles, stick_to_ground )

	assert_screen_is_faded_out() -- Assert that the screen is completely faded out at this point - mission responsibility.
	
	local reset_camera_orient = true
	local offset_x = 0
	local offset_y = 0
	local offset_z = 0

	if (coop_is_active()) then
		teleport( REMOTE_PLAYER, remote_player_nav, exit_vehicles, reset_camera_orient, offset_x,
			offset_y, offset_z, check_for_obstacles, stick_to_ground )
	end

	teleport( LOCAL_PLAYER, local_player_nav, exit_vehicles, reset_camera_orient, offset_x,
			offset_y, offset_z, check_for_obstacles, stick_to_ground )

	if (coop_is_active()) then
		waiting_for_player_dialog( true )
		repeat thread_yield() until (teleport_check_done(REMOTE_PLAYER) or coop_is_active() == false)
		waiting_for_player_dialog( false )
	end		
	
	repeat thread_yield() until teleport_check_done(LOCAL_PLAYER)
end

-- Block until a single thread or table of threads has completed processing
--
-- thread_handle:	(number or table) handle to a thread, table of handles to a thread, table of tables, etc...
--
function threads_wait_for_completion(thread_handle)
	local ret_val = thread_handle

	if (type(thread_handle) == "number") then
		while (not thread_check_done(thread_handle)) do
			thread_yield()
		end
		ret_val = INVALID_THREAD_HANDLE
	elseif (type(thread_handle) == "table") then
		for i,handle in pairs(thread_handle) do
			ret_val[i] = threads_wait_for_completion(handle)
		end
	end

	-- Returns a copy with the completed threads set to INVALID_THREAD_HANDLE
	return ret_val
end

-- Make a character turn to face an object (or turn to face the same direction as the object).
--
-- name:		(string) name of the character
-- target:	(string) name of the object (can be a navpoint, or character, or other scripted object)
-- orient:	(boolean, optional) set to true to make the character face the same direction that the object is facing, or false to make the character face the object (defaults to false)
--
-- This function blocks until the character has finished turning.
--
function turn_to(name, target, orient)
	while (not(character_is_ready(name))) do
		thread_yield()
	end
	
	turn_to_do(name, target, orient)

	while (not(turn_to_check_done(name))) do
		thread_yield()
	end
end

-- Make a character enter vehicle.
--
-- name:							(string) name of the character
-- vehicle_name:				(string) name of the vehicle
-- seat:							(integer, optional) index of the seat to enter (defaults to 0, the driver's seat)
-- block:						(boolean, optional) set to true to block until vehicle entry is finished (defaults to true)
-- force_hijack_success:	(boolean, optional) set to true to force any hijacks to automatically succeed (defaults to false)
-- block_until_visual:		(boolean, optional) if blocking, only block until the human is visualy in vehicle instead of waiting until the enter is completely finished (defaults to false)
-- override_action:			(string, optional) action to play instead of standard vehicle entry actions
-- special_entry:				(boolean, optional) if this is set, the special_entry flag is required for the seat used.  This can be used to differentiate seats that should only be used in scripted situations.
-- skip_ai_entry_mode:		(boolean, optional) defaults to false
-- skip_pathfind:			(boolean, optional) defaults to false
-- hop_over:				(boolean, optional) defaults to false
function vehicle_enter(name, vehicle_name, seat, block, force_hijack_success, block_until_visual, override_action, special_entry, skip_ai_entry_mode, skip_pathfind, hop_over)
   if ( force_hijack_success == nil ) then
      force_hijack_success = false
   end
	local s = vehicle_enter_do(name, vehicle_name, false, seat, force_hijack_success, override_action, special_entry, skip_ai_entry_mode, skip_pathfind, hop_over)
	local r
	
	-- don't bother checking if it was successful unless the request was successful 
	if (s and (block or (block == nil))) then
		repeat
			thread_yield()
			r = vehicle_enter_check_done(name, block_until_visual, vehicle_name)
		until r ~= 0
	else
		return s
	end
	
	if r == 2 then
		return false
	else
		return true
	end
end

-- Make a group of NPCs enter a vehicle.
--
-- names:			(string, or table of strings) names of characters entering the vehicle
-- vehicle_name:	(string) name of vehicle to enter
-- 
function vehicle_enter_group(...)
	local npcs = {}
	local vehicle_name

	if type(arg[1]) == "table" then
		npcs = { unpack(arg[1]) }
		npcs[ "n" ] = sizeof_table( npcs )
		
		vehicle_name = arg[2]
	else		
		vehicle_name = arg[ arg.n ]
		
		npcs = arg;
		npcs.n = npcs.n - 1
	end

	if (vehicle_enter_group_do(vehicle_name, false, npcs)) then
		while (not(vehicle_enter_group_check_done(vehicle_name, false, npcs))) do
			thread_yield()
		end
	end
end

-- Teleport a group of NPCs directly into a vehicle
--
-- names:			(string, or table of strings) names of characters to teleport
-- vehicle_name:	(string) name of vehicle
--
-- This function blocks until all the NPCs have finished teleporting.
-- 
function vehicle_enter_group_teleport(...)
	local npcs = {}
	local vehicle_name

	if type(arg[1]) == "table" then
		npcs = { unpack(arg[1]) }
		npcs[ "n" ] = sizeof_table( npcs )
		
		vehicle_name = arg[2]
	else		
		vehicle_name = arg[ arg.n ]
		
		npcs = arg;
		npcs.n = npcs.n - 1
	end
	
	if (vehicle_enter_group_do(vehicle_name, true, npcs)) then
		while (not(vehicle_enter_group_check_done(vehicle_name, true, npcs))) do
			thread_yield()
		end
	end
end

-- Teleport a character directly into a vehicle.
--
-- name:				(string) name of the character
-- vehicle_name:	(string) name of the vehicle
-- seat:				(integer, optional) index of the seat to enter (defaults to 0, the driver's seat)
-- block:			(boolean, optional) set to true to block until vehicle entry is finished (defaults to true)
-- exit_current:	(boolean, optional) set to true if the human should vacate their current vehicle (requires blocking) (defaults to true)
-- special_entry:	(boolean, optional) if this is set, the special_entry flag is required for the seat used.  This can be used to differentiate seats that should only be used in scripted situations.
--
function vehicle_enter_teleport(name, vehicle_name, seat, block, exit_current, special_entry)
	if (block == nil) then
		block = true
	end

	if (exit_current == nil) then
		exit_current = true
	end

	if (exit_current and block) then
		if character_is_entering_vehicle(name) then
			vehicle_enter_cancel(name)
			while character_is_entering_vehicle(name) do
				thread_yield()
			end
		elseif character_is_exiting_vehicle(name) then
			while (not(vehicle_exit_check_done(name))) do
				thread_yield()
			end
		end
	
		local current_name = get_char_vehicle_name(name)
		if (current_name ~= vehicle_name) then
			-- this blocks
			vehicle_exit_teleport(name, false)
		end
	end

	local s = vehicle_enter_do(name, vehicle_name, true, seat, false, nil, special_entry)
	local r
	
	-- don't bother checking if it was successful unless the request was successful
	if (s and block) then
		repeat
			thread_yield()
			r = vehicle_enter_check_done(name, false, vehicle_name)
		until r ~= 0
	else
		return s
	end
	
	if r == 2 then
		return false
	else
		return true
	end
end

-- Make a character exit a vehicle.
--
-- name:				(string) name of the character
-- not_enterable:		(boolean, optional) set to true to make the vehicle unenterable (defaults to false)
-- override_action:		(string, optional) action to play instead of standard vehicle entry actions
--
-- This function blocks until the character has exited the vehicle.
--
function vehicle_exit(name, not_enterable, override_action)
	if (vehicle_exit_do(name, false, not_enterable, false, override_action)) then
		while (not(vehicle_exit_check_done(name))) do
			thread_yield()
		end
	end
end

-- Make a character exit a vehicle by diving.
--
-- name:				(string) name of the character
-- not_enterable:	(boolean, optional) set to true to make the vehicle unenterable (defaults to false)
--
-- This function blocks until the character has exited the vehicle.
--
function vehicle_exit_dive(name, not_enterable)
	if (vehicle_exit_do(name, false, not_enterable, true)) then
		while (not(vehicle_exit_check_done(name))) do
			thread_yield()
		end
	end
end

-- Make a character exit a vehicle by teleporting.
--
-- name:				(string) name of the character
-- not_enterable:	(boolean, optional) set to true to make the vehicle unenterable (defaults to false)
--
-- This function blocks until the character has exited the vehicle.
--
function vehicle_exit_teleport(name, not_enterable)
	if (vehicle_exit_do(name, true, not_enterable, false)) then
		while (not(vehicle_exit_check_done(name))) do
			thread_yield()
		end
	end
end

-- Make a group of NPCs exit a vehicle.
--
-- npc_group:	(table of strings) names of characters exiting the vehicle
-- 
function vehicle_exit_group(npc_group, not_enterable)
	if (vehicle_exit_group_do(false, false, not_enterable, npc_group)) then
		while (not(vehicle_exit_group_check_done(npc_group))) do
			thread_yield()
		end
	end
end

-- Make a group of NPCs dive out of a vehicle.
--
-- npc_group:	(table of strings) names of characters exiting the vehicle
-- 
function vehicle_exit_group_dive(npc_group, not_enterable)
	if (vehicle_exit_group_do(false, true, not_enterable, npc_group)) then
		while (not(vehicle_exit_group_check_done(npc_group))) do
			thread_yield()
		end
	end
end

-- Teleport a group of NPCs directly out of a vehicle
--
-- npc_group:	(table of strings) names of characters to teleport
-- 
function vehicle_exit_group_teleport(npc_group, not_enterable)
	if (vehicle_exit_group_do(true, false, not_enterable, npc_group)) then
		while (not(vehicle_exit_group_check_done(npc_group))) do
			thread_yield()
		end
	end
end

-- Make a vehicle pathfind through a series of navpoints.
--
-- name:					(string) name of the vehicle
-- path:					(string) name of scripted path or navpoint to pathfind through
-- use_navmesh:		(boolean, optional) set to true if the car should pathfind using the navmesh, or false if it should pathfind using traffic splines (defaults to false)
-- stop_at_goal:		(boolean, optional) set to true if the vehicle should stop upon reaching the final destination (defaults to true)
-- force_path:			(boolean, optional) set to true to ignore the current position to support looping (defaults to false)
-- suppress_errors:	(boolean, optional) set to true to suppress errors (defaults to false)
--
function vehicle_pathfind_to(name, path, use_navmesh, stop_at_goal, force_path, suppress_errors)
	if (use_navmesh == nil) then
		use_navmesh = false;
	end

	if (stop_at_goal == nil) then
		stop_at_goal = true
	end
	
	if (force_path == nil) then
		force_path = false
	end
	
	if (suppress_errors == nil) then
		suppress_errors = false;
	end

	if (use_navmesh) then
		if (not vehicle_pathfind_navmesh_do(name, path, force_path, stop_at_goal, suppress_errors, 0)) then
			return false
		end
	else
		if (not vehicle_pathfind_to_do(name, path, stop_at_goal, suppress_errors)) then
			return false
		end
	end

	local check_done = vehicle_pathfind_check_done(name)

	while ( check_done == 0) do
		thread_yield()
		check_done = vehicle_pathfind_check_done(name)
	end

	return check_done == 1
end

-- Make a vehicle pathfind through a series of navpoints (using the navmesh), starting from a specific point along the path.
--
-- name:					(string) name of the vehicle
-- start_index:		(integer) index into the path to start from
-- path:					(string) name of scripted path or navpoint to pathfind through
-- stop_at_goal:		(boolean, optional) set to true if the vehicle should stop upon reaching the final destination (defaults to true)
-- force_path:			(boolean, optional) set to true to ignore the current position to support looping (defaults to false)
-- suppress_errors:	(boolean, optional) set to true to suppress errors (defaults to false)
--
function vehicle_navmesh_pathfind_to_starting_from(name, start_index, path, stop_at_goal, force_path, suppress_errors)

	if (stop_at_goal == nil) then
		stop_at_goal = true
	end

	if (force_path == nil) then
		force_path = false
	end

	if (suppress_errors == nil) then
		suppress_errors = false
	end

	if (not vehicle_pathfind_navmesh_do(name, path, force_path, stop_at_goal, suppress_errors, start_index)) then
		return false
	end

	local check_done = vehicle_pathfind_check_done(name)

	while ( check_done == 0) do
		thread_yield()
		check_done = vehicle_pathfind_check_done(name)
	end

	return check_done == 1
end

-- Make the vehicle follow the given path
--
-- vehicle:				(string) name of vehicle
-- destination:			(string) navpoint name
-- use_navmesh:			(boolean, optional) if true navmesh will be used for pathfinding, if false will only use traffic splines (defaults to false) 
-- mission_critical: 	(boolean, optional) if true vehicle will be teleported to destination if pathfinding fails (defaults to true)
--
function vehicle_drive_path(vehicle, destination, use_navmesh, mission_critical)
	local success = true
	local stop_at_goal = false
	local pathfind_success = false
	
	if use_navmesh then
		pathfind_success = vehicle_pathfind_to(vehicle, destination, use_navmesh, stop_at_goal)
	else
		pathfind_success = vehicle_turret_base_to(vehicle, destination, stop_at_goal)
	end
	
	if pathfind_success == false then
		local number_of_failures = 1
		local max_number_of_failures = 3
		-- if the first pathfind fails lets try a few more times
		while number_of_failures < max_number_of_failures do
			if use_navmesh then
				pathfind_success = vehicle_pathfind_to(vehicle, destination, use_navmesh, stop_at_goal)
			else
				pathfind_success = vehicle_turret_base_to(vehicle, destination, stop_at_goal)
			end
			
			if pathfind_success == true then
				break
			else
				number_of_failures = number_of_failures + 1
				delay(1.0)
			end
		end
		if number_of_failures >= max_number_of_failures then
			if mission_critical == nil or mission_critical then
				 -- pathfind failed so just teleport to the next stop
				teleport_vehicle(vehicle, destination)
			else
				-- we couldn't pathfind to the destination and we didn't teleport, this isn't good
				success = false 
			end
		end
	end
	return success
end

-- Make a vehicle come to a stop.
--
-- name:			(string) name of the vehicle
-- dont_block:	(boolean, optional) set to true if the function should not block while the vehicle is coming to a stop (defaults to false)
--
function vehicle_stop( name, dont_block )

	if( (name == nil) or (not vehicle_exists(name)) or  (vehicle_is_destroyed(name)) ) then
		return
	end

	vehicle_stop_do( name )
	
	while( (not dont_block) and get_vehicle_speed(name) > 0 ) do
		thread_yield()
	end
end

-- Make a vehicle use turret mode to move along a path or to a navpoint.
-- 
-- name:			(string) name of the vehicle
-- path:			(string) name of scripted_path to follow or navpoint to go to
-- stop_at_goal:	(boolean, optional) set to true if the vehicle should stop upon reaching the final destination (defaults to true)
--
-- A driver must be added to the car before calling vehicle_turret_base_to(). If the vehicle does not start on a rail,
-- it will transition to rail and continue pathing from that position.
--
-- Example:
--
--		vehicle_turret_base_to("car", "heli_path 001", true)
--
-- Sets "car" driving to navp1, and then on to navp2, stopping at goal.
--
function vehicle_turret_base_to(name, path, stop_at_goal)
	
	-- Wait until the resource is loaded.
	-- character_wait_for_loaded_resource(name)
				
	if (vehicle_turret_base_to_do(name, path, stop_at_goal)) then
		local check_done = vehicle_pathfind_check_done(name)
		
		while ( check_done == 0) do
			thread_yield()
			check_done = vehicle_pathfind_check_done(name)
		end
		
		return check_done == 1
	else
		return false
	end
end

-- This function blocks until all player have entered the specified vehicle
--
-- vehicle_name:	(string) Name of the vehicle to wait for the players to enter
-- lock_players_in:	(boolean, optional) Set to TRUE if the players should not be allowed to exit the vehicle once both players are inside.
--
-- NOTE:	If lock_players_in is set to TRUE, all players will be flagged as not able to exit vehicles when 
--			this function returns.
--			- Make sure to re-enable vehicle exiting for players before mission exit, with set_player_can_exit_vehicles()
--					
function vehicle_wait_for_players_to_enter(vehicle_name, lock_players_in)
	while(vehicle_is_destroyed(vehicle_name) == false) do
		-- Check if all players are in the vehicle
		local all_players_in_vehicle = true
		if (not character_is_in_vehicle(LOCAL_PLAYER, vehicle_name)) then
			all_players_in_vehicle = false
		else
			if (coop_is_active() and not character_is_in_vehicle(REMOTE_PLAYER, vehicle_name)) then
				all_players_in_vehicle = false
			end
		end
		
		-- If all players are in the vehicle, return
		if (all_players_in_vehicle) then
			break
		end
		
		thread_yield()
	end
	
	-- Maybe lock the players into the vehicle
	if (lock_players_in == true) then
		local seat = nil
		local block = false
		local exit_current = true
	
		-- Disable vehicle exit for the players and teleport them into the vehicle to ensure they are indeed in the vehicle
		set_player_can_exit_vehicles(LOCAL_PLAYER, false)
		vehicle_enter_teleport(LOCAL_PLAYER, vehicle_name, seat, block, exit_current)
		if (coop_is_active()) then
			set_player_can_exit_vehicles(REMOTE_PLAYER, false)
			vehicle_enter_teleport(REMOTE_PLAYER, vehicle_name, seat, block, exit_current)
		end
	end
end

--[[
	process enemy set (depricated - use kill_list)
	Ver. 1.1
			- moved setup into its own function.  This can be called independently for greater flexability.
			- added cleanup call.  This will cleanup callbacks and kill markers.  This can stop calls in progress.
	Ver. 1.00
	
	Mark all enemies with target markers. (not yet implemented)
	Keep a count of total enemies and enemies killed.
	Continue when all enemies are killed.
	
	Setup:
	a list of all of the enemies that need to be killed
		<group_name>_GROUP_TABLE	= {	"Script_NPC 001", "Script_NPC 002", "Script_NPC 003",
													"Script_NPC 004" }
	
	After the enemies are spawned, call the function (runs until all are killed)
		Process_enemy_set(<group_name>_GROUP_TABLE)
	
	Cleanup enemies on your own
]]--

-- *** Defines
	Process_enemy_set_cleared		= false
	Num_enemies_alive					= 0
	Num_enemies_to_kill				= 0
	Process_enemy_set_objective_helptext	= ""
	
-- *** Functions

-- Wait until a group of enemies is killed before continuing
--
-- enemy_table:			(strings, or table of strings) list of enemies to kill
-- mission_helptext:		(string, optional) mission help to display
-- objective_helptext:	(string, optional) X/Y helptext to display
--
function process_enemy_set(enemy_table, mission_helptext, objective_helptext)
	
	enemy_set_setup(enemy_table, true)

	-- Display the help text
	if(mission_helptext) then
		mission_help_table(mission_helptext)
	end
	
	-- Display the objective text
	if(objective_helptext) then
		Process_enemy_set_objective_helptext = objective_helptext
		objective_text(0, Process_enemy_set_objective_helptext, Num_enemies_to_kill - Num_enemies_alive, Num_enemies_to_kill)
	end
	
	while (not Process_enemy_set_cleared) do
		thread_yield()
	end
	
	-- make sure everything is cleaned up
	enemy_set_cleanup(enemy_table)

end

-- Setup all of the enemies to be killed
--
-- enemy_table:				(strings, or table of strings) list of enemies to kill
-- target_closest_player	(bool)	if true, then every enemy in the set will target the closest player
--
function enemy_set_setup(enemy_table, target_closest_player)
	Process_enemy_set_cleared = false

	-- Assign enemy callbacks
	Num_enemies_alive = 0
	for i, enemy in pairs(enemy_table) do
		if(not character_is_dead(enemy)) then
			-- set a callback to know when the enemy is killed
			on_death("process_enemy_set_killed", enemy)
			marker_add(enemy, MINIMAP_ICON_KILL, OI_ASSET_KILL, OI_FLAGS_DEFAULT, SYNC_ALL)
			if (target_closest_player) then
				ai_add_enemy_target(enemy, CLOSEST_PLAYER, 2)
			end
			Num_enemies_alive = Num_enemies_alive + 1
		end
	end
	
	-- Check the edge condition if all the enemies are already dead
	if (Num_enemies_alive == 0) then
		Process_enemy_set_cleared = true
	end

	-- Setup kill tracking numbers
	Num_enemies_to_kill = sizeof_table(enemy_table)
end

-- Remove callbacks and markers on the enemy set
--
-- enemy_table:			(strings, or table of strings) list of enemies to kill
--
function enemy_set_cleanup(enemy_table)
	-- Clear enemy callbacks
	for i, enemy in pairs(enemy_table) do
		-- cleanup the callback
		on_death("", enemy)
		marker_remove(enemy, SYNC_ALL)
	end
	Process_enemy_set_cleared = false
end

-- *** Callbacks
-- Enemy killed callback (counts dead enemies)
--
-- enemy:	(string) name of killed NPC
--
function process_enemy_set_killed(enemy)
	marker_remove(enemy)
	on_death("",enemy)
	Num_enemies_alive = Num_enemies_alive - 1
	if (Num_enemies_alive < 1) then
		Process_enemy_set_cleared = true
		if (Process_enemy_set_objective_helptext ~= "") then
			objective_text_clear(0)
		end
		Process_enemy_set_objective_helptext = ""
	else
		if (Process_enemy_set_objective_helptext ~= "") then
			objective_text(0, Process_enemy_set_objective_helptext, Num_enemies_to_kill - Num_enemies_alive, Num_enemies_to_kill)
		end
	end
end

--[[
	END process enemy set
]]--

--------------------------------------------------------------------------------------------------
								--[[**********************]]--
								--[[                      ]]--
								--[[  Trigger functions   ]]--
								--[[                      ]]--
								--[[ NOTE:                ]]--
								--[[   uses convo system  ]]--
								--[[**********************]]--
				
	--[[	Trigger Data template
	<CAP_MISSION_NAM>_trigger = {
		--<trigger_name> = {
		--	name = "<trigger_name>_trigger",
		--	hit = false,
		-- 	last_hit_by = nil (set to the last human to enter the trigger in the default trigger callback)
		--  (optional)callback = "<mission_name>_function_name_cb" or "" for no callback
		--	(optional)exit_callback = "<mission_name>_function_name_cb" (defaults to no callback)
		--	(optional)marker = TRIGGER_LOCATION or TRIGGER_USE or custom or don't include for no marker
		--  (optional)waypoint = true,
		--  (optional)teleport_to = {
		--						host = "host_nav",
		--						client = "client_nav" 
		--					},		
		--	(optional)conversation = <CAP_MISSION_NAM>_convo.convo_name  -- play a conversation
		--	(optional)next_trigger = "next_trigger_name" sets up next trigger when triggered (breadcrumbs)
		--},
	}
	]]
		
	TRIGGER_LOCATION = { 
		minimap_icon_name = MINIMAP_ICON_LOCATION,
		ingame_effect_name = INGAME_EFFECT_LOCATION,
		object_indicator_id = OI_ASSET_LOCATION,
		object_indicator_flags = OI_FLAGS_LOCATION,
		sync_type = SYNC_ALL,
		-- (nil for default) fade_dist
	}
	TRIGGER_USE = { 
		minimap_icon_name = MINIMAP_ICON_USE,
		ingame_effect_name = INGAME_EFFECT_CHECKPOINT,
		object_indicator_id = OI_ASSET_USE,
		object_indicator_flags = OI_FLAGS_FULL,
		sync_type = SYNC_ALL,
		-- (nil for default) fade_dist
	}
Current_trigger_list = {}

-- Setup the list of triggers
function triggers_startup(trigger_list)
	Current_trigger_list = trigger_list
end
-- Shut down all triggers and clear the list
function triggers_shutdown()
	trigger_clear_all()
	Current_trigger_list = {}
end

-- Enable a trigger and set any markers/waypoints needed
--
-- trigger_table:		(table) information about how to setup this trigger
--							
function trigger_setup( trigger_table )

	-- clear hit flag
	trigger_table.hit = false
	trigger_table.last_hit_by = nil
	
	-- set callback (explicitly setting "" will serve as no callback)
	if trigger_table.callback ~= nil then
		on_trigger(trigger_table.callback, trigger_table.name)
	else
		on_trigger("trigger_cb", trigger_table.name)	
	end
	
	-- set exit callback (if there is one)
	if trigger_table.exit_callback ~= nil and trigger_table.exit_callback ~= "" then
		on_trigger_exit(trigger_table.exit_callback, trigger_table.name)
	end
	
	-- enable the trigger
	trigger_enable(trigger_table.name, true)
	
	-- set marker information
	if trigger_table.marker ~= nil then
		marker_add_trigger(trigger_table.name, trigger_table.marker.minimap_icon_name, trigger_table.marker.ingame_effect_name, trigger_table.marker.object_indicator_id, trigger_table.marker.object_indicator_flags, trigger_table.marker.sync_type, trigger_table.marker.fade_dist)
	end
	
	-- set a waypoint
	if trigger_table.waypoint == true then
		mission_waypoint_add(trigger_table.name)
	end
end

-- Disable trigger and cleanup any markers on the trigger
--
-- trigger:		(string) name of trigger to cleanup
--
function trigger_clear(trigger)
	on_trigger("", trigger)
	on_trigger_exit("", trigger)
	trigger_enable(trigger, false)
	marker_remove_trigger(trigger, SYNC_ALL)
end

-- clear all triggers
function trigger_clear_all()
	for i,trigger_table in pairs(Current_trigger_list) do
		trigger_clear(trigger_table.name)
	end
	mission_waypoint_remove()
end

-- get the trigger table from the trigger name
--
-- trigger:		(string) trigger name
--
function trigger_get_table(trigger)
	local trigger_table
	for i,trig in pairs(Current_trigger_list) do
		if trig.name == trigger then
			trigger_table = trig
		end
	end
	return trigger_table
end

-- basic trigger callback
-- NOTE:  linked to conversation system
--
-- human:		(string) name of human that tripped the trigger
-- trigger:		(string) name of the trigger
--
function trigger_cb(human, trigger)
	-- This may be called multiple times in the same frame.  Never create groups in a trigger callback.  Use show group instead.
	
	-- find this trigger
	local trigger_table = trigger_get_table(trigger)
	
	if trigger_table ~= nil then
		if trigger_table.hit == true then
			return
		end
		trigger_table.hit = true
		trigger_table.last_hit_by = human
		
		trigger_clear(trigger_table.name)
		
		if trigger_table.teleport_to ~= nil then
			mission_start_fade_out()
			teleport_coop( trigger_table.teleport_to.host, trigger_table.teleport_to.client, true )	
			mission_start_fade_in()			
		end
		
		if trigger_table.waypoint == true then
			mission_waypoint_remove()
		end
		
		-- Conversation system link
		if trigger_table.conversation ~= nil and trigger_table.conversation ~= "" then
			convo_start(trigger_table.conversation)
		end
		
		-- setup the next trigger (breadcrumbs)
		if trigger_table.next_trigger ~= nil then
			-- get the next trigger
			local next_trigger_table = trigger_get_table(trigger_table.next_trigger)
			
			if next_trigger_table ~= nil then
				-- setup the next trigger
				trigger_setup(next_trigger_table)
			end
		end
	end
end

--------------------------------------------------------------------------------------------------
								--[[**********************]]--
								--[[                      ]]--
								--[[  Persona functions   ]]--
								--[[                      ]]--
								--[[**********************]]--
	--[[	Conversation data template
	<CAP_MISSION_NAM>_persona = {
		<persona_name> = {
			persona_name = "<persona>",
			persona_id = INVALID_PERSONA_HANDLE,
		},
	}
	]]--
	
Persona_list = {}
								
-- load a 2d persona
--
-- persona_data:	(table) table containing persona_name and persona_id to load
--
function load_persona(persona_data)
	persona_data.persona_id = audio_persona_load_2d(persona_data.persona_name)
	Persona_list[persona_data.persona_name] = persona_data
end

-- clear a specific persona
--
-- persona_data:	(table) table containing persona_name and persona_id to clear
--
function clear_persona(persona_data)
	if (persona_data.persona_id ~= INVALID_PERSONA_HANDLE) then
		audio_persona_remove_2d(persona_data.persona_id)
		persona_data.persona_id = INVALID_PERSONA_HANDLE
	end
	Persona_list[persona_data.persona_name] = nil
end

-- clear all loaded personas
function clear_all_personas()
	for i, persona_data in pairs( Persona_list ) do
		clear_persona(persona_data)
	end
end

--------------------------------------------------------------------------------------------------
								--[[**********************]]--
								--[[                      ]]--
								--[[Conversation functions]]--
								--[[                      ]]--
								--[[**********************]]--
								
	--[[	Conversation data template
	<CAP_MISSION_NAM>_convo = {
		<conversation_name> = {
			name = "file_name without voice (_bm, _wm, _bf...",
			player_talks = true or false,
			handle = INVALID_CONVERSATION_HANDLE,
			convo_thread = INVALID_THREAD_HANDLE,
			max_wait_seconds = 60,	-- if the conversation doesn't complete before this time, kill it
			timer_thread = INVALID_THREAD_HANDLE,
			priority = CONVO_PRIORITY_HIGH or CONVO_PRIORITY_NORMAL or CONVO_PRIORITY_OPTIONAL
			(optional) persona_line = true,	-- this is a single line
			(required if persona_line) speaker_name = "name of speaker",	-- single line speaker (might be set before call to play is made?)
			(optional) persona_2d_line = true,	-- this is a single line played in 2d (disembodied voice)  NOTE:  Always waits for max_wait_seconds and persona must be loaded
			(required if persona_2d_line) speaker_persona_table = persona,	-- persona table of speaker
			(optional)phone_call = true,  -- this is a phone conversation (phone persona must be preloaded)
			(required if phone_call) receiving_call = true or false  -- auto-answer is always true in missions (until proven otherwise)
			
		},
	}
	]]
	
	--[[	Conversation queue data template
		<CAP_MISSION_NAM>_convo_queue = {
		start_drive_queue = { 
			{ delay = 2.0, convo = <CAP_MISSION_NAM>_convo.goto_<first_location> },
			{ delay = 4.0, convo = <CAP_MISSION_NAM>_convo.goto_<first_location>2 },
			{ delay = 3.0, convo = <CAP_MISSION_NAM>_convo.goto_<first_location>3 },
			{ delay = 5.0, convo = <CAP_MISSION_NAM>_convo.goto_<first_location>4 }
		},
		
	}
	]]
								
Current_convo_list = {}
convo_queue_thread = INVALID_THREAD_HANDLE
convo_phone_complete = false
convo_playing = ""	-- name of currently playing conversation

-- DEFINED VALUES
CONVO_PRIORITY_HIGH = 1
CONVO_PRIORITY_NORMAL = 2
CONVO_PRIORITY_OPTIONAL = 3

-- setup conversation list
function convo_startup(convo_list)
	convo_queue_thread = INVALID_THREAD_HANDLE
	convo_phone_complete = false
	convo_playing = ""
	Current_convo_list = convo_list
end
-- end all conversations and clear the list
function convo_shutdown()
	convo_end_all()
	Current_convo_list = {}
end

-- spawn the convo play thread for this conversation
--
-- convo_table:		(table) conversation information
--
function convo_start(convo_table)
	convo_table.convo_thread = thread_new("convo_play_thread", convo_table)
end

-- end the conversation and kill any threads playing the conversation
--
-- convo_table:		(table) conversation information
--
function convo_end(convo_table)
	-- kill any threads that might be running
	thread_kill(convo_table.convo_thread)
	thread_kill(convo_table.timer_thread)
	
	if convo_table.handle ~= INVALID_CONVERSATION_HANDLE then
		audio_conversation_end(convo_table.handle)
		convo_table.handle = INVALID_CONVERSATION_HANDLE
	end
	
	if convo_table.phone_call == true then
		audio_remove_mission_cellphone(convo_table.name)
	end
	
	if convo_table.persona_2d_line == true or convo_table.persona_line == true then
		if (convo_table.play_id ~= nil) then
			audio_stop(convo_table.play_id)
		end
	end
end

-- end all of the conversations
function convo_end_all()
	-- kill queue first so we don't start new conversations
	thread_kill(convo_queue_thread)
	convo_queue_thread = INVALID_THREAD_HANDLE
	
	for i,convo_table in pairs(Current_convo_list) do
		convo_end(convo_table)
	end
	convo_phone_complete = false
	
	convo_playing = ""
end

-- callback for when a phone call conversation is complete
function call_ended_cb()
	convo_phone_complete = true
end

-- Determine if a conversation is playing
--
-- returns:		true if playing or false if not
--
function convo_is_playing()
	local playing_conversation = false
	if convo_playing ~= nil and convo_playing ~= "" then
		playing_conversation = true
	end
	return playing_conversation
end

-- Wait for conversation to complete
-- (this may not work as desired with multiple conversations queued)
--
function convo_wait_for_end()
	while convo_is_playing() do
		delay(1.0)
	end
end

-- Start a list of conversations
--
-- queue_table:		(table) list of times and conversations to play in order
--
function convo_queue_start( queue_table )
	-- Multiple queues complicates things.  For now, this is not supported
	if convo_queue_thread ~= INVALID_THREAD_HANDLE then
		return
	end
	
	convo_queue_thread = thread_new("convo_queue_play_thread", queue_table)
end

-- stall until all conversations in the convo queue have been played
function convo_queue_wait_for_end()
	while not thread_check_done(convo_queue_thread) do
		delay(1.0)
	end
end

-- Thread to play all of the items in a conversation queue
--
-- queue_table:		(table) list of times and conversations to play in order
--
function convo_queue_play_thread(queue_table)
	for i, conversation in pairs(queue_table) do
		delay(conversation.delay)
		convo_start(conversation.convo)
		convo_wait_for_end()
	end
	convo_queue_thread = INVALID_THREAD_HANDLE
end

-- Thread to play the conversation with emergency kill timer
--
-- convo_table:		(table) conversation information
--
function convo_play_thread(convo_table)
	-- determine priority
	if convo_table.priority == CONVO_PRIORITY_HIGH then
		-- priority conversation
		-- kill any running conversation
		if convo_is_playing() then
			convo_end(convo_playing)
		end
	elseif convo_table.priority == CONVO_PRIORITY_NORMAL then
		-- normal conversation
		-- wait for currently playing conversation
		while convo_is_playing() do
			thread_yield()
		end
	else -- optional conversation
		-- if another conversation is playing, exit
		if convo_is_playing() then
			return
		end
	end
	
	-- Set conversation as playing
	convo_playing = convo_table
	
	-- start the backup timer thread
	convo_table.timer_thread = thread_new("delay", convo_table.max_wait_seconds)
	
	if convo_table.persona_2d_line == true then
		-- play the line
		convo_table.play_id = audio_play_persona_line_2d(convo_table.speaker_persona_table.persona_id, convo_table.name)
		thread_yield()
		-- we don't have a good check for done, so just wait out the timer
		delay(convo_table.max_wait_seconds)
	elseif convo_table.persona_line == true then
		-- play the line
		convo_table.play_id = audio_play_persona_line(convo_table.speaker_name, convo_table.name)
		thread_yield()
		while audio_persona_line_playing(convo_table.speaker_name) and (not thread_check_done(convo_table.timer_thread)) do
			thread_yield()
		end
	elseif convo_table.phone_call == true then
		-- do a phone call
		local auto_answer = true  -- missions always auto-answer
		convo_phone_complete = false
		audio_play_for_mission_cellphone(convo_table.name, convo_table.receiving_call, auto_answer, "", "call_ended_cb")
		
		while not convo_phone_complete and (not thread_check_done(convo_table.timer_thread)) do
			thread_yield()
		end
		
		audio_remove_mission_cellphone(convo_table.name)
	else -- conversation
		convo_table.handle = audio_conversation_load_direct(convo_table.name, convo_table.player_talks)
		
		audio_conversation_play(convo_table.handle)
		thread_yield()
		
		-- Wait for the conversation to end
		while audio_conversation_playing(convo_table.handle) and (not thread_check_done(convo_table.timer_thread)) do
			thread_yield()
		end
		audio_conversation_end(convo_table.handle)
		convo_table.handle = INVALID_CONVERSATION_HANDLE
	end
	
	-- clear the playing conversation
	convo_playing = ""
end

-- attempt to play all loaded conversations
function convo_test_all()
	for i, convo in pairs(Current_convo_list) do
		message("PLAYING "..convo.name, 3.0, false)
		convo_start(convo)
		convo_wait_for_end()
	end
end

--------------------------------------------------------------------------------------------------
								--[[**********************]]--
								--[[                      ]]--
								--[[ Kill List functions  ]]--
								--[[                      ]]--
								--[[**********************]]--

Current_kill_list = {}
Current_vehicle_kill_list = {}

-- setup kill list
function kill_list_startup()
	Current_kill_list = {}
	Current_vehicle_kill_list = {}
end
-- shut down kill list and clear list
function kill_list_shutdown()
	kill_list_clear_all()
	Current_kill_list = {}
	Current_vehicle_kill_list = {}
end

-- Add a single person or a table of people to list to be killed
--
-- npc_name:		(table or string) table of names or single name of character to add to the kill_list
-- icon_type:		(string) OI_ASSET_KILL or OI_ASSET_KILL_FULL
--
function kill_list_add( npc_name, icon_type )
	-- Recursive call to add individual members
	if (type(npc_name) == "table") then
		for i,member in pairs(npc_name) do
			kill_list_add( member, icon_type )
		end
		return
	end
	
	-- make sure it is still alive
	if character_is_dead(npc_name) then
		return
	end
		
	if icon_type == OI_ASSET_KILL then
		marker_add(npc_name, MINIMAP_ICON_KILL, OI_ASSET_KILL, OI_FLAGS_DEFAULT, SYNC_ALL)
	elseif icon_type == OI_ASSET_KILL_FULL then
		marker_add(npc_name, MINIMAP_ICON_KILL, OI_ASSET_KILL_FULL, OI_FLAGS_FULL, SYNC_ALL)
	else
		-- FAIL!  We won't know which guy to kill
		return
	end
	on_death("kill_list_member_dead_cb", npc_name)
	
	-- add the name to the kill_list
	Current_kill_list[ npc_name ] = npc_name
end

-- Add a single vehicle to list to be killed
-- NOTE: Passengers should be teleported into the vehicle before calling this.
--		Passengers will be made invulnerable and not allowed to leave.  If an NPC does manage to get out, he will forever be invulnerable.
--		The vehicle will be set to unjackable.
--		All passengers will be killed on destruction. Don't fill the vehicle with NPCs (too many ragdolls).
--		Do not add the NPCs to the kill list.
--
-- vehicle_name:	(string) single name of vehicle to add to the kill_list (no recursive call)
-- icon_type:		(string) OI_ASSET_KILL or OI_ASSET_KILL_FULL
--
function kill_list_vehicle_add( vehicle_name, icon_type )
	
	-- make sure it is still alive
	if vehicle_is_destroyed(vehicle_name) then
		return
	end
	
	vehicle_suppress_npc_exit(vehicle_name)
	set_unjackable_flag(vehicle_name, true)
	
	-- loop through each of the seats and set character as invulnerable
	local num_seats = vehicle_get_num_seats(vehicle_name)
	for seat = 0, num_seats-1, 1 do
		local npc = get_char_in_vehicle(vehicle_name, seat)
		if npc ~= nil then
			turn_invulnerable(npc, true)
			set_seatbelt_flag(npc, true)	-- don't go through windshield
		end
	end
		
	if icon_type == OI_ASSET_KILL then
		marker_add(vehicle_name, MINIMAP_ICON_KILL, OI_ASSET_KILL, OI_FLAGS_DEFAULT, SYNC_ALL)
	elseif icon_type == OI_ASSET_KILL_FULL then
		marker_add(vehicle_name, MINIMAP_ICON_KILL, OI_ASSET_KILL_FULL, OI_FLAGS_FULL, SYNC_ALL)
	else
		-- FAIL!  We won't know which vehicle to kill
		return
	end
	on_vehicle_destroyed("kill_list_vehicle_dead_cb", vehicle_name)
	on_vehicle_enter_water("kill_list_vehicle_dead_cb", vehicle_name)  -- in water is same as dead
	
	-- add the name to the kill_list
	Current_vehicle_kill_list[ vehicle_name ] = vehicle_name
end

-- remove an npc from the kill list and make sure it has markers and callbacks cleaned up
--
-- npc_name:		(string) name of npc to remove from the kill_list
--
function kill_list_clear(npc_name)
	marker_remove(npc_name)
	on_death("", npc_name)
	Current_kill_list[ npc_name ] = nil
end

-- remove a vehicle from the kill list and make sure it has markers and callbacks cleaned up
--
-- vehicle_name:		(string) name of vehicle to remove from the kill_list
--
function kill_list_vehicle_clear(vehicle_name)
	marker_remove(vehicle_name)
	on_vehicle_destroyed("", vehicle_name)
	on_vehicle_enter_water("", vehicle_name)
	Current_vehicle_kill_list[ vehicle_name ] = nil
	
	-- turn passengers vulnerable again (may have been cleared without being destroyed)
	local num_seats = vehicle_get_num_seats(vehicle_name)
	for seat = 0, num_seats, 1 do
		local npc = get_char_in_vehicle(vehicle_name, seat)
		if npc ~= nil then
			turn_vulnerable(npc, true)
		end
	end
end

-- remove all entries in the kill list and make sure all markers/callbacks are cleaned up
function kill_list_clear_all()
	for i, npc_name in pairs( Current_kill_list ) do
		kill_list_clear(npc_name)
	end
	for i, vehicle_name in pairs( Current_vehicle_kill_list ) do
		kill_list_vehicle_clear(vehicle_name)
	end
end

-- Return number of npcs in the kill list
function kill_list_get_count()
	local kill_list_size = sizeof_table(Current_kill_list)
	local kill_list_vehicle_size = sizeof_table(Current_vehicle_kill_list)
	return kill_list_size + kill_list_vehicle_size
end

-- wait for everyone in the kill list to be killed (don't call this until everyone you want to include has been spawned and added)
function kill_list_wait_for_complete()
	local npcs_alive = true
	
	while npcs_alive do
		npcs_alive = false
		for i, npc_name in pairs( Current_kill_list ) do
			if character_is_dead(npc_name) then
				-- remove it
				kill_list_clear(npc_name)
			else
				npcs_alive = true
				thread_yield()
			end
		end
		for j, vehicle_name in pairs( Current_vehicle_kill_list ) do
			if vehicle_is_destroyed(vehicle_name) then
				-- remove it
				kill_list_vehicle_clear(vehicle_name)
			else
				npcs_alive = true
				thread_yield()
			end
		end
		thread_yield()
	end
	
end

-- callback for kill_list member
--
-- npc_killed:	(string) name of killed NPC
--
function kill_list_member_dead_cb(npc_killed)
	kill_list_clear(npc_killed)
end

-- callback for kill_list_vehicle member
--
-- vehicle_killed:	(string) name of killed vehicle
--
function kill_list_vehicle_dead_cb(vehicle_killed)	
	kill_list_vehicle_clear(vehicle_killed)
	
	-- kill our passengers
	local num_seats = vehicle_get_num_seats(vehicle_killed)
	for seat = 0, num_seats, 1 do
		local npc = get_char_in_vehicle(vehicle_killed, seat)
		if npc ~= nil then
			character_kill(npc)
		end
	end
end

--------------------------------------------------------------------------------------------------
								--[[**********************]]--
								--[[                      ]]--
								--[[  Interrogate Target  ]]--
								--[[      functions       ]]--
								--[[                      ]]--								
								--[[**********************]]--
								
	--[[	Interrogate Target data template
	<CAP_MISSION_NAM>_interrogate = {
		leader = {
			target = <CAP_MISSION_NAM>_group.friendly_fire.owner,
			persona = "Interrogation",
			objective = "<CAP_MISSION_NAM>_INTERROGATE_OWNER",
		--	(optional)conversation = <CAP_MISSION_NAM>_convo.convo_name  -- play a conversation while interrogating
		},
	}
	]]
							
Current_interrogate_list = {}
-- Startup interrogation system (not automatic)
function interrogate_startup(interrogate_list)
	Current_interrogate_list = interrogate_list
end
-- Shutdown interrogation
function interrogate_shutdown()
	interrogate_cleanup()
end
							
-- Set all necessary flags and mark target for interrogation
-- Returns when interrogation is complete
--
-- interrogate_data:	(table) information about person to interrogate
--
function interrogate_target(interrogate_data)
	-- set persona (defaults to interrogate)
	if interrogate_data.persona ~= nil then
		persona_override_persona_start(interrogate_data.target, interrogate_data.persona)
	end
	-- set flags on the target
	character_set_counter_on_grabbed_by_player(interrogate_data.target, false)
	-- set icon
	objective_text_clear(0)
	marker_remove(interrogate_data.target, SYNC_ALL)
	marker_add(interrogate_data.target, MINIMAP_ICON_USE, OI_ASSET_USE, OI_FLAG_STICKY + OI_FLAG_DISPLAY_DISTANCE, SYNC_ALL)

	-- set objective
	objective_text(0, interrogate_data.objective, "", "", SYNC_ALL, OI_ASSET_USE)
	
	-- wait for grab
	local hostage_taken = false
	local attacker = LOCAL_PLAYER
	while not hostage_taken do
		if character_has_specific_human_shield(LOCAL_PLAYER, interrogate_data.target) then
			hostage_taken = true
		elseif (coop_is_active() and character_has_specific_human_shield(REMOTE_PLAYER, interrogate_data.target)) then
			hostage_taken = true
			attacker = REMOTE_PLAYER
		end
		thread_yield()
	end
	
	-- make player and target invulnerable
	turn_invulnerable(interrogate_data.target)
	turn_invulnerable(attacker)
	
	-- no ragdolling
	character_allow_ragdoll(attacker, false)
	character_allow_ragdoll(interrogate_data.target, false)
	character_prevent_flinching(attacker, true)
	character_prevent_flinching(interrogate_data.target, true)

	-- Block controls until the interrogation is complete
	player_human_shield_lock(attacker, true)
	delay(1)
	-- play a synced interrogate animation
	action_play_synced_state(attacker, interrogate_data.target, "Gat Interrogation State")
	action_play_synced(attacker, interrogate_data.target, "Gat Interrogation Entry")
	
	-- Play the interrogation conversation
	if interrogate_data.conversation ~= nil then
		convo_start(interrogate_data.conversation)
		convo_wait_for_end()
	else
		-- eh...just wait a few seconds
		delay(3.0)
	end
	
	-- end interrogate animation
	action_play_synced_state(attacker, interrogate_data.target, "HS_Stand")
	action_play_synced(attacker, interrogate_data.target, "Gat Interrogation Return")
		
	-- Restore control
	player_human_shield_lock(attacker, false)
	action_stop_synced_state(attacker, true)
	
	if interrogate_data.persona ~= nil then
		persona_override_persona_stop(interrogate_data.target)
	end

	-- Clear invulnerability
	turn_vulnerable(interrogate_data.target)
	turn_vulnerable(attacker)
	character_prevent_flinching(attacker, false)
	character_prevent_flinching(interrogate_data.target, false)
	character_allow_ragdoll(attacker, true)
	character_allow_ragdoll(interrogate_data.target, true)
	character_prevent_explosion_fling(interrogate_data.target, false)

	-- Clear objective
	marker_remove(interrogate_data.target, SYNC_ALL)
	objective_text_clear(0)
	
end

-- clear any icons and make sure player states are restored
function interrogate_cleanup()
	for i,data in pairs(Current_interrogate_list) do
		-- remove any icons
		marker_remove(data.target, SYNC_ALL)
	end
	
	-- clear possible player states
	turn_vulnerable(LOCAL_PLAYER)
	character_prevent_flinching(LOCAL_PLAYER, false)
	character_allow_ragdoll(LOCAL_PLAYER, true)
	
	if coop_is_active() then
		turn_vulnerable(REMOTE_PLAYER)
		character_prevent_flinching(REMOTE_PLAYER, false)
		character_allow_ragdoll(REMOTE_PLAYER, true)
	end
end

--------------------------------------------------------------------------------------------------
								--[[**********************]]--
								--[[                      ]]--
								--[[    Common Mission    ]]--
								--[[      Functions       ]]--
								--[[                      ]]--								
								--[[**********************]]--

-- Prep global systems for mission use
--
-- trigger_list:		(table) List of table data
-- convo_list:			(table) List of conversation data
--
function mission_startup(trigger_list, convo_list)
	triggers_startup(trigger_list)
	convo_startup(convo_list)
	kill_list_startup()
	-- not common - requires manual setup in script interrogate_startup(interrogate_list)
end

-- Critical shutdown of common systems. This should always be called on cleanup.
--
function mission_shutdown()
	triggers_shutdown()
	convo_shutdown()
	kill_list_shutdown()
	
	-- even though we don't auto-setup, we can auto-shutdown
	interrogate_shutdown()
	rail_shutdown()
end

-- Initializes a specific checkpoint during mission start.
--
-- mission_checkpoints: (table) The table containing the mission's checkpoints.
-- checkpoint_name:     (string) The name of the checkpoint to initialize.
--
function checkpoint_init(mission_checkpoints, checkpoint_name)
	local checkpoint_table = get_table_by_name(mission_checkpoints, checkpoint_name)
	if checkpoint_table ~= nil then	
		-- move the player's vehicles if needed
		if checkpoint_table.p1_car_nav ~= nil and checkpoint_table.p1_car_nav ~= "" then
			teleport_player_vehicles(checkpoint_table.p1_car_nav, checkpoint_table.p2_car_nav)
		end

		-- spawn any starting groups
		group_create_list(checkpoint_table.start_groups)
		group_create_list(checkpoint_table.cp_only_groups)

		-- teleport players if not at starting checkpoint
		if checkpoint_table.name ~= MISSION_START_CHECKPOINT and checkpoint_table.no_cp_teleport ~= true then
			local exit_vehicles = true
			local check_for_obstacles = true
			teleport_coop(checkpoint_table.host_start, checkpoint_table.client_start, exit_vehicles, check_for_obstacles, checkpoint_table.check_up)
		end

		-- Execute the checkpoint's init function.
		local mission_start = true
		if checkpoint_table.init ~= nil then
			_G[checkpoint_table.init](mission_start)
		end
	end
end

-- Processes a mission's checkpoints in the order defined in the checkpoint table 
-- until the mission ends.
--
-- mission_checkpoints:   (table) The table containing the mission's checkpoints.
-- first_checkpoint_name: (string) The name of the checkpoint to start the mission at.
--
function checkpoint_run_mission(mission_checkpoints, first_checkpoint_name)
	local cur_checkpoint = get_table_by_name(mission_checkpoints, first_checkpoint_name)
	local prev_checkpoint = nil
	
	while cur_checkpoint ~= nil do
		-- Initialize the checkpoint, but only if it's not our first checkpoint, that's
		-- initialized by the mission start.
		if cur_checkpoint.name ~= first_checkpoint_name then
			if cur_checkpoint.init ~= nil then
				_G[cur_checkpoint.init](false)
			end
		end
	
		-- Execute the checkpoint's run function.
		_G[cur_checkpoint.run]()
		
		-- Move to the next checkpoint or exit the mission.
		prev_checkpoint = cur_checkpoint
		cur_checkpoint = get_table_by_name(mission_checkpoints, cur_checkpoint.next_checkpoint)
		if cur_checkpoint == nil then
			break
		end
		
		-- Set the mission checkpoint, if this isn't a script debug checkpoint
		if (cur_checkpoint.debug_checkpoint ~= true) then
			mission_set_checkpoint(cur_checkpoint.name, cur_checkpoint.ignore_vehicles, cur_checkpoint.ignore_notoriety)
		end

		-- Create any groups for the next checkpoint
		group_create_list(cur_checkpoint.start_groups)
		
		-- Clean up the previous checkpoint.
		if prev_checkpoint.cleanup ~= nil then
			_G[prev_checkpoint.cleanup](false)
		end
	end
end				
								
								
-- Run the cleanup function for each checkpoint listed starting with the MISSION_START_CHECKPOINT
-- NOTE: Out of order checkpoints/branching checkpoints need to call their own cleanups
--
-- checkpoints:		(table) table of checkpoint information
--
function checkpoint_cleanup_mission(checkpoints)	
	local mission_exit = true
	
	for i, checkpoint in pairs(checkpoints) do
		if checkpoint.cleanup ~= nil then
			_G[checkpoint.cleanup](mission_exit)
		end
	end
end


--------------------------------------------------------------------------------------------------

--[[
	temp weapon loadout
	Ver. 1.00
	
	Equip all players with temporary loadout
	Equip the last weapon provided
	
	Setup:
	a list of the weapons to equip the player with
		<mission>_PLAYER_LOADOUT	= {	"Gal43", "m16" }
	
	Equipment goes to the player and coop player
		inv_add_temp_loadout( <mission>_PLAYER_LOADOUT )
		
	Make sure you cleanup (will only run if add was called)
		inv_remove_temp_loadout( <mission>_PLAYER_LOADOUT )
]]--

-- *** Defines
	Players_have_temp_loadout		= false
	
-- *** Functions
-- Add temp weapons with unlimited ammo
--
-- weapon_table:	(strings, or table of strings) list of weapons to equip
-- restrict_to:	(string, optional) player to restrict loadout to (defaults to both players (if available))
--
function inv_add_temp_loadout(weapon_table, restrict_to)
	local equip_local = true
	local equip_remote = true
	if (restrict_to == LOCAL_PLAYER) then
		equip_remote = false
	end
	if (restrict_to == REMOTE_PLAYER) then
		equip_local = false
	end
		
	local last_weapon = ""
	local in_coop = equip_remote and coop_is_active()
	-- Assign weapons
	for i, weapon in pairs(weapon_table) do
		if (equip_local) then
			inv_weapon_add_temporary(LOCAL_PLAYER, weapon, 1, true)
		end
		if (in_coop) then
			inv_weapon_add_temporary(REMOTE_PLAYER, weapon, 1, true)
		end
		last_weapon = weapon
	end
	
	if (last_weapon ~= "") then
		if (equip_local) then
			inv_item_equip( last_weapon, LOCAL_PLAYER )
		end
		if (in_coop) then
			inv_item_equip( last_weapon, REMOTE_PLAYER )
		end
	end
	
	Players_have_temp_loadout = true

end


-- remove temp weapons
--
-- weapon_table:		(strings, or table of strings) list of weapons to remove
-- restrict_to:		(string, optional) player to restrict loadout to (defaults to both players (if available))
--
function inv_remove_temp_loadout(weapon_table, restrict_to)
	local equip_local = true
	local equip_remote = true
	if (restrict_to == LOCAL_PLAYER) then
		equip_remote = false
	end
	if (restrict_to == REMOTE_PLAYER) then
		equip_local = false
	end
	
	local in_coop = equip_remote and coop_is_active()
	if (Players_have_temp_loadout) then
		-- remove weapons
		for i, weapon in pairs(weapon_table) do
			if (equip_local) then
				inv_weapon_remove_temporary(LOCAL_PLAYER, weapon)
			end
			if (in_coop) then
				inv_weapon_remove_temporary(REMOTE_PLAYER, weapon)
			end
		end
	end
	
	Players_have_temp_loadout = false
end

--[[
	END temp weapon loadout
]]--

--------------------------------------------------------------------------------------------------
								--[[**********************]]--
								--[[                      ]]--
								--[[   Rail functions     ]]--
								--[[                      ]]--
								--[[**********************]]--
	--[[	Rail data template
		<CAP_MISSION_NAM>_rail = {
			<rail_name>_rail = {
				vehicle = "",
			
				(optional)mission_critical = true defaults to true
				
				(optional)npcs_enter_vehicle_timeout = 10.0, this timeout is how long we will wait for npcs to get into the vehicle after the players before teleporting them
				seats = {
					{ character = "", seat_idx = 0 },
				},
				coop_seats = {
					{ character = "", seat_idx = 0 },
				},
			},
		}
	--]]
	--[[	Path data template
		<CAP_MISSION_NAM>_path = {
			<segment_name> = {
				data = {"", ""} This can be Navpoints
				use_navmesh = false,
				callback = "", function to call when this segment is completed
				},
			},
		}
	--]]
								
-- Setup the vehicle, npcs, and players to start a rail sequence. This includes setting all of the neccassary vehicle
-- flags, npcs flags, player flags, and telling the player and npcs to get in the vehicle or teleport them in if teleport is true.
--
-- rail_table:		(table) rail information
-- teleport:		(boolean) if true teleports the player and npcs into the vehicle 
--
-- NOTE:		Call rail_vehicle_setup or your own vehicle setup function before calling this function. 
--				-If the rail vehicle is vulnerable set the on_destroyed callback before calling this function as 
--				the vehicle could be destroyed during this function.
--				- Any speed overrides will be cleared during this function so set those after this returns. 
--				this was done to prevent vehicles from driving off.
--
function rail_setup(rail_table, teleport)
	if not teleport then
		marker_add(rail_table.vehicle, MINIMAP_ICON_LOCATION, OI_ASSET_LOCATION)
	end
	
	vehicle_speed_cancel(rail_table.vehicle)
	
	local seats = nil
	if coop_is_active() then
		seats = rail_table.coop_seats
	else
		seats = rail_table.seats
	end
	
	local npcs = { }
	local npc_count = 0
	
	for index, seat in pairs(seats) do
		if seat.character == LOCAL_PLAYER or seat.character == REMOTE_PLAYER then -- setup player
			player_force_vehicle_seat(seat.character, seat.seat_idx, rail_table.vehicle)
		else -- setup npc
			local npc_is_independent = true
			follower_make_independent(seat.character, npc_is_independent)
			local npc_stay_in_car = true
			follower_remain_in_car(seat.character, npc_stay_in_car)
			set_seatbelt_flag(seat.character)
			if not teleport then
				local block = false
				vehicle_enter(seat.character, rail_table.vehicle, seat.seat_idx, block)
			end
			-- set ignore ai while we wait for the player to get in, otherwise the npc could take off
			set_ignore_ai_flag(seat.character, true)
			npc_count = npc_count + 1
			npcs[npc_count] = seat.character
		end
		if teleport then
			local block = false
			local exit_current = true
			vehicle_enter_teleport(seat.character, rail_table.vehicle, seat.seat_idx, block, exit_current)
		end
	end
	
	local lock_players_in = true
	vehicle_wait_for_players_to_enter(rail_table.vehicle, lock_players_in)
	
	if npc_count > 0 then
		-- turn ai back on
		for index = 1, npc_count, 1 do
			set_ignore_ai_flag(npcs[index], false)
		end
	end
	
	--Make sure every npc is in the car if they are not in after max_wait_time teleport them
	--Players are already in the car and locked in by this point
	local ready = false
	local elapsed_time = 0.0
	local max_wait_time = 10.0
	if rail_table.npcs_enter_vehicle_timeout ~= nil and rail_table.npcs_enter_vehicle_timeout > 0 then
		max_wait_time = rail_table.npcs_enter_vehicle_timeout
	end	
	while(ready == false) do
		ready = true
		-- Check if any characters are not in the vehicle
		for index, seat in pairs(seats) do
			if (character_is_in_vehicle(seat.character, rail_table.vehicle) == false) then
				if elapsed_time >= max_wait_time then
					local block = true
					local exit_current = true
					vehicle_enter_teleport(seat.character, rail_table.vehicle, seat.seat_idx, block, exit_current)
				else
					ready = false
					break
				end
			end
		end
		thread_yield()
		elapsed_time = elapsed_time + get_frame_time()
	end
	
	--Make the npcs invincible since they are in the car
	for index, seat in pairs(seats) do
		if seat.character ~= LOCAL_PLAYER and seat.character ~= REMOTE_PLAYER then
			turn_invulnerable(seat.character)
		end
	end
	
	set_unjackable_flag(rail_table.vehicle, true)
	
	marker_remove(rail_table.vehicle)
end

-- Start the rail segment
--
-- rail_table:		(table) rail information
-- car_path:		(table) holds list of navs to pathfind to, if navmesh should be used, and a callback for when pathfinding is complete
--
function rail_play(rail_table, car_path)
	if Rail_data[rail_table.vehicle] ~= nil then
		rail_segment_cleanup(rail_table)
	end
	
	Rail_data[rail_table.vehicle] = {}
	Rail_data[rail_table.vehicle].index = 1
	Rail_data[rail_table.vehicle].path = car_path
	Rail_data[rail_table.vehicle].rail = rail_table
	Rail_data[rail_table.vehicle].paused = false
	Rail_data[rail_table.vehicle].path_thread = thread_new("rail_drive_thread", rail_table, Rail_data[rail_table.vehicle].path)
	Rail_data[rail_table.vehicle].callback_thread = INVALID_THREAD_HANDLE
end

-- Pause the rail segment
--
-- rail_table:		(table) rail information
--
function rail_pause(rail_table)
	if Rail_data[rail_table.vehicle] ~= nil and Rail_data[rail_table.vehicle].path_thread ~= INVALID_THREAD_HANDLE then
		thread_kill(Rail_data[rail_table.vehicle].path_thread)
		Rail_data[rail_table.vehicle].path_thread = INVALID_THREAD_HANDLE
		local dont_block = true
		vehicle_stop(rail_table.vehicle, dont_block)
		Rail_data[rail_table.vehicle].paused = true
	end
end

-- Resume the rail segment
--
-- rail_table:		(table) rail information
--
function rail_resume(rail_table)
	if Rail_data[rail_table.vehicle] ~= nil and Rail_data[rail_table.vehicle].paused == true then
		Rail_data[rail_table.vehicle].paused = false
		Rail_data[rail_table.vehicle].path_thread = thread_new("rail_drive_thread", rail_table, Rail_data[rail_table.vehicle].path)
	end
end

-- Cleanup any global data used by a rail segment
--
-- rail_table:		(table) rail information
--
function rail_segment_cleanup(rail_table)
	if Rail_data[rail_table.vehicle] ~= nil then
		thread_kill(Rail_data[rail_table.vehicle].path_thread)
		thread_kill(Rail_data[rail_table.vehicle].callback_thread)
		Rail_data[rail_table.vehicle] = nil
	end
end

-- Cleanup the entire rail including segments and undo any player changes
--
-- rail_table:		(table) rail information
--
function rail_cleanup(rail_table)
	rail_segment_cleanup(rail_table)
	marker_remove(rail_table.vehicle)
	
	local seats = nil
	if coop_is_active() then
		seats = rail_table.coop_seats
	else
		seats = rail_table.seats
	end
	
	for index, seat in pairs(seats) do
		if seat.character == LOCAL_PLAYER or seat.character == REMOTE_PLAYER then
			player_force_vehicle_seat(seat.character, -1)
			set_player_can_exit_vehicles(seat.character, true)
		else
			local npc_is_independent = false
			follower_make_independent(seat.character, npc_is_independent)
			turn_vulnerable(seat.character)
			local npc_stay_in_car = false
			follower_remain_in_car(seat.character, npc_stay_in_car)
			local uses_seatbelt = false
			set_seatbelt_flag(seat.character, uses_seatbelt)
		end
	end
end

-- Cleanup any data that is still left the global Rail_data table
--
function rail_shutdown()
	for index, rail_info in pairs(Rail_data) do
		rail_cleanup(rail_info.rail)
	end
end

-- Setup the rail vehicle, this is the defualt function if one is not given in rail_table
--
-- vehicle:		(string) name of vehicle
--
function rail_vehicle_setup(vehicle)
	vehicle_disable_chase(vehicle, true)
	vehicle_disable_flee(vehicle, true)
	vehicle_ignore_repulsors(vehicle, true)
	-- Don't make tanks have infinite mass, it upsets the Havok programmers.
	if not vehicle_is_tank(vehicle) then
		vehicle_infinite_mass(vehicle, true)
	end
	vehicle_prevent_explosion_fling(vehicle, true)
	vehicle_prevent_transition_to_ambient(vehicle, true)
	vehicle_set_allow_ram_ped(vehicle, true)
	vehicle_set_ignore_rail_obstacles(vehicle, true)
	vehicle_set_obey_traffic_lights(vehicle, false)
	vehicle_set_use_short_cuts(vehicle, true)
	vehicle_set_invulnerable(vehicle)
	vehicle_suppress_flipping(vehicle, true)
	vehicle_set_invulnerable_to_telekinesis(vehicle, true)	
end

-- Make the vehicle follow all of the rail's paths
--
-- rail_table:		(table) rail information
-- path:			(table) holds list of navs to pathfind to, if navmesh should be used, and a callback for when pathfinding is complete
--
function rail_drive_thread(rail_table, path)
	local success = true
	while path.data[Rail_data[rail_table.vehicle].index] ~= nil do
		success = vehicle_drive_path(rail_table.vehicle, path.data[Rail_data[rail_table.vehicle].index], path.use_navmesh, rail_table.mission_critical)
		if not success then
			break
		end
		Rail_data[rail_table.vehicle].index = Rail_data[rail_table.vehicle].index + 1
	end
	Rail_data[rail_table.vehicle].callback_thread = thread_new(path.callback, success)
end

-------------------------------------------End of Rail functions-------------------------------------------------------

--------------------------------------------------------------------------------------------------
								--[[**************************************]]--
								--[[                     				                            ]]--
								--[[   Disable Generator functions         ]]--
								--[[                                                               ]]--
								--[[**************************************]]--
--[[ Disable Generator data template
	<CAP_MISSION_NAM>_generators = {
		{
			trigger = trigger_table, table for the trigger that should be used to disable a generator(warning  callback set in this  table will be overwritten)
			time_to_disable = 4, time in seconds it should take for generator to be disabled
			objective = "", objective message that should be displayed next to progress bar
			disabled = false, wether or not this generator has been disabled
			(optional)anim_nav = "", navpoint that  anim should be orientied to
		},
	}

]]--								
-- Handles setting up triggers for disabling generators
--
-- generators:	(table) table of generators that should be setup
-- objective:	(string, optional) objective msg that should be used when not disabling generators(defualts to "" which means no objective will show when not disabling generators)
--
function disable_generators_run(generators, objective)
	Generator_data = generators
	Generator_objective = objective
	
	for i, generator in pairs(Generator_data) do
		-- Add some data to generator table
		generator.progress = 0
		generator.player = nil
		generator.monitor_thread = INVALID_THREAD_HANDLE
		
		-- override trigger callback 
		generator.trigger.callback = "disable_generators_cb"
		
		--setup trigger
		trigger_setup(generator.trigger)
		trigger_set_delay_between_activations(generator.trigger.name, 250)
		trigger_set_hold_to_repeat(generator.trigger.name)
	end
	
	hud_gsi_supress_popout(true)
	if Generator_objective ~= nil and Generator_objective ~= "" then
		objective_text(0, Generator_objective, nil, nil, SYNC_ALL, OI_ASSET_USE)
	end
end

-- Cleanup any triggers and threads being used  for diabling generators
--
function disable_generators_cleanup()
	
	hud_gsi_supress_popout(false)
	
	-- no table has been set so just return
	if sizeof_table(Generator_data) == 0 then
		return
	end
	
	for i, generator in pairs(Generator_data) do
		trigger_clear(generator.trigger.name)
		
		if generator.monitor_thread ~= INVALID_THREAD_HANDLE then
			thread_kill(generator.monitor_thread)
		end
		generator.progress = 0
		generator.player = nil
		generator.monitor_thread = INVALID_THREAD_HANDLE
	end
	
	Generator_data = { }
	Generator_objective = ""
end

-- Callback for entering trigger
--
-- char_name:	(string) name of character that entered trigger
-- trigger_name:	(string) name of trigger that was entered
--
function disable_generators_cb(char_name, trigger_name)
	local generator = diable_generators_get_generator_by_trigger(trigger_name)
	
	-- if we didn't find a generator something went wrong just return
	if generator == nil then
		return
	end
	
	-- the character that acivated the trigger isn't the local or remote player... what happened?
	if not (char_name == LOCAL_PLAYER or char_name == REMOTE_PLAYER) then
		return
	end
	
	if generator.player == nil then
		generator.player = char_name
		generator.progress = 0
	end
	
	if generator.player ~= char_name then
		return
	end
	
	local force_play = false
	local percent_done = 1.0
	local stand_still = true
	local zero_movement = true
	
	local start_anim = "disable tech start"
	local state_anim = "disable tech state"
	local exit_anim = "disable tech exit"
	
	local hud_index = 0
	local sync = SYNC_LOCAL
	if generator.player == REMOTE_PLAYER then
		hud_index = 1
		sync = SYNC_REMOTE
	end
	
	-- we are updating every 250ms so target progress should be quadruple the amount of seconds we want this to last
	local target_progress =  generator.time_to_disable*4
	
	if generator.progress == 0 then
		camera_set_hide_ui_during_animated(false)
		action_play_non_blocking(char_name, start_anim, nil, force_play, stand_still, zero_movement, generator.anim_nav,  generator.anim_nav)
		set_animation_state(char_name, state_anim,  generator.anim_nav)
		repeat
			thread_yield()
		until action_play_is_finished(char_name, percent_done)
		
		-- only continue if the player is still in the disable tech state
		if check_animation_state(generator.player, "disable tech state") then
			player_movement_disable(char_name)
			generator.monitor_thread = thread_new("disable_generators_monitor_thread", generator)
			generator.progress = generator.progress + 1
		
		else
			clear_animation_state(char_name)
			generator.progress = 0
			generator.player = nil
			generator.monitor_thread = INVALID_THREAD_HANDLE
		end
		
		
	elseif generator.progress >= target_progress then
		trigger_cb(char_name, trigger_name)
		trigger_clear(trigger_name)
		thread_kill(generator.monitor_thread)
		generator.monitor_thread = INVALID_THREAD_HANDLE
		
		action_play_non_blocking(char_name, exit_anim, nil, force_play, stand_still, zero_movement, generator.anim_nav,  generator.anim_nav)
		clear_animation_state(char_name)
		repeat
			thread_yield()
		until action_play_is_finished(char_name, percent_done)
		
		player_movement_enable(char_name)
		generator.disabled = true
		camera_set_hide_ui_during_animated(true)
		hud_bar_off(hud_index)
		if Generator_objective ~= nil and Generator_objective ~= "" then
			objective_text(0, Generator_objective, nil, nil, sync, OI_ASSET_USE)
		end
	
	else
		generator.progress = generator.progress + 1
		if generator.progress <= target_progress then
			hud_bar_set_value(hud_index,  generator.progress, sync)
		end
	end
	
end	

-- Monitors disable progress and updates hud bar as neccassary
-- generator:	(table) generator to monitor
--
function disable_generators_monitor_thread(generator)					
	local prev_progress = generator.progress
	
	objective_text_clear(0)
	local hud_index = 0
	local sync = SYNC_LOCAL
	if generator.player == REMOTE_PLAYER then
		hud_index = 1
		sync = SYNC_REMOTE
		if Generator_objective ~= nil and Generator_objective ~= "" then
			objective_text(0, Generator_objective, nil, nil, SYNC_LOCAL, OI_ASSET_USE)
		end
	elseif Generator_objective ~= nil and Generator_objective ~= "" then
		objective_text(0, Generator_objective, nil, nil, SYNC_REMOTE, OI_ASSET_USE)
	end
	
	-- we are updating every 500ms so target progress should be double the amount of seconds we want this to last
	local target_progress =  generator.time_to_disable*4
	
	hud_bar_on(hud_index, "Default", generator.objective, target_progress, sync, OI_ASSET_USE)
	
	while true do
		-- This thread checks progress every 0.5 seconds, even though progress update is every 0.25 seconds. This is to allow for the possibility of timestamp precision causing threads to not run at the correct times at lower framerates.
		delay(0.5)
		
		if generator.progress <= prev_progress then
			-- no progress was made so break out and kill it
			break
		end
		
		if not check_animation_state(generator.player, "disable tech state") then
			-- the player got knocked out of the state fail the disable
			-- also disable the trigger for 2seconds so the player doesn't instatnly re-enter animation if they are holding down y when they get hit
			hud_bar_off(hud_index)
			trigger_enable(generator.trigger.name, false)
			delay(2.0)
			trigger_enable(generator.trigger.name)
			break
		end
		prev_progress = generator.progress
	end
	
	hud_bar_off(hud_index)
	if Generator_objective ~= nil and Generator_objective ~= "" then
		objective_text(0, Generator_objective, nil, nil, sync, OI_ASSET_USE)
	end
	
	if generator.player ~= nil then
		player_movement_enable(generator.player)
		clear_animation_state(generator.player)
	end
	
	generator.progress = 0
	generator.player = nil
	generator.monitor_thread = INVALID_THREAD_HANDLE
end

-- Get the generator table from the trigger name
--
-- tirgger:	(string) name of the trigger to look for
--
-- returns: (table) generator table with matching trigger
--
function diable_generators_get_generator_by_trigger(trigger)
	for i, generator in pairs(Generator_data) do
		if generator.trigger.name == trigger then
			return generator
		end
	end
	return nil
end		
								
								
-------------------------------------------End of disable generator functions-------------------------------------------------------								

function crib_ship_nemo_chair_exit_setup( )
	crib_ship_nemo_chair_exit_setup_do( )

	while (crib_ship_nemo_chair_enter_check_done() == false) do
		thread_yield( )
	end
end

function crib_ship_nemo_chair_exit( )
	crib_ship_nemo_chair_exit_do( )

	while (crib_ship_nemo_chair_exit_check_done() == false) do
		thread_yield( )
	end
end

function crib_ship_nemo_chair_enter( )
	crib_ship_nemo_chair_enter_do( )

	while (crib_ship_nemo_chair_exit_check_done() == false) do
		thread_yield( )
	end
end

--This function should correctly apply the ship suit for any players in the player list
function mission_apply_ship_suit_to_players()
	local player_list = player_names_get_all()
	local add_to_wardrobe = false
	
	--Remove all clothing before we put on the correct clothes
	players_naked(false)
	
	--[[Wait until everyone is good and nekkid before we proceed
	for i, player in pairs(player_list) do
		while player_customization_is_finalized(player) == false do
			thread_yield()
		end
	end
	
	-- Wait until everything is ready to show.
	for i, player in pairs(player_list) do
		while player_customization_is_finalized(player) == false do
			delay(0.25)
		end
	end]]
end

