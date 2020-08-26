import 'dart:html';
import './src/utils/canvas.dart' show canvas;
import './src/objects/Player/player.dart' show Player;

CanvasRenderingContext2D ctx;

final base = Player(10, 10);

void loop(num id) {
  canvas.draw();
  base.tick();
  window.requestAnimationFrame(loop);
}

void main() {
  window.requestAnimationFrame(loop);
}
