import 'dart:html';
import './canvas.dart' show canvas;
import '../store/store.dart' show store;

class GameObject {

  void start() {
    window.requestAnimationFrame(loop);
  }

  void loop([num id]) {
    canvas.clear();
    store.currentPlayer.tick();
    window.requestAnimationFrame(loop);
  }
}

GameObject Game = GameObject();

