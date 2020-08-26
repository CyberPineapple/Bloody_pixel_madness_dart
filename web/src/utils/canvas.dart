import 'dart:html';

class Canvas {

  CanvasElement element;
  CanvasRenderingContext2D context;
  

  Canvas() {
    element = querySelector('canvas');
    element.width = 640;
    element.height = 480;
    element.style.backgroundColor = 'black';
    context = element.getContext('2d');
  }


  void draw() {
    context.fillStyle = 'red';
    context.fillRect(0, 0, element.width, element.height);
  }

  void clear() {
    context.clearRect(0, 0, element.width, element.height);
  }

}

final canvas = Canvas();
