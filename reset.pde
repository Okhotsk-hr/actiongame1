void map_reset() {
    //ブロック配置をリセット
    for (int i = 0;i < x_num;i++) {
        for (int j = 0;j < y_num;j++) {
            block_map[i][j] = 0;
        }
    }
}