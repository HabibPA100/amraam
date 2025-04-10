package;

import flixel.FlxG;
import flixel.FlxSprite;

class PlaneSprite extends FlxSprite {
    public function new(x:Float, y:Float) {
        super(x, y);

        // প্লেন ইমেজ লোড
        super.loadGraphic("assets/images/plane.png");
        origin.set(width / 2, height / 2);
        scale.set(0.2, 0.2);
        updateHitbox();
        this.x = (FlxG.width/2) - (width/2);
        this.y = (FlxG.height/2) - (height/2);
    }

    override public function update(elapsed:Float):Void {
        super.update(elapsed);

        if (FlxG.keys.pressed.LEFT) {
            if(angle > -45) 
                angle -= 1;
        } else if( angle < 0){
            angle += 1;
            if(angle > 0)
                angle = 0;
        }
        if(FlxG.keys.justPressed.LEFT){
            this.x -= 10;
        }

       if (FlxG.keys.pressed.RIGHT) {
            if(angle < 45)
                angle += 1;
        } else if (angle > 0){
            angle -= 1;
            if(angle < 0)
                angle = 0;
        }
        if(FlxG.keys.justPressed.RIGHT){
            this.x += 10;
        }

        if(FlxG.keys.pressed.UP){
            velocity.y = -100;
        } else if(FlxG.keys.pressed.DOWN){
            velocity.y = 100;
        } else{
            velocity.y = 0;
        }

        if(FlxG.keys.justPressed.SPACE){
            this.x = (FlxG.width/2) - width/2;
            this.y = (FlxG.height/2) - height/2;
        }
    }
}
