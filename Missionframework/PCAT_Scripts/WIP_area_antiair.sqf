/* opfor_mobile_anti_air.sqf
 *
 * Desc: 
 *
 * Note: _blu_point = [getPos _point] call KPLIB_fnc_getNearestBluforObjective; // 取得距離 _point 最近的藍方據點座標為 _blu_point
 *       _blu_point distance (getPos _point);  // 計算 _blu_point 到 _point 之間的距離.
 *
 * Usage Example : 
 *
 * TODO : 預計以 R-750 + S-750 為基底, 然後將以 template 的方式生成,
 *        template 以一個空白物件為中心, 要生成的載具以 vector offset 的方式生成.
 *        這樣即使改為 CAAM 也可以正常運作.
 *        載具初始化的時候要 disableAI "PATH", 避免又移動我軍基地附近
 */
if (!isServer) exitWith {};// NOTE: 如果不是伺服器端則退出.
