/*
    File: lotery.hpp
    Author: Novax
   	github : https://github.com/Novax69 <== Find my other scripts for arma here
    Date : 1/05/2020

    Description:
    GUI Menu
*/

class Life_lotery_management {
    idd = 690200;
    name= "life_lotery_menu";
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground {
        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = 690201;
			text = "Lotery"; 
			x = 0.303125 * safezoneW + safezoneX;
			y = 0.2872 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.028 * safezoneH;

        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.303125 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.374063 * safezoneW;
			h = 0.336 * safezoneH;
        };

		class resultTitle: Life_RscText
		{
			idc = 690202;
			text = "Résultats"; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};

		};
		class yourNumTitle: Life_RscText
		{
			idc = 690203;
			text = "Vos Numéros :"; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};

		};
		class infoTitle: Life_RscText
		{
			idc = 690204;
			text = "Infos :"; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.5308 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.028 * safezoneH;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
    };

    class controls {
		class nb1: Life_RscStructuredText
		{
			idc = 690205;
			text = "1"; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class nb2: Life_RscStructuredText
		{
			idc = 690206;
			text = "2"; //--- ToDo: Localize;
			x = 0.36875 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class nb3: Life_RscStructuredText
		{
			idc = 690207;
			text = "3"; //--- ToDo: Localize;
			x = 0.42125 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class nb4: Life_RscStructuredText
		{
			idc = 690208;
			text = "4"; //--- ToDo: Localize;
			x = 0.47375 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class nb5: Life_RscStructuredText
		{
			idc = 690209;
			text = "5"; //--- ToDo: Localize;
			x = 0.52625 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class nb6: Life_RscStructuredText
		{
			idc = 690210;
			text = "6"; //--- ToDo: Localize;
			x = 0.57875 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class nb7: Life_RscStructuredText
		{
			idc = 690211;
			text = "7"; //--- ToDo: Localize;
			x = 0.63125 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class yrNb1: Life_RscEdit
		{
			idc = 690212;
			text = "1"; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};

		class yrNb2: Life_RscEdit
		{
			idc = 690213;
			text = "2"; //--- ToDo: Localize;
			x = 0.36875 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class yrNb3: Life_RscEdit
		{
			idc = 690214;
			text = "3"; //--- ToDo: Localize;
			x = 0.42125 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class yrNb4: Life_RscEdit
		{
			idc = 690215;
			text = "4"; //--- ToDo: Localize;
			x = 0.47375 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class yrNb5: Life_RscEdit
		{
			idc = 690216;
			text = "5"; //--- ToDo: Localize;
			x = 0.52625 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class yrNb6: Life_RscEdit
		{
			idc = 690217;
			text = "6"; //--- ToDo: Localize;
			x = 0.57875 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class yrNb7: Life_RscEdit
		{
			idc = 690218;
			text = "7"; //--- ToDo: Localize;
			x = 0.63125 * safezoneW + safezoneX;
			y = 0.374 * safezoneH + safezoneY;
			w = 0.0328125 * safezoneW;
			h = 0.042 * safezoneH;
		};
	
		class infoText: Life_RscStructuredText
		{
			idc = 690219;
			text = ""; //--- ToDo: Localize;
			x = 0.31625 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.170625 * safezoneW;
			h = 0.07 * safezoneH;
		};
		class btnPay: Life_RscButtonMenu
		{
			idc = 690220;
			text = "Payer le ticket !"; //--- ToDo: Localize;
            onButtonClick = "closeDialog 0;";
			x = 0.499999 * safezoneW + safezoneX;
			y = 0.612 * safezoneH + safezoneY;
			w = 0.164062 * safezoneW;
			h = 0.028 * safezoneH;
		};

        class CloseButtonKey: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
			x = 0.303125 * safezoneW + safezoneX;
			y = 0.6568 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
        };


    };
};