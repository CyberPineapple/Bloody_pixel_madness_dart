import '../BaseObject/base_object.dart' show BaseObject;
import '../../utils/keyboard.dart' show keyboard;

class Player extends BaseObject {

  int speed = 5;

  Player(x,y) :super(x, y, 20, 20, 'orange');


  void runRight() => x += speed;
  void runLeft() => x -= speed;
  void runUp() => y -= speed;
  void runDown() => y += speed;

  void tick() {
    if (keyboard.keyIsPressed('KeyD')) runRight();
    if (keyboard.keyIsPressed('KeyA')) runLeft();
    if (keyboard.keyIsPressed('KeyW')) runUp();
    if (keyboard.keyIsPressed('KeyS')) runDown();

    draw();
  }

}
