class PCAT_Parachuting_Dialog {
	idd = 3000;
	movingEnable = true;
	onLoad   = "";
	onUnload = "";
	class controlsBackground {
		class Background: PCAT_RscText
		{
			idc = -1;
			moving = 1;
			x = 0.410 * safezoneW + safezoneX;
			y = 0.410 * safezoneH + safezoneY;
			w = 0.200 * safezoneW;
			h = 0.180 * safezoneH;
			colorBackground[] = {0.35,0.42,0.35,0.8};
		};
	}	class controls {
		class Text: PCAT_RscText
		{
			moving = 1;

			idc = -1;
			text = "跳傘高度(公尺)：";
			x = 0.435 * safezoneW + safezoneX;
			y = 0.440 * safezoneH + safezoneY;
			w = 0.070 * safezoneW;
			h = 0.030 * safezoneH;
		};
		class Slider_Value: PCAT_RscEdit
		{
			idc = 3100;
			canModify = 1;
			text = "500";
			x = 0.510 * safezoneW + safezoneX;
			y = 0.440 * safezoneH + safezoneY;
			w = 0.035 * safezoneW;
			h = 0.030 * safezoneH;
		};
		class Set_Altitute: PCAT_RscButton
		{
			idc = -1;
			moving = 1;
			onButtonClick = "sliderSetPosition [3200,parseNumber(ctrlText 3100)];";

			text = "設定"; //--- ToDo: Localize;
			x = 0.550 * safezoneW + safezoneX;
			y = 0.440 * safezoneH + safezoneY;
			w = 0.030 * safezoneW;
			h = 0.030 * safezoneH;
			colorBackground[] = {0.4,0.55,0.36,0.7};
		};
		class Slider: PCAT_RscXSliderH
		{
			idc = 3200;
			moving = 1;
			sliderRange[] = {500,5000};
			sliderStep = 100;
			sliderPosition = default_altitute;

			x = 0.435 * safezoneW + safezoneX;
			y = 0.480 * safezoneH + safezoneY;
			w = 0.150 * safezoneW;
			h = 0.030 * safezoneH;
			onSliderPosChanged = "ctrlSetText [3100, str(sliderPosition 3200)];";

		};
		class OK: PCAT_RscButton
		{
			idc = -1;
			moving = 1;
			onButtonClick = "closeDialog 1;";

			text = "確定";
			x = 0.445 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.040 * safezoneH;
			colorBackground[] = {0.4,0.55,0.36,0.7};
		};
		class Cancel: PCAT_RscButton
		{
			idc = -1;
			moving = 1;
			onButtonClick = "closeDialog 2;";

			text = "取消";
			x = 0.525 * safezoneW + safezoneX;
			y = 0.530 * safezoneH + safezoneY;
			w = 0.050 * safezoneW;
			h = 0.040 * safezoneH;
			colorBackground[] = {0.4,0.55,0.36,0.7};
		};
	};
};