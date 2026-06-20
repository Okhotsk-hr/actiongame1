float x,y;
float dx =  0;
float dy = 0;
float ddy = 0;

int num_block = 2;
int block_w = 10;
int block_h = 10;
int[] block_x = new int[num_block];
int[] block_y = new int[num_block];
int block_size = 50;//ブロックの大きさ

//画像定義
PImage chara_img;
PImage block_img;

boolean[] keys = new boolean[256]; // keyCodeを記録

void setup() {
    // size(1200,700);
    size(1100,700);
    background(255);
    x = 100;
    y = height - 20;
    
    //画像取得
    chara_img = loadImage("img/mainchara.png");
    block_img = loadImage("img/block.png");
    
    for (int i = 0;i < num_block;i++) {
        block_x[i] = block_size * int(random(100 / block_size,width / block_size - 1));
        block_y[i] = block_size * int(random(100 / block_size,height / block_size - 1));
    }
}

void draw() {
    background(255);
    x += dx;
    y += dy;
    dy += ddy;
    image(chara_img,x,y,100,100);//操作キャラ表示
    
    if (y >=  height - 130) {
        y = height - 130;
        ddy = 0;
    }
    
    //ブロック表示
    for (int i = 0;i < num_block;i++) {
        image(block_img,block_x[i],block_y[i],block_size,block_size);
    }
    
    // if (keys[32]) {
    //  y = height - 130;
    //  dy =-  10;
    //  ddy = 0.3;
    //  delay(30);
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
//         dy =-  10;
//         ddy = 0.3;
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