
@addMethod(CR4OverlayPopup)
public function ShowDBLogo( show : bool, fadeInterval : float, x : int, y : int ) {
		var path : string;

		if (show) {
			path = "img://logos/darkbeauclair/db_en_logo.png";
		}

		this.m_fxShowEP2Logo.InvokeSelfFiveArgs( FlashArgBool( show ), FlashArgNumber( fadeInterval ), FlashArgInt( x ), FlashArgInt( y ), FlashArgString( path ) );
}

function DB_showLogo(show: bool, fadeInterval: float, x: int, y: int) {
  var overlayPopupRef : CR4OverlayPopup;
	overlayPopupRef = (CR4OverlayPopup) theGame.GetGuiManager().GetPopup('OverlayPopup');

  if (overlayPopupRef) {
	overlayPopupRef.ShowDBLogo(show, fadeInterval, x, y);
  }
}

quest function DB_ShowDBLogo( show : bool, fadeInterval : float, x : int, y : int ) {
	DB_showLogo(show, fadeInterval, x, y);
}

exec function db_debugLogo(){
	DB_showLogo(true, 2, 700, 400);
}
