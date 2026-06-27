void course01() {//ブロックの位置だけ配列
    int[] block_x = {500,550,600,650,700,750,800};
    int[] block_y = {550,550,550,550,550,550,550};
    int num_block = block_x.length;
    
    //ブロック表示
    for (int i = 0;i < num_block;i++) {
        image(block_img,block_x[i],block_y[i],block_size,block_size);
    }
}

void course02() {//マス目配列の方式
    for (int i = 0;i < x_num;i++) {
        block_map[i][9] = 1;
    }
    
    
    for (int x = 0;x < x_num;x++) {
        for (int y = 0;y < y_num;y++) {
            if (block_map[x][y] ==  1) {
                image(block_img,block_size * x,block_size * y,block_size,block_size);
            }
        }
    }
}