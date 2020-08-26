import 'dart:html';

class Keyboard {
  final pressedKeys = {};

  Keyboard() {
    window.addEventListener('keyup', keyUpListener);
    window.addEventListener('keydown', keyDownListener);
  }

  void keyUpListener(event) {
    pressedKeys[event.code] = false;
  }

    void keyDownListener(event) {
    pressedKeys[event.code] = true;
  }

  bool keyIsPressed(key) {
    return pressedKeys[key] ?? false; // hack
  }
}

final keyboard = Keyboard();