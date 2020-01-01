import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawROC(ctx);
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawUSA(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.font = "30px Arial";
  ctx.strokeStyle = 'rgb(255, 0, 0)';
  ctx.strokeText( flag_w/6, flag_w/4);
}

void drawROC(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(238, 36, 54)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w * 2 / 3 , flag_h );
  ctx.fillStyle = 'rgb(0, 30, 150)';
  ctx.fillRect(0, 0, flag_w * 1 / 3, flag_h );
  
 
  ctx.closePath();
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();

  ctx.fillStyle = '#fff';
  ctx.fill();
}

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
