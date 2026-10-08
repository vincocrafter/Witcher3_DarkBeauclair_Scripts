class DB_isInNightmareWorld extends CQuestScriptedCondition {
	
	function Evaluate() : bool {
		return theGame.GetWorld().GetDepotPath() == "dlc\dark_beauclair\data\levels\dark_beauclair\dark_beauclair.w2w";
	}
}