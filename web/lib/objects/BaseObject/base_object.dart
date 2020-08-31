import '../../utils/canvas.dart' show canvas;

class BaseObject {

  int x, y, width, height;
  String color;

  BaseObject(this.x, this.y, this.width, this.height, this.color);

  Map get sizeData => { x: x, y: y, width: width, height: height };

  int get xl => x + width;
  int get yl => y + height;

  double get centerX => x + width / 2;
  double get centerY => y + height / 2;

  void draw() {
    canvas.context.beginPath();
    canvas.context.fillStyle = color;
    canvas.context.fillRect(x, y, width, height);
    canvas.context.closePath();
  }

}
