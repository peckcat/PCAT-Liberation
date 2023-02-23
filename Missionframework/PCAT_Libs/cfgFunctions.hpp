class PCAT
{
	class commons
	{
		file = "PCAT_Libs\commons";
		requiredAddons[]         = {"cba_ai","cba_common"};
		class hint                 {};
		class getPrefixVariables   {};
		class getPrefixMarkers     {};
		class infReinforcement     {};
		class removeAllEquips      {};
		class cleanUp			   {};
		class parachuting          {};
	};
	class ui{
		file = "PCAT_Libs\ui";
		requiredAddons[]         = {"cba_ai","cba_common"};
		class parachutingDialog    {};
	};
};
