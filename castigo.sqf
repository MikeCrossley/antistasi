
private ["_cuenta","_tonto","_tiempo","_punish"];
if (isDedicated) exitWith {};

if (!isMultiplayer) exitWith {};

_tonto = _this select 0;
_tiempo = _this select 1;

if (player!= _tonto) exitWith {};

_punish = _tonto getVariable ["punish",0];
_punish = _punish + _tiempo;

player removeMagazines (primaryWeapon player);
removeAllItemsWithMagazines player;
player removeMagazines (secondaryWeapon player);
player removeWeaponGlobal (primaryWeapon player);
player removeWeaponGlobal (secondaryWeapon player);

hint "Weapons removed for teamkilling";
sleep 5;
_cuenta = _punish;
sleep 1;
_cuenta = 0;

player setVariable ["punish",_punish,true];
