# Back to Steelport – Saints Row IV (Mod)

🎥 **Mod Showcase / Guide Video**:  
▶️ [Watch on YouTube](https://www.youtube.com/watch?v=bWgDFlhn2X0)

**Mod developed for Saints Row IV: Re-Elected, based on IdolNinja's Sandbox+**  
This project brings back or improves certain mechanics and elements inspired by *Saints Row: The Third*, while keeping the technical base of SRIV.

DISCLAIMER: Contains additional mod data from other creators from SR community (e.g. No Glitch City, Custom character morphs...)
---

## ⭐ Key Features

> A brief overview of what this mod adds or enhances in the base game:

- 🎯 **Manual Lowered Weapon Mode** – put your weapon down at will
- 🎥 **Dynamic Camera Swaps** – toggle between different camera angles (Right - Centered - Left or Custom configs types...)
- 🥋 **Custom Finisher Moves** – includes SR3 melee takedowns and sprint attacks
- ↩️ **Directional Dodge Moves** – use dodge animations for immersion or escape
- 👤 **Male / Female Animation Swap** – switch at runtime via keybind
- ⏱️ **Super Slow Motion Mode** – toggle dramatic time dilation for combat
- 🔫 **Weapon Rebalance** – damage boosts, full-auto conversion, life steal
- 🚨 **Final Act Rework** – replaces alien enemies with SR3-style factions in notoriety waves

---

## 📦 Contents

This repository contains modified .xtbl and .lua files.  
It is designed to be used *as-is*, with no need for compilation or additional tools.

Included changes cover:
- Weapon behavior and configurations (weapons.xtbl)
- Notoriety system and NPC groups
- Gameplay scripts (sr3_city.lua)
- Character definitions, effects, customization, etc.

---

## 📁 Installation

1. **Download** the repository:
   - Via Code > Download ZIP
   - Or clone via Git:  
     git clone git@github.com:Curvenist/sr4-backtosteelport.git

2. **Copy all files** into your game directory:  
   Steam\steamapps\common\Saints Row IV

3. **Overwrite existing files** if prompted (make a backup first if needed).

4. **In the game menu**, we recommend you reset your control mappings

--

## 🔧 Commands Overview

This mod adds custom commands triggered via **ZOOM_IN** (E) and **ZOOM_OUT** (G).  
These keys act as **modifiers** to unlock enhanced control over gameplay, camera, and animation systems.

---

### ▶️ Zoom In (E) – Main Interaction Mode

| Key Combo                     | Function Description                                 |
|------------------------------|------------------------------------------------------|
| `E`                          | Toggle Lowered Weapon mode (manual holster)         |
| `E` + [                    | Increase notoriety level (cycle up)                 |
| `E` + ]                    | Reset notoriety to 0                                |
| `E` + ←                    | Toggle SR3 / SR1 side camera preset                 |
| `E` + →                    | Reset to default camera                             |
| `E` + ↑                    | Toggle platforming camera mode                      |
| `E` + ↓                    | Activate SR3 M00 combat camera                      |
| `E` + Delete               | Toggle time dilation (slow motion)                  |
| `E` + Page Up              | Switch to next custom camera preset                 |
| `E` + Home                 | Apply next setting in current camera preset         |
| `E` + End                  | Activate SR2 flashback camera                       |
| `E` + PgDn                 | SR3 M00 combat camera (right side)                  |
| `E` + Z (Recruit/Dismiss)  | Toggle superpower movement                          |

---

### ▶️ Zoom Out (G) – Dodge / Special Movement Mode

| Key Combo                 | Function Description                                         |
|--------------------------|--------------------------------------------------------------|
| `G`                      | Perform back dodge animation (fallback)                     |
| `G` + →                | Perform right dodge animation                                |
| `G` + ←                | Perform left dodge animation                                 |
| `G` + ↑                | Dodge Type Swap: switch to DTS set 1                         |
| `G` + ↓                | Dodge Type Swap: switch to DTS set 3                         |
| `G` + End              | Dodge Type Swap: switch to DTS set 2                         |
| `G` + Delete           | Play photo pose animation                                    |
| `G` + Page Up          | Save current position as custom teleport target              |
| `G` + Home             | Teleport to previously saved position                        |

---

> 🔁 **DTS = Dodge Type Swap** — a system to dynamically switch between different dodge/pose animation sets.  
> 📍 Saved teleport locations are session-based and not persistent between launches.

---

### ▶️ Crouch Action (Crouch key) – Contextual Shortcuts

| Key Combo                     | Function Description                                   |
|------------------------------|--------------------------------------------------------|
| `Crouch` + PgDn            | Swap current weather preset                           |
| `Crouch` + ←               | Toggle SR3 / SR1 camera scripts (side switch)         |
| `Crouch` + →               | Disable scripted camera (reset to default)            |
| `Crouch` + ↓               | Fallback: disable camera override                     |
| `Crouch` + ↑               | Deactivate superpower movement (forced off)           |

---

### ▶️ Use Action (T key) – Recovery & Quick Actions

| Key Combo                   | Function Description                                         |
|----------------------------|--------------------------------------------------------------|
| `T` (during ragdoll)      | Emergency Superpower Activation when ragdolled, press again to deactivate superpowers |
| `T` + Delete             | Toggle holstered weapon (force hide/show)                    |
| `T` + End                | Toggle cleanup routine (max corpses: 0 ↔ 3)                   |
| `T` + ←                  | Revive nearest downed follower (up to 3 followers checked)    |
| `T` + ↓                  | Toggle forced camera side (used with E + ←)                 |

---

### ▶️ Reload Action (R key) – UI, Follower Recall & Animation Swap

| Key Combo                   | Function Description                                     |
|----------------------------|----------------------------------------------------------|
| `R` + Insert             | Recall follower 1                                        |
| `R` + Home               | Recall follower 2                                        |
| `R` + Page Up            | Recall follower 3                                        |
| `R` + Delete             | Recall all followers                                     |
| `R` + [                  | Force Female animation set (PLYF)                      |
| `R` + ]                  | Force Male animation set (PLYM)                        |

---

## 🛠️ Hotfixes & Improvements

This mod also includes a number of subtle but useful hotfixes or tweaks to improve the base game experience.  
These are not always documented in the game files and are provided here as a non-exhaustive list.

### 👗 Clothing & Animation Fixes

- ✅ **Safari Heels**: adjusted foot offset to ensure proper contact with the ground  
- ✅ **Barista Outfit**: fixed height alignment so heels no longer clip through surfaces  

---

### ✴️ VFX & Weapon Visuals

- ✅ **Weapon tracers**: updated some weapons to use blue tracers, including:  
  - Standard bullet-firing rifles  
  - SMG-Storm  
  - Blaster pistol  
  - Sniper rifle  

---

### 🔫 Weapons & Combat Tuning

A broad range of weapon tweaks have been applied to enhance gameplay flow and overall combat feel:

- ✅ **Global damage increase** across many weapons (rebalanced for faster takedowns)  
- ✅ **Life steal effects** introduced or enhanced on select weapons  
- ✅ **Sniper rifles**:
  - Scope mechanics removed
  - Base accuracy improved
- ✅ **Burst-fire rifles** (e.g., Rifle-NG):
  - Converted to full-auto mode for smoother combat  
- ✅ **Ultimate abilities** for certain weapons have been modified to scale better in late-game scenarios 

---

### 🥋 Animation & Finisher Tweaks

- ✅ **Super nutshot** finishers replaced by 3 melee takedowns from *Saints Row: The Third*  
  → More grounded and aggressive close-combat sequences.

- ✅ **Sprint finishers** reworked:
  - **Front sprint**: replaced with *Diving Clothesline*
  - **Back sprint**: replaced with *Rolling Neck Breaker* and *Van Damm Finisher*

- ✅ **Combo melee sequence updated**:
  - Original **front kick** replaced by a **side kick**
  - New combo includes: *Superman Punch*, *Heavy Punch*, and **2x Side Kicks**

- ✅ **Rifle pose fix (female character)**:  
  - Light rifles now use **sniper-style aiming** for better stance and accuracy

- ✅ **Avoidance animations unlocked via skeleton edits** (used by the **DTS** system):  
  - plym.xtbl (used as base for plyf.xtbl) now includes additional animation nodes from cop.xtbl  
  - Matching nodes have been copied from weapon branches when needed to ensure compatibility

---

### 🧠 NPC & Ally Behavior

- ✅ **Morningstar gang**: reassigned to *Saints Soldier* faction (appear as allies)  
- ✅ **Ally loadouts**:
  - Pistol loadouts removed for most allies  
  - Allies now more frequently carry assault-type weapons:
    - Rifle-NG, Rifle-Gang, and SMG-Gang  
- ✅ **Outfit changes** for key characters:
  - Kinzie, Pierce, and Asha now wear their **presidential outfits** for super homies. Matt wears his SR3 model for his super homie version. 
  - Saints **Tanya** model replaced with **Viola**
- ✅ **Clone Army spawns only Morningstars**:  
  - Now equipped with firearms (instead of unarmed/melee loadouts like in vanilla)

---

### 🚨 Notoriety System Overhaul

Starting from **Act 3 (Final Act)**, the alien faction has been **fully replaced** in the notoriety system by classic human enemies from *Saints Row: The Third*:

- ✅ **Enemy waves** now include factions such as:
  - **Police** (with SWAT units, riot shields, and tactical gear)
  - **Morningstar**
  - **Steelport National Guard** (heavy military ordnance)
  - **STAG** (equipped with energy weapons and shields)
  - **Deckers**

- ✅ **Vehicles** used by each faction match their identity and era, including faction-themed cars, APCs, and aircraft when appropriate.

- ✅ **Wave spawns**:
  - Each notoriety level triggers **portal spawns** that start with *Saints reinforcements* before enemies arrive.
  - Factions are not allied: **expect crossfire** between gangs, law enforcement, and STAG.

- ✅ **Wave composition per notoriety level**:

| Notoriety Level | Enemy Factions                                  |
|------------------|--------------------------------------------------|
| Level 2          | Police, National Guard                          |
| Level 3          | Morningstar, Police                             |
| Level 4          | Deckers, STAG                                   |
| Level 5          | Police, Military, Morningstar, Deckers, STAG   |

This rework transforms the final arc of the game into a *Steelport flashback scenario*, delivering a more grounded and chaotic late-game combat loop.

## ✅ Requirements

- Steam version of *Saints Row IV: Re-Elected*
- No other mods affecting the same files (to avoid conflicts)

---

## 🛠️ Development

This repository is Git-tracked. You can:
- View all changes across commits
- Compare versions and follow updates
- Fork the project and build on it

---

## 📃 License

Unofficial project. Non-commercial, for creative purposes only.  
All original game assets and trademarks belong to their respective owners.

---

## 📫 Contact

Mod created by **Curvenist**, based on IdolNinja's Sandbox+,
→ [YouTube Channel](https://www.youtube.com/@Curvenist) 