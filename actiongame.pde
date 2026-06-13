float x,y;
float dx =  0;
float dy = 0;
float ddy = 0;

PImage img;

boolean[] keys = new boolean[256]; // keyCodeを記録

void setup() {
    size(1200,700);
    background(255);
    x = 100;
    y = height - 20;
    
    img = loadImage("img/mainchara.png");
}

void draw() {
    background(255);
    x += dx;
    y += dy;
    dy += ddy;
    image(img,x,y,110,110);
    
    if (y >=  height - 130) {
        y = height - 130;
        ddy = 0;
    }
    
    // if (keys[32]) {
    //     y = height - 130;
    //     dy =-  10;
    //     ddy = 0.3;
    //     delay(30);
// } 
    
    if (x > width) {
        x =-  100;
    }
    
    if (keys[39]) {
        dx = 10;
    } else{
        dx =  dx * 0.99;
    }
    
}

// void keyPressed() {
//     println(keyCode);
//     if (keyCode ==  32) {
//         y = height - 130;
//         dy =-10;
//         ddy =0.3;
//     }
//     if (keyCode ==  39) {
//         x += dx;
//     }
// }

// キーが押された
void keyPressed() {
    println(keyCode);
    if (keyCode ==  32) {
        if (y ==  height - 130) {
            y = height - 130;
            dy =-  10;
            ddy = 0.3;
        }
    } 
    if (keyCode < keys.length) {
        keys[keyCode] = true;
    }
}

// キーが離された
void keyReleased() {
    if (keyCode < keys.length) {
        keys[keyCode] = false;
    }
}