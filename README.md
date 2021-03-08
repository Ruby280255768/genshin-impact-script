# genshin-impact-script

Sweet! What a cute Genshin Impact script!

## Introduction

A script based on `ahk` that provides a few small features for Genshin Impact players.

**Does not contain any cheats**.

[中文](./readme-cn.md)

## Features

### Better running/jumping

Use better running when long pressing `right click`. Automatically open wind glider when jumping.

### Easy skill timer

Provides countdown timer for E skills.

### Use E skill when character debuts

When you press or hold `Numeric Key` to switch characters, the character will automatically use E skill when he/she appears on the stage.

### Better elemental vision

When you press `Middle Button`, you will enter the automatically maintained elemental vision; press Middle Button again to exit.

### Fast item pickup

Quickly pick up items when the `f` key is pressed.

### Auto-adjust game process priority

Set the process priority to the lowest when the game window is inactive.

## Usage

First, go to [ahk official website](https://www.autohotkey.com/) and install `ahk` (1.33+, do not use v2 version).

Then, download the [zip file](https://github.com/phonowell/genshin-impact-script/releases/download/0.0.2/Genshin_Impact_Script_0.0.2.zip) and unzip it.

Finally, after opening the game, go to the unzipped folder and double-click `index.ahk` in it (you will be prompted whether to apply administrator privileges, select Apply).

### Easy Skill Timer

Before use this feature, you need to identify the characters in your team. Press `f12` to identify the character with their avatar visible on the right.

When you change the team lineup, you need to re-identify them.

Currently only the following characters are supported:

- Amber
- Barbara
- Beidou
- Bennett
- Chongyun
- Diona
- Fischl
- Ganyu
- Hu Tao
- Jean
- Kaeya
- Klee
- Keqing
- Lisa
- Mona
- Ningguang
- Noelle
- Qiqi
- Razor
- Sucrose
- Tartaglia
- Venti
- Xiangling
- Xiao
- Xingqiu
- Xinyan
- Zhongli

Future characters to be added for support:

- Aether
- Albedo
- Ayaka
- Diluc
- Lumine
- Rosaria

## Configuration

Refer to the [function configuration](./source/config.ini) for details.

When finished editing, press `ctrl + f5` to take effect instantly.

### Characters

Add the chanacter name at the bottom of the file to enable character-specific configuration.

For Example:

```ini
[zhongli]
type-apr = 3
```

#### type-apr

The type of appearance. Can be one of the following values.

- `0` Does nothing, i.e. the game's default behavior
- `1` Default value of script; Uses the corresponding E skill depending on the length of time the number key is pressed
- `2` Uses E skill (tap)
- `3` Uses E skill (hold)
- `4` Uses Q skill

## Note

All actions are bound to default keys.

## Disclaimers

You knew that.