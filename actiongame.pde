float x,y;
float dx =-  10;
float dy =-  10;
float ddy = 0.3;

void setup() {
    size(1200,700);
    background(255);
    x = width / 2;
    y = height - 20;
}

void draw() {
    background(255);
    
    y += dy;
    dy += ddy;
    circle(x,y,40);
    
    if (y >=  height - 20) {
        y = height - 20;
        ddy = 0;
    }
}

void keyPressed() {
    if (keyCode ==  32) {
        x = width / 2;
        y = height - 20;
        dy =-  10;
        ddy = 0.3;
    } 
}