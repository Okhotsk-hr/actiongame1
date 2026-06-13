float x,y;
float dx =-  10;
float dy = 0;
float ddy = 0;

PImage img;

void setup() {
    size(1200,700);
    background(255);
    x = width / 2;
    y = height - 20;
    
    img = loadImage("img/mainchara.png");
}

void draw() {
    background(255);
    
    y += dy;
    dy += ddy;
    circle(x,y,40);
    image(img,x,y,110,110);
    
    if (y >=  height - 130) {
        y = height - 130;
        ddy = 0;
    }
}

void keyPressed() {
    if (keyCode ==  32) {
        x = width / 2;
        y = height - 130;
        dy =-  10;
        ddy = 0.3;
    } 
}