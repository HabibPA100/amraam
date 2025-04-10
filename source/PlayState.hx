package;

import PlaneSprite;
import flixel.FlxState;

class PlayState extends FlxState {
    var plane:PlaneSprite;

    override public function create():Void {
        super.create();

        plane = new PlaneSprite(100, 100);
        add(plane);
    }
}
