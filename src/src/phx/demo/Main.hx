package phx.demo;
import nme.Lib;

class Main 
{
	
	public static var inst : MainStart;
	
	static function main() 
	{
		
		#if flash
		//flash.Lib.current.stage.scaleMode = flash.display.StageScaleMode.NO_SCALE;
		//var root = flash.Lib.current;
		#elseif js
		//var root = js.Lib.document.getElementById ("draw");
		//inst = new Main();
		#elseif neko
		//neash.Lib.Init("Physaxe",800,600,false,true);
		//neash.Lib.SetBackgroundColour(0xffffff);
		//inst = new Main();
		#elseif cpp
		nme.Lib.create (function () { trace ("Hello!");  inst = new MainStart (); }, 320, 480, 60, 0xccccff, nme.Lib.HARDWARE | nme.Lib.RESIZABLE | nme.Lib.FULLSCREEN);
		//nme.Lib.Init("Physaxe",800,600,false,true);
		//nme.Lib.SetBackgroundColour(0xffffff);
		
		#end
		
		
		
		#if neko
		//neash.Lib.SetFrameRate(100);
		//neash.Lib.ShowFPS(true);
		//neash.Lib.Run();
		#end
		
	}
}